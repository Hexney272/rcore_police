-- Department System for rcore_police
-- Manages department registration, grade-based access to items, vehicles, and outfits.
-- Uses caching for performance (vehicles, outfits, items are cached per job+grade combo).

-----------------------------------------------------------
-- Caches
-----------------------------------------------------------

local vehicleCache = {}  -- Cache for GetAvailableVehiclesForGrade
local outfitCache = {}   -- Cache for GetAvailableOutfitsForGrade
-- Item cache uses vehicleCache (same L0_1 reference in original)

-----------------------------------------------------------
-- Department Initialization (waits for framework)
-----------------------------------------------------------

CreateThread(function()
    Wait(0)

    local success, departments = Framework.CachePoliceGroups()
    if not success then
        return
    end

    RegisterDepartments(departments)
end)

-----------------------------------------------------------
-- Server-only: Item Access Checking
-----------------------------------------------------------

if IsDuplicityVersion() then
    --- Check if a player with given job/grade can access a specific item
    --- @param jobName string The player's job name
    --- @param grade number The player's job grade
    --- @param itemName string The item name to check access for
    --- @param isBoss boolean|nil Whether the player is a boss
    --- @return boolean Whether the player can access this item
    function CanAccessItem(jobName, grade, itemName, isBoss)
        local items, hasAccess = GetAvailableItemsForGrade(jobName, grade, isBoss)

        if not hasAccess then
            return false
        end

        local searchName = itemName:lower()

        for i = 1, #items do
            local name = items[i].name:lower()
            if name == searchName then
                return true
            end
        end

        return false
    end

    --- Get storage data for a specific item from the department store
    --- @param jobName string The player's job name
    --- @param grade number The player's job grade
    --- @param itemName string The item name to look up
    --- @param isBoss boolean|nil Whether the player is a boss
    --- @return table|nil The item storage data or nil
    function GetItemStorageData(jobName, grade, itemName, isBoss)
        local items, hasAccess = GetAvailableItemsForGrade(jobName, grade, isBoss)

        if not hasAccess then
            return nil
        end

        local searchName = itemName:lower()

        for i = 1, #items do
            local name = items[i].name:lower()
            if name == searchName then
                return items[i]
            end
        end

        return nil
    end
end

-----------------------------------------------------------
-- Department Registration
-----------------------------------------------------------

--- Register departments into Config.JobGroups, applying default templates where needed
--- @param departments table Map of job names from the framework
function RegisterDepartments(departments)
    if not departments or not next(departments) then
        return
    end

    for jobName, _ in pairs(departments) do
        -- Ensure the job group entry exists
        if not Config.JobGroups[jobName] then
            Config.JobGroups[jobName] = {}
        end

        local jobGroup = Config.JobGroups[jobName]

        -- Apply default store if none defined
        if not jobGroup.Store then
            jobGroup.Store = Config.ItemShop.DefaultDepartmentTemplate
            dbg.debug("Department: Registering store for %s from Config.ItemShop.DefaultDepartmentTemplate", jobName)
        end

        -- Apply default vehicles if none defined
        if not jobGroup.VehiclesToGrade then
            jobGroup.VehiclesToGrade = Config.Garage.DefaultDepartmentTemplate
            dbg.debug("Department: Registering vehicles for %s from Config.ItemShop.DefaultDepartmentTemplate", jobName)
        end

        -- Apply default outfits if none defined
        if not jobGroup.Outfits then
            jobGroup.Outfits = Config.Outfits.DefaultDepartmentTemplate
        end
    end
end

-----------------------------------------------------------
-- Grade-Based Access: Outfits
-----------------------------------------------------------

--- Get available outfits for a player's job and grade
--- @param jobName string The job name
--- @param grade number The player's grade level
--- @param isBoss boolean|nil Whether to show all outfits (boss override)
--- @return table outfits Array of available outfit entries
--- @return boolean hasAccess Whether access was granted
--- @return string status Status code (CACHED, HAS_ACCESS, NO_DEPARTMENT_OUTFIT_DATA)
function GetAvailableOutfitsForGrade(jobName, grade, isBoss)
    local cacheKey = string.format("outfits-%s-%d-%s", jobName, grade, isBoss)

    -- Return cached result
    if outfitCache[cacheKey] then
        return outfitCache[cacheKey].outfit, true, "CACHED"
    end

    -- Get outfit config for this department
    local outfitConfig = Config.JobGroups[jobName]
    if outfitConfig then
        outfitConfig = outfitConfig.Outfits
    end

    if not outfitConfig then
        return {}, false, "NO_DEPARTMENT_OUTFIT_DATA"
    end

    local result = {}
    local storage = outfitConfig.storage
    local accessedKeys = {}

    -- Determine starting grade (ShownOwnGradeOutfitsOnly mode)
    local startGrade = Config.Outfits.ShownOwnGradeOutfitsOnly
    startGrade = grade or startGrade
    if not startGrade or not grade then
        startGrade = 0
    end

    -- Iterate from startGrade up to player's grade
    for g = startGrade, grade do
        local gradeAccess = outfitConfig.access[g]

        if gradeAccess then
            -- Wildcard "*" or boss gives access to ALL outfits
            if gradeAccess[1] == "*" or isBoss then
                local sortedKeys = {}
                for key in pairs(storage) do
                    table.insert(sortedKeys, key)
                end
                table.sort(sortedKeys)

                for _, key in ipairs(sortedKeys) do
                    table.insert(result, storage[key])
                end

                outfitCache[cacheKey] = { outfit = result }
                return result, true, "HAS_ACCESS"
            end

            -- Collect specific allowed outfit keys
            for _, outfitKey in ipairs(gradeAccess) do
                accessedKeys[outfitKey] = true
            end
        end
    end

    -- Build result from collected keys (sorted)
    local sortedAccessed = {}
    for key in pairs(accessedKeys) do
        table.insert(sortedAccessed, key)
    end
    table.sort(sortedAccessed)

    for i = 1, #sortedAccessed do
        local outfitData = storage[sortedAccessed[i]]
        if outfitData then
            table.insert(result, outfitData)
        end
    end

    outfitCache[cacheKey] = { outfit = result }
    return result, true, "HAS_ACCESS"
end

-----------------------------------------------------------
-- Grade-Based Access: Vehicles
-----------------------------------------------------------

--- Get available vehicles for a player's job and grade
--- @param jobName string The job name
--- @param grade number The player's grade level
--- @param isBoss boolean|nil Whether to show all vehicles (boss override)
--- @param zoneType string|nil The zone type (GARAGE_AIR filters to air vehicles only)
--- @return table vehicles Array of available vehicle entries
--- @return boolean hasAccess Whether access was granted
--- @return string status Status code
function GetAvailableVehiclesForGrade(jobName, grade, isBoss, zoneType)
    local isAirGarage = (zoneType == ZONE_TYPE.GARAGE_AIR)
    local cacheKey = string.format("vehicles-%s-%d-%s", jobName, grade, isAirGarage)

    -- Return cached result
    if vehicleCache[cacheKey] then
        return vehicleCache[cacheKey].vehicles, true, "CACHED"
    end

    -- Get vehicle config for this department
    local vehicleConfig = Config.JobGroups[jobName]
    if vehicleConfig then
        vehicleConfig = vehicleConfig.VehiclesToGrade
    end

    if not vehicleConfig then
        return {}, false, "NO_DEPARTMENT_VEHICLE_DATA"
    end

    local result = {}
    local storage = vehicleConfig.storage
    local accessedKeys = {}

    -- Iterate from grade 0 up to player's grade
    for g = 0, grade do
        local gradeAccess = vehicleConfig.access[g]

        if gradeAccess then
            -- Wildcard "*" or boss gives access to ALL vehicles
            if gradeAccess[1] == "*" or isBoss then
                local sortedKeys = {}
                for key in pairs(storage) do
                    table.insert(sortedKeys, key)
                end
                table.sort(sortedKeys)

                for _, key in ipairs(sortedKeys) do
                    local vehicle = storage[key]

                    -- Filter by air/ground
                    if isAirGarage then
                        if not vehicle.isAir then goto continue end
                    else
                        if vehicle.isAir then goto continue end
                    end

                    local price = vehicle.price or 0
                    if not Config.Garage.DepartmentsEnableBuyVehicles then
                        price = 0
                    end

                    table.insert(result, {
                        name = key,
                        label = vehicle.label,
                        model = vehicle.model,
                        price = price,
                        image = vehicle.image,
                    })

                    ::continue::
                end

                vehicleCache[cacheKey] = { vehicles = result }
                return result, true, "HAS_ACCESS"
            end

            -- Collect specific allowed vehicle keys
            for _, vehicleKey in ipairs(gradeAccess) do
                accessedKeys[vehicleKey] = true
            end
        end
    end

    -- Build result from collected keys (sorted)
    local sortedAccessed = {}
    for key in pairs(accessedKeys) do
        table.insert(sortedAccessed, key)
    end
    table.sort(sortedAccessed)

    for i = 1, #sortedAccessed do
        local key = sortedAccessed[i]
        local vehicle = storage[key]

        if vehicle then
            local price = vehicle.price or 0
            if not Config.Garage.DepartmentsEnableBuyVehicles then
                price = 0
            end

            -- Filter by air/ground
            if isAirGarage then
                if not vehicle.isAir then goto skip end
            else
                if vehicle.isAir then goto skip end
            end

            table.insert(result, {
                name = key,
                label = vehicle.label,
                model = vehicle.model,
                price = price,
                image = vehicle.image,
            })

            ::skip::
        end
    end

    vehicleCache[cacheKey] = { vehicles = result }
    return result, true, "HAS_ACCESS"
end

-----------------------------------------------------------
-- Grade-Based Access: Store Items
-----------------------------------------------------------

--- Get available items from the department store for a player's job and grade
--- @param jobName string The job name
--- @param grade number The player's grade level
--- @param isBoss boolean|nil Whether the player is a boss (gives full access / ORDER_BY_BOSS mode)
--- @return table items Array of available item entries {name, label, count, price}
--- @return boolean hasAccess Whether access was granted
--- @return string status Status code
function GetAvailableItemsForGrade(jobName, grade, isBoss)
    if not jobName then
        return dbg.debug("GetAvailableItemsForGrade: Failed to get job")
    end
    if not grade then
        return dbg.debug("GetAvailableItemsForGrade: Failed to get grade")
    end

    local cacheKey = string.format("%s-%d", jobName, grade)

    -- Return cached result
    if vehicleCache[cacheKey] then
        return vehicleCache[cacheKey].items, true, "CACHED"
    end

    -- Get store config for this department
    local storeConfig = Config.JobGroups[jobName]
    if storeConfig then
        storeConfig = storeConfig.Store
    end

    if not storeConfig then
        return {}, false, "NO_DEPARTMENT_DATA"
    end

    -- Check ORDER_BY_BOSS mode
    if storeConfig.mode == SHOP_STATE.ORDER_BY_BOSS then
        if not isBoss then
            dbg.debug("The department store can be opened by boss only! Since SHOP_STATE is set to SHOP_STATE.ORDER_BY_BOSS!")
            return {}, false, "SHOP_STATE_REQUIRED_BOSS"
        end
    end

    local result = {}
    local storage = storeConfig.storage
    local accessedKeys = {}

    -- Iterate from grade 0 up to player's grade
    for g = 0, grade do
        local gradeAccess = storeConfig.access[g]

        if gradeAccess then
            -- Wildcard "*" or boss gives access to ALL items
            if gradeAccess[1] == "*" or isBoss then
                local sortedKeys = {}
                for key in pairs(storage) do
                    table.insert(sortedKeys, key)
                end
                table.sort(sortedKeys)

                for i = 1, #sortedKeys do
                    local key = sortedKeys[i]
                    local item = storage[key]
                    table.insert(result, {
                        name = key,
                        label = item.label,
                        count = item.count,
                        price = item.price,
                    })
                end

                vehicleCache[cacheKey] = { items = result }
                return result, true, "HAS_ACCESS"
            end

            -- Collect specific allowed item keys
            for i = 1, #gradeAccess do
                accessedKeys[gradeAccess[i]] = true
            end
        end
    end

    -- Build result from collected keys (sorted)
    local sortedAccessed = {}
    for key in pairs(accessedKeys) do
        table.insert(sortedAccessed, key)
    end
    table.sort(sortedAccessed)

    for i = 1, #sortedAccessed do
        local key = sortedAccessed[i]
        local item = storage[key]

        if item then
            table.insert(result, {
                name = key,
                label = item.label,
                count = item.count,
                price = item.price,
            })
        end
    end

    vehicleCache[cacheKey] = { items = result }
    return result, true, "HAS_ACCESS"
end
