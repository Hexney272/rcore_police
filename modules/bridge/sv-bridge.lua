-- Server-side Bridge Auto-Detection System for rcore_police
-- Automatically detects installed resources and sets Config values accordingly.
-- Runs on server startup within a CreateThread.

-----------------------------------------------------------
-- Default bridge list (fallback if Bridges global not set)
-----------------------------------------------------------

local DefaultBridges = {
    Database = true,
    Framework = true,
    Inventory = true,
    Clothing = true,
    Prison = true,
    Invoices = true,
    Dispatch = true,
    Garages = true,
    Fuel = true,
    Licence = true,
    Menu = true,
    Notify = true,
    Society = true,
    TextUI = true,
    Duty = true,
    Keys = true,
    PG = true,
    MDT = true,
}

-----------------------------------------------------------
-- Bridge Loader Helpers (special detection overrides)
-----------------------------------------------------------

BridgeLoader = {}

--- Clothing override: detect wasabi fork of fivem-appearance
--- @param detected string The currently detected clothing resource
--- @return string Final clothing resource name
local function resolveClothingOverride(detected)
    local result = detected
    local override = nil

    if isResourcePresentProvideless(Clothing.FAPPEARANCE) then
        local author = GetResourceMetadata(Clothing.FAPPEARANCE, "author", 1)
        if author and author == "wasabirobby" then
            override = Clothing.WASABI
        end
    end

    if override and override ~= detected then
        result = override
    end

    return result
end

--- Society override: detect qb-banking version to choose between qb-banking and qb-management
--- @param detected string The currently detected society resource
--- @return string Final society resource name
local function resolveSocietyOverride(detected)
    local result = detected
    local override = nil

    -- Check if qb-banking exists and is old version (< 2.0.0) -> use qb-management
    if isResourcePresentProvideless(Society.QB_BANKING) and not override then
        local version = GetResourceMetadata(Society.QB_BANKING, "version", 0)
        if version and version < "2.0.0" then
            if isResourcePresentProvideless(Society.QB_MANAGEMENT) then
                override = Society.QB_MANAGEMENT
            end
        end
    end

    -- Check if qb-management exists and qb-banking is new version (>= 2.0.0) -> use qb-banking
    if isResourcePresentProvideless(Society.QB_MANAGEMENT) and not override then
        local version = GetResourceMetadata(Society.QB_BANKING, "version", 0)
        if version and version >= "2.0.0" then
            if isResourcePresentProvideless(Society.QB_BANKING) then
                override = Society.QB_BANKING
            end
        end
    end

    if override and override ~= detected then
        result = override
    end

    return result
end

--- Inventory override: detect cheeza or mf inventory
--- @param detected string The currently detected inventory resource
--- @return string Final inventory resource name
local function resolveInventoryOverride(detected)
    local result = detected
    local override = nil

    if isResourcePresentProvideless(Inventory.CHEEZA) then
        override = Inventory.CHEEZA
    end

    if isResourcePresentProvideless(Inventory.MF) then
        override = Inventory.MF
    end

    if override and override ~= detected then
        result = override
    end

    return result
end

-----------------------------------------------------------
-- Main Auto-Detection Logic
-----------------------------------------------------------

local function runBridgeAutoDetection()
    local bridges = Bridges or DefaultBridges

    for bridgeName, _ in pairs(bridges) do
        local configValue = Config[bridgeName]

        if configValue == AUTO_DETECT then
            -- AUTO_DETECT mode: scan for the first matching resource
            local bridgeTable = _G[bridgeName]

            if bridgeTable == nil then
                dbg.critical("Auto detect for bridge %s failed. Please set it manually in the configuration file. [_G]", bridgeName)
            else
                local foundKey = nil

                -- Use ordered keys if available for deterministic detection
                local orderedKeys = ORDERED_KEYS[bridgeName]
                if orderedKeys then
                    for _, key in ipairs(orderedKeys) do
                        local resourceName = bridgeTable[key]
                        if isResourcePresentProvideless(resourceName) and resourceName ~= NONE_RESOURCE then
                            foundKey = key
                            break
                        end
                    end
                else
                    for key, resourceName in pairs(bridgeTable) do
                        if isResourcePresentProvideless(resourceName) and resourceName ~= NONE_RESOURCE then
                            foundKey = key
                            break
                        end
                    end
                end

                if foundKey ~= nil then
                    local detectedResource = bridgeTable[foundKey]

                    -- Apply special overrides
                    if bridgeName == INVENTORY then
                        detectedResource = resolveInventoryOverride(detectedResource)
                    end
                    if bridgeName == SOCIETY then
                        detectedResource = resolveSocietyOverride(detectedResource)
                    end
                    if bridgeName == CLOTHING then
                        detectedResource = resolveClothingOverride(detectedResource)
                    end

                    Config[bridgeName] = detectedResource
                    dbg.debug("Auto detect for bridge %s succeeded: %s, %s", bridgeName, foundKey, detectedResource)
                else
                    -- Fallback to NONE
                    if bridgeTable.NONE ~= nil then
                        Config[bridgeName] = bridgeTable.NONE
                        dbg.debug("Auto detect for bridge %s succeeded: %s, %s", bridgeName, "NONE", bridgeTable.NONE)
                    else
                        dbg.critical("Auto detect for bridge %s failed. Please set it manually in the configuration file.", bridgeName)
                    end
                end
            end
        else
            -- Manual mode: validate the manually set value
            if configValue ~= nil and configValue ~= AUTO_DETECT then
                local bridgeTable = _G[bridgeName]

                if bridgeTable == nil then
                    dbg.critical("Auto detect for bridge %s failed. Please set it manually in the configuration file. [_G]", bridgeName)
                else
                    local foundKey = nil
                    local orderedKeys = ORDERED_KEYS[bridgeName]

                    if orderedKeys then
                        for _, key in ipairs(orderedKeys) do
                            local resourceName = bridgeTable[key]
                            if resourceName == configValue then
                                if isResourcePresentProvideless(resourceName) and resourceName ~= NONE_RESOURCE then
                                    foundKey = key
                                    break
                                end
                            end
                        end
                    else
                        for key, resourceName in pairs(bridgeTable) do
                            if resourceName == configValue then
                                if isResourcePresentProvideless(resourceName) and resourceName ~= NONE_RESOURCE then
                                    foundKey = key
                                    break
                                end
                            end
                        end
                    end

                    if foundKey ~= nil then
                        local detectedResource = bridgeTable[foundKey]

                        if bridgeName == INVENTORY then
                            detectedResource = resolveInventoryOverride(detectedResource)
                        end

                        Config[bridgeName] = detectedResource
                        dbg.debug("Auto detect for bridge %s succeeded: %s, %s", bridgeName, foundKey, detectedResource)
                    else
                        if bridgeTable.NONE ~= nil then
                            Config[bridgeName] = bridgeTable.NONE
                            dbg.debug("Auto detect for bridge %s succeeded: %s, %s", bridgeName, "NONE", bridgeTable.NONE)
                        else
                            dbg.critical("Auto detect for bridge %s failed. Please set it manually in the configuration file.", bridgeName)
                        end
                    end
                end
            elseif configValue == nil then
                dbg.critical("Auto detect for bridge %s failed because the value was nil. Please set it manually in the configuration file.", bridgeName)
            end
        end
    end

    -- Signal that bridge detection is complete
    TriggerEvent("rcore_police:server:internal:isBridgeReady")
end

-----------------------------------------------------------
-- Run on startup
-----------------------------------------------------------

CreateThread(function()
    runBridgeAutoDetection()
end)
