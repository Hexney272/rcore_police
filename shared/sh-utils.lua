-- Shared utility functions for rcore_police
-- Used on both client and server side

-----------------------------------------------------------
-- Resource State Checking
-----------------------------------------------------------

--- Check if a resource is loaded (started or starting)
--- @param resourceName string The resource name to check
--- @return boolean Whether the resource is loaded
function isResourceLoaded(resourceName)
    if resourceName == NONE_RESOURCE then
        return true
    end

    if resourceName == "null" or resourceName == nil then
        return false
    end

    local state = GetResourceState(resourceName)
    return state == "started" or state == "starting"
end

-----------------------------------------------------------
-- String Utilities
-----------------------------------------------------------

--- Capitalize the first letter of a string
--- @param str string Input string
--- @return string String with first letter capitalized
function c(str)
    return str:gsub("^%l", string.upper)
end

--- Parse a version string into a table of numbers
--- @param versionStr string Version string like "1.2.3"
--- @return table Array of version numbers
function sVersion(versionStr)
    local parts = {}
    for num in string.gmatch(versionStr, "%d+") do
        table.insert(parts, tonumber(num))
    end
    return parts
end

--- Check if two version strings are equal
--- @param version1 string First version string
--- @param version2 string Second version string
--- @return boolean Whether versions are equal
function IsVersionEqual(version1, version2)
    local v1 = sVersion(version1)
    local v2 = sVersion(version2)
    local maxLen = math.max(#v1, #v2)

    for i = 1, maxLen do
        local a = v1[i] or 0
        local b = v2[i] or 0
        if a ~= b then
            return false
        end
    end

    return true
end

--- Print a table as pretty JSON
--- @param tbl table The table to print
function tprint(tbl)
    print(json.encode(tbl, { indent = true }))
end

--- Formatted print with prefix (level prefix + formatted message)
--- @param fmt string Format string
--- @param prefix string Level prefix (e.g. Levels.INFO)
--- @param ... any Format arguments
function afprint(fmt, prefix, ...)
    print(string.format("%s %s", prefix, fmt:format(...)))
end

--- Formatted print with prefix (same as afprint)
--- @param fmt string Format string
--- @param prefix string Level prefix
--- @param ... any Format arguments
function fprint(fmt, prefix, ...)
    print(string.format("%s %s", prefix, fmt:format(...)))
end

--- Simple string format wrapper
--- @param fmt string Format string
--- @param ... any Format arguments
--- @return string Formatted string
function sprint(fmt, ...)
    return string.format(fmt, ...)
end

--- Check if a string value represents a number
--- @param value string The value to check
--- @return boolean Whether the value is numeric
function isNumber(value)
    if value then
        return value:match("^%d+$") ~= nil
    end
    return false
end

-----------------------------------------------------------
-- Player Display
-----------------------------------------------------------

--- Get a formatted player label based on the configured ShowMode
--- @param playerId number The player server ID
--- @return string|nil Formatted label string
function getPlayerLabelByShowMode(playerId)
    local mode = Config.SelectPlayers.ShowMode
    mode = mode:upper()
    local label = nil

    if not mode then
        mode = SHOW_MODE.ID
    end

    if mode == SHOW_MODE.ID then
        label = string.format("%s: #%s", _U("SELECT_PLAYERS.PLAYER"), playerId)
    elseif mode == SHOW_MODE.OOC_ID then
        label = string.format("%s: %s #%s", _U("SELECT_PLAYERS.PLAYER"), GetPlayerName(playerId), playerId)
    end

    return label
end

-----------------------------------------------------------
-- Vehicle Speed
-----------------------------------------------------------

--- Convert native speed to configured speed type (MPH/KMH)
--- @param nativeSpeed number The native GTA speed value
--- @return number Converted speed value
function getVehicleSpeed(nativeSpeed)
    local speedType = Config.Props.SpeedCamera.SpeedType:upper()

    if speedType == "MPH" then
        return nativeSpeed * 2.236936
    elseif speedType == "KMH" then
        return nativeSpeed * 3.6
    else
        return nativeSpeed
    end
end

-----------------------------------------------------------
-- Table Extensions
-----------------------------------------------------------

--- Count the number of entries in a table (works with non-sequential keys)
--- @param tbl table The table to count
--- @return number Number of entries
function table.len(tbl)
    local count = 0
    for _, _ in pairs(tbl) do
        count = count + 1
    end
    return count
end

--- Deep copy a table (including metatables)
--- @param orig any The value to deep copy
--- @return any Deep copied value
function table.deepcopy(orig)
    if type(orig) ~= "table" then
        return orig
    end

    local copy = {}
    for key, value in next, orig do
        copy[table.deepcopy(key)] = table.deepcopy(value)
    end
    setmetatable(copy, table.deepcopy(getmetatable(orig)))
    return copy
end

--- Internal deep copy helper (used by table.merge)
local function deepcopyInternal(orig)
    if type(orig) ~= "table" then
        return orig
    end

    local copy = {}
    for key, value in next, orig do
        copy[deepcopyInternal(key)] = deepcopyInternal(value)
    end
    setmetatable(copy, deepcopyInternal(getmetatable(orig)))
    return copy
end

--- Deep merge two tables (source values override base values)
--- @param base table The base table
--- @param source table The source table to merge from
--- @return table Merged result
function table.merge(base, source)
    local result = deepcopyInternal(base)

    for key, value in pairs(source) do
        if type(value) == "table" then
            if type(result[key]) == "table" then
                result[key] = table.merge(result[key], value)
            end
        else
            result[key] = deepcopyInternal(value)
        end
    end

    return result
end

--- Format table keys with a prefix for display
--- @param tbl table Table whose keys to format
--- @param prefix string Prefix to prepend
--- @return string Comma-separated formatted keys
function formatPossible(tbl, prefix)
    local parts = {}
    for key, _ in pairs(tbl) do
        table.insert(parts, string.format("^1%s.%s^7", prefix, key))
    end
    return table.concat(parts, ", ")
end

--- Check if a value is a table
--- @param value any Value to check
--- @return boolean Whether value is a table
function isTable(value)
    if value ~= nil then
        return type(value) == "table"
    end
    return false
end

--- Check if a table is empty (has no entries)
--- @param tbl any The value to check
--- @return boolean Whether the table is empty (or not a table)
function table.isEmpty(tbl)
    if isTable(tbl) then
        return next(tbl) == nil
    end
    return true
end

--- Get the size of a table (number of key-value pairs)
--- @param tbl table|nil The table to measure
--- @return number Size of the table
function table.size(tbl)
    if not tbl then
        return 0
    end

    local count = 0
    for _, _ in pairs(tbl) do
        count = count + 1
    end
    return count
end

-----------------------------------------------------------
-- Debug System
-----------------------------------------------------------

--- Check if a specific debug level is allowed in the config
--- @param level string The debug level name (e.g. "INFO", "CRITICAL")
--- @return boolean Whether debugging at this level is allowed
function isDebugAllowed(level)
    local allowed = false

    if Config.DebugLevel then
        if isTable(Config.DebugLevel) then
            if not table.isEmpty(Config.DebugLevel) then
                for _, v in pairs(Config.DebugLevel) do
                    if v == level then
                        allowed = true
                    end
                end
            end
        else
            if level == Config.DebugLevel then
                allowed = true
            end
        end
    end

    return allowed
end

--- Create a new debug logger instance
--- @return table Debug logger object with methods: info, init, success, critical, error, security, bridge, etc.
function rdebug()
    local self = {}
    self.prefix = "System"

    function self.info(fmt, ...)
        if isDebugAllowed("INFO") then
            print("^5[" .. self.prefix .. " | info] ^7" .. sprint(fmt, ...))
        end
    end

    function self.init(fmt, ...)
        if isDebugAllowed("INFO") then
            print("^7" .. sprint(fmt, ...))
        end
    end

    function self.success(fmt, ...)
        if isDebugAllowed("SUCCESS") then
            print("^3[" .. self.prefix .. " | success] ^7" .. sprint(fmt, ...))
        end
    end

    function self.critical(fmt, ...)
        if isDebugAllowed("CRITICAL") then
            print("^1[" .. self.prefix .. " | critical] ^7" .. sprint(fmt, ...))
        end
    end

    function self.error(fmt, ...)
        if isDebugAllowed("ERROR") then
            print("^1[" .. self.prefix .. " | error] ^7" .. sprint(fmt, ...))
        end
    end

    function self.security(fmt, ...)
        if isDebugAllowed("SECURITY") then
            print("^3[" .. self.prefix .. " | security] ^7" .. sprint(fmt, ...))
        end
    end

    function self.securitySpam(fmt, ...)
        if isDebugAllowed("SECURITY_SPAM") then
            print("^3[" .. self.prefix .. " | security] ^7" .. sprint(fmt, ...))
        end
    end

    function self.bridge(fmt, ...)
        if Config.Debug then
            print("^4[BRIDGE] ^7" .. sprint(fmt, ...))
        end
    end

    function self.debugClothing(fmt, ...)
        if Config.DebugClothing then
            print("^2[ Clothing module ] | debug] ^7" .. sprint(fmt, ...))
        end
    end

    function self.debugNetwork(fmt, ...)
        if isDebugAllowed("NETWORK") then
            if Config.Debug then
                print("^3[ Network | debug] ^7" .. sprint(fmt, ...))
            end
        end
    end

    function self.debugAPI(fmt, ...)
        if Config.DebugAPI then
            print("^5[ API module ] | debug] ^7" .. sprint(fmt, ...) .. "\n ^3This debug message can be disabled in configs/config.lua - DebugAPI = false")
        end
    end

    function self.debugInventory(fmt, ...)
        if Config.DebugInventory then
            print("^5[ Inventory module ] | debug] ^7" .. sprint(fmt, ...))
        end
    end

    function self.debug(fmt, ...)
        if isDebugAllowed("DEBUG") then
            if Config.Debug then
                print("^3[ Debug ] ^7" .. sprint(fmt, ...))
            end
        end
    end

    function self.menu(fmt, ...)
        if isDebugAllowed("MENU") then
            if Config.Debug then
                print("^3[ Menu ] ^7" .. sprint(fmt, ...))
            end
        end
    end

    function self.setupPrefix(prefix)
        self.prefix = prefix
    end

    function self.getPrefix()
        return self.prefix
    end

    return self
end

--- Shortcut to create a debug instance and print info
--- @param fmt string Format string
--- @param ... any Format arguments
function dprint(fmt, ...)
    local d = rdebug()
    d.info(fmt, ...)
end

-----------------------------------------------------------
-- Image Helpers
-----------------------------------------------------------

--- Get an image path by name (for menu icons)
--- @param name string Image name without extension
--- @return string Full relative path to the image
function GetImageByName(name)
    return "./images/menu/" .. name .. ".png"
end

-----------------------------------------------------------
-- Geometry Utilities
-----------------------------------------------------------

--- Check if a point is inside a polygon (ray casting algorithm)
--- @param point table|nil Point with x, y coordinates
--- @param polygon table Array of points forming the polygon
--- @return boolean Whether the point is inside the polygon
function IsPointInPolygon(point, polygon)
    if not point then
        return true
    end

    if point.x == 0.0 and point.y == 0.0 then
        return true
    end

    local numVertices = #polygon
    local inside = false

    for i = 1, numVertices do
        local current = polygon[i]
        local nextIdx = (i % numVertices) + 1
        local nextPoint = polygon[nextIdx]

        local currentAbove = current.y > point.y
        local nextAbove = nextPoint.y > point.y

        if currentAbove ~= nextAbove then
            local intersectX = (nextPoint.x - current.x) * (point.y - current.y) / (nextPoint.y - current.y) + current.x
            if point.x < intersectX then
                inside = not inside
            end
        end
    end

    return inside
end

--- Calculate the centroid (center point) of a polygon
--- @param points table Array of vec3 points
--- @return vector3 The centroid position
function CalculateCentroid(points)
    local sumX, sumY, sumZ = 0, 0, 0
    local count = #points

    for _, point in ipairs(points) do
        sumX = sumX + point.x
        sumY = sumY + point.y
        sumZ = sumZ + point.z
    end

    return vector3(sumX / count, sumY / count, sumZ / count)
end

-----------------------------------------------------------
-- Resource Info Display
-----------------------------------------------------------

--- Print resource information to console (used for startup display)
--- @param resources table Array of resource info objects
function printResource(resources)
    for _, resource in pairs(resources) do
        print("^3" .. resource.name .. "^7")

        if resource.version then
            print("^7version: ^3" .. resource.version)
        end
        if resource.database then
            print("^7database: ^3" .. resource.database)
        end
        if resource.debug then
            print("^7debug: ^3" .. resource.debug)
        end
        if resource.locale then
            print("^7locale: ^3" .. resource.locale)
        end
        if resource.preset then
            print("^7map: ^3" .. resource.preset)
        end
        if resource.notify then
            print("^7notify: ^3" .. resource.notify)
        end
        if resource.inventory then
            if resource.inventory == "auto_detect" then
                resource.inventory = "none"
            end
            print("^7inventory: ^3" .. resource.inventory)
        end
        if resource.dispatch then
            print("^7dispatch: ^3" .. resource.dispatch)
        end
        if resource.clothing then
            print("^7clothing: ^3" .. resource.clothing)
        end
        if resource.framework then
            print("^7framework: ^3" .. resource.framework)
        end
        if resource.jailTime then
            print("^7jail time conversion: ^3" .. resource.jailTime)
        end
        if resource.phone then
            local phoneDisplay = resource.phone
            if phoneDisplay == "auto_detect" then
                phoneDisplay = "Not any supported phone loaded"
            end
            print("^7phone: ^3" .. phoneDisplay)
        end
        if resource.economy then
            print("^7economy item: ^3" .. resource.economy)
        end
        if resource.docs then
            print("\n^7Docs: ^3 " .. resource.docs)
        end
    end
end

-----------------------------------------------------------
-- Number Safety
-----------------------------------------------------------

--- Safely convert a value to a number with a fallback default
--- @param value any The value to convert
--- @param default number|nil Fallback value if conversion fails
--- @return number The converted number or default
function safeNumber(value, default)
    if value == nil then
        return default
    end

    local num = tonumber(value)
    if num == nil then
        return default or 0
    end

    return num
end

-----------------------------------------------------------
-- Server/Client Specific Utilities
-----------------------------------------------------------

if IsDuplicityVersion() then
    --- Trigger a client event on a specific player (server-side only)
    --- @param playerId number Target player ID (-1 for all)
    --- @param eventName string The event name suffix
    --- @param ... any Event arguments
    function StartClient(playerId, eventName, ...)
        local resourceName = GetCurrentResourceName()

        if not eventName then
            return dbg.critical("Invalid event name for %s", resourceName)
        end

        local fullEventName = string.format("%s:%s", resourceName, "client:" .. eventName)

        if not fullEventName then
            return
        end

        local targetName = nil
        if playerId == -1 then
            targetName = "ALL PLAYERS"
        else
            targetName = GetPlayerName(playerId)
        end

        dbg.debug("Starting client with %s for user %s | Target: %s", eventName, targetName, playerId)

        TriggerClientEvent(fullEventName, playerId, ...)
    end
else
    --- Make a ped ignore hits from other players (client-side only)
    --- @param ped number The ped entity handle
    --- @param ignore boolean Whether to enable or disable ignore mode
    function MakePedIgnoreHitFromOtherPlayer(ped, ignore)
        if not DoesEntityExist(ped) or not IsEntityAPed(ped) then
            return
        end

        if ignore then
            SetEntityInvincible(ped, true)
            SetPedCanBeTargetted(ped, false)
            SetEntityCompletelyDisableCollision(ped, true, true)
            SetEntityCanBeDamaged(ped, false)
            SetPedCanRagdoll(ped, false)
            FreezeEntityPosition(ped, true)
            SetEntityProofs(ped, false, true, false, false, false, false, false, false)
            SetBlockingOfNonTemporaryEvents(ped, true)
        else
            SetPedCanRagdoll(ped, true)
            SetEntityInvincible(ped, false)
            SetPedCanBeTargetted(ped, true)
            SetEntityCanBeDamaged(ped, true)
            FreezeEntityPosition(ped, false)
            SetEntityProofs(ped, false, false, false, false, false, false, false, false)
            SetBlockingOfNonTemporaryEvents(ped, false)
        end
    end

    --- Register a key binding with optional cooldown support (client-side only)
    --- @param callback function The function to call when key is pressed
    --- @param commandPrefix string Command name prefix
    --- @param description string Description shown in key settings
    --- @param key string The default key
    --- @param inputType string|nil Input type (default: "keyboard")
    --- @param options table|nil Options with .state (boolean) and .cooldown (number ms)
    function RegisterKey(callback, commandPrefix, description, key, inputType, options)
        if inputType == nil then
            inputType = "keyboard"
        end

        dbg.debug("Registering key %s %s %s", key, commandPrefix, description)

        if options ~= nil and type(options) == "table" and next(options) then
            local hasCooldown = options.state
            local cooldownTime = options.cooldown
            local lastUsed = nil

            if hasCooldown then
                RegisterCommand(commandPrefix .. key, function()
                    local now = GetGameTimer()

                    if lastUsed then
                        if now - lastUsed < cooldownTime then
                            return
                        end
                    end

                    lastUsed = GetGameTimer()
                    callback()
                end, false)
            else
                RegisterCommand(commandPrefix .. key, callback, false)
            end
        else
            RegisterCommand(commandPrefix .. key, callback, false)
        end

        RegisterKeyMapping(commandPrefix .. key, "POLICE:" .. " " .. description, inputType, key)
    end
end

-----------------------------------------------------------
-- Table Dump (Debug Serialization)
-----------------------------------------------------------

--- Dump a table to a formatted string representation (for debugging/export)
--- @param tbl table The table to dump
--- @param silent boolean|nil If true, don't print the result
--- @return string The formatted table string
function dumpTable(tbl, silent)
    local visited = {}
    local stack = {}
    local parts = {}
    local depth = 1
    local output = "{\n"

    while true do
        local count = 0
        for _ in pairs(tbl) do
            count = count + 1
        end

        local idx = 1
        for key, value in pairs(tbl) do
            -- Skip already-visited entries
            if visited[tbl] ~= nil and idx < visited[tbl] then
                goto continue
            end

            -- Add separator
            if string.find(output, "}", output:len()) then
                output = output .. ",\n"
            elseif not string.find(output, "\n", output:len()) then
                output = output .. "\n"
            end

            table.insert(parts, output)
            output = ""

            -- Format the key
            local keyStr
            if type(key) == "number" or type(key) == "boolean" then
                keyStr = tostring(key)
            else
                keyStr = tostring(key)
            end

            -- Format the value
            if type(value) == "number" or type(value) == "boolean" then
                output = output .. string.rep("\t", depth) .. keyStr .. " = " .. tostring(value)
            elseif type(value) == "table" then
                if type(key) == "number" then
                    output = output .. string.rep("\t", depth) .. "{\n"
                else
                    output = output .. string.rep("\t", depth) .. keyStr .. " = {\n"
                end
                table.insert(stack, tbl)
                table.insert(stack, value)
                visited[tbl] = idx + 1
                break
            elseif type(value) == "vector3" then
                output = output .. string.rep("\t", depth) .. keyStr .. " = " .. tostring(value)
            else
                output = output .. string.rep("\t", depth) .. keyStr .. " = '" .. tostring(value) .. "'"
            end

            -- Close or continue
            if idx == count then
                output = output .. "\n" .. string.rep("\t", depth - 1) .. "}"
            else
                output = output .. ","
                goto next_item
                ::continue::
                if idx == count then
                    output = output .. "\n" .. string.rep("\t", depth - 1) .. "}"
                end
            end

            ::next_item::
            idx = idx + 1
        end

        -- Handle empty tables
        if count == 0 then
            output = output .. "\n" .. string.rep("\t", depth - 1)
        end

        -- Pop from stack
        if not (#stack > 0) then
            break
        end

        tbl = stack[#stack]
        stack[#stack] = nil

        if visited[tbl] == nil then
            depth = depth + 1
        else
            depth = depth - 1
        end
    end

    table.insert(parts, output)
    output = table.concat(parts)

    return output
end
