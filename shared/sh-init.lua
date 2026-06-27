-- Shared Initialization for rcore_police
-- Sets up global tables, loads external libraries, defines core helpers,
-- initializes PoliceJobs, and optionally wraps event handlers with error reporting.

-----------------------------------------------------------
-- Global State Tables
-----------------------------------------------------------

SH = {}
Intervals = {}
Maps = {}

-----------------------------------------------------------
-- External Library Loading
-----------------------------------------------------------

-- Load GLM (math library)
glm = require("glm")

-- Load ox_lib if available
if isResourceLoaded("ox_lib") then
    local filePath = string.format("%s.lua", "init")
    local fileContent = LoadResourceFile("ox_lib", filePath)
    assert(load(fileContent, string.format("@@ox_lib/%s", filePath)))()
end

-- Load ND_Core if available
if isResourceLoaded("ND_Core") then
    local filePath = string.format("%s.lua", "init")
    local fileContent = LoadResourceFile("ND_Core", filePath)
    assert(load(fileContent, string.format("@@ND_Core/%s", filePath)))()
end

-----------------------------------------------------------
-- Core Helper Functions
-----------------------------------------------------------

--- Check if an export exists in a resource without throwing errors
--- @param resourceName string The resource to check
--- @param exportName string The export name to look for
--- @return boolean Whether the export exists
function doesExportExistInResource(resourceName, exportName)
    local success, _ = xpcall(function()
        local _ = exports[resourceName][exportName]
    end, debug.traceback)
    return success
end

--- Wait for a condition to become true with a timeout
--- @param conditionFn function Function that returns true when condition is met
--- @param timeout number Maximum time to wait in ms
--- @return boolean Whether the condition was met before timeout
function WaitFor(conditionFn, timeout)
    local elapsed = 0
    local interval = 250

    while true do
        if conditionFn() then
            break
        end

        Wait(interval)
        elapsed = elapsed + interval

        if timeout <= elapsed then
            return false
        end
    end

    return true
end

--- Dump a table to Lua code for map preset export
--- @param mapName string The map identifier
--- @param mapData table The map data table
--- @return string Lua code string that recreates the map data
function dumpTableLuaCode(mapName, mapData)
    -- Helper: check if a string value is a known global reference (not to be quoted)
    local function isGlobalReference(str)
        return str:match("^_U%b()$")
            or str:match("^vec3%b()$")
            or str:match("^vector3%b()$")
            or str:match("^ZONE_TYPE%..+$")
            or str:match("^MAP_TYPES%..+$")
            or str:match("^MAPS%..+$")
    end

    -- Helper: serialize a value to Lua code string
    local function serializeValue(value, indentLevel)
        local valueType = type(value)
        if not indentLevel then indentLevel = 1 end
        local indent = string.rep("    ", indentLevel)

        if valueType == "string" then
            if isGlobalReference(value) then
                return value
            else
                return string.format("%q", value)
            end
        elseif valueType == "number" or valueType == "boolean" then
            return tostring(value)
        elseif valueType == "table" then
            -- Check if it's a vec3
            if value.x and value.y and value.z then
                return string.format("vec3(%.6f, %.6f, %.6f)", value.x, value.y, value.z)
            end

            local result = "{\n"
            for k, v in pairs(value) do
                local keyStr
                if type(k) == "string" then
                    keyStr = string.format("%s%s = ", indent, k)
                else
                    keyStr = string.format("%s[%s] = ", indent, tostring(k))
                end
                result = result .. keyStr .. serializeValue(v, indentLevel + 1) .. ",\n"
            end
            result = result .. string.rep("    ", indentLevel - 1) .. "}"
            return result
        else
            return string.format("%q", tostring(value or "nil"))
        end
    end

    local code = "CreateThread(function()\n"
    code = code .. string.format("    Maps[%q] = %s\n", tostring(mapName), serializeValue(mapData, 2))
    code = code .. "end)"
    return code
end

--- Same as dumpTable in sh-utils (kept for compatibility as it's redefined here)
--- @param tbl table The table to dump
--- @param silent boolean|nil If true, don't print
--- @return string Formatted string representation
function dumpTable(tbl, silent)
    -- This is a duplicate of the dumpTable in sh-utils.lua
    -- Kept for load-order compatibility (sh-init loads after sh-utils and overrides it)
    local result = dumpTable(tbl, silent)
    return result
end

--- Provide (emulate) an export from another resource
--- Used for backward compatibility with resources like qb-policejob
--- @param exportName string The export name to provide
--- @param resourceName string|nil The resource name to emulate (defaults to current resource)
--- @param callback function The function to expose as the export
function provideExport(exportName, resourceName, callback)
    if not resourceName then
        resourceName = GetCurrentResourceName()
    end

    if resourceName ~= GetCurrentResourceName() then
        dbg.debugAPI("Providing export emulation for export named: %s | resource: %s", exportName, resourceName)
    end

    AddEventHandler(string.format("__cfx_export_%s_%s", resourceName, exportName), function(setCB)
        dbg.debugAPI("Emulator was called from %s | emulate-resource: %s", GetInvokingResource(), resourceName)
        setCB(callback)
    end)
end

--- Safely call a function with error handling
--- @param fn function The function to call
--- @param fnName string Name for debug logging
--- @param ... any Arguments to pass to the function
--- @return boolean success Whether the call succeeded
--- @return any result The return value or error message
function safeCallFunction(fn, fnName, ...)
    local success, result = pcall(fn, ...)

    if not success then
        dbg.critical("Safe call for function named (%s) result: %s", fnName, result)
    end

    return success, result
end

--- Extract job names from Config.JobGroups table
--- Always includes "leo" as a base job name
--- @param jobGroups table|nil The JobGroups config table
--- @return table Array of job name strings
function extractJobNames(jobGroups)
    local jobs = {}
    table.insert(jobs, "leo")

    if jobGroups and next(jobGroups) then
        for jobName, _ in pairs(jobGroups) do
            table.insert(jobs, jobName)
        end
    end

    return jobs
end

--- Check if a resource is present and started (without checking 'provides')
--- Iterates all resources by index to find exact name match
--- @param resourceName string The resource name to find
--- @return boolean Whether the resource is present and running
function isResourcePresentProvideless(resourceName)
    local numResources = GetNumResources()

    for i = 0, numResources - 1 do
        local name = GetResourceByFindIndex(i)
        if name == resourceName then
            local state = GetResourceState(name)
            return state == "started" or state == "starting"
        end
    end

    return false
end

--- Find a resource by pattern matching its name
--- @param pattern string Lua pattern to match against resource names
--- @return string|nil The first matching resource name that is running
function FindTargetResource(pattern)
    local numResources = GetNumResources()

    for i = 0, numResources - 1 do
        local name = GetResourceByFindIndex(i)
        if string.match(name, pattern) then
            if isResourcePresentProvideless(name) then
                return name
            end
        end
    end
end

-----------------------------------------------------------
-- Police Jobs Initialization
-----------------------------------------------------------

PoliceJobs = extractJobNames(Config.JobGroups or {})

-----------------------------------------------------------
-- OX Inventory + QBCore Version Compatibility Fix
-----------------------------------------------------------

CreateThread(function()
    -- Disable DisableInventoryWhileCuffed for ox_inventory v2.41.0 on QBCore
    -- due to known invBusy statebag bugs in that specific version
    if Config.Inventory == Inventory.OX then
        if Config.Framework == Framework.QBCore then
            local oxVersion = GetResourceMetadata(Inventory.OX, "version", 0)
            if oxVersion then
                if IsVersionEqual(oxVersion, "2.41.0") then
                    Config.Cuffing.DisableInventoryWhileCuffed = false
                end
            end
        end
    end
end)

-----------------------------------------------------------
-- Debug Session System (for DebugError mode)
-----------------------------------------------------------

local debugErrorEnabled = Config.DebugError or false
local debugSessions = {}

--- Start a debug session for tracking execution steps
--- @param sessionName string Unique session identifier
function StartDebugSession(sessionName)
    if debugErrorEnabled then
        debugSessions[sessionName] = {
            stepCount = 0,
            stepData = {}
        }
    end
end

--- Destroy a debug session and display its recorded steps
--- @param sessionName string The session to destroy
function DestroyDebugSession(sessionName)
    DisplayCurrentRecordSteps(sessionName)
    if debugErrorEnabled then
        debugSessions[sessionName] = nil
    end
end

--- Record a step in a debug session
--- @param sessionName string The session identifier
--- @param stepName string Description of the step
function DebugRecordStep(sessionName, stepName)
    if debugErrorEnabled then
        local session = debugSessions[sessionName]
        if session then
            session.stepCount = session.stepCount + 1
            session.stepData[session.stepCount] = stepName
        end
    end
end

--- Display all recorded steps for a debug session
--- @param sessionName string The session identifier
function DisplayCurrentRecordSteps(sessionName)
    if debugErrorEnabled then
        local session = debugSessions[sessionName]
        if session then
            for _, step in ipairs(session.stepData) do
                print("^0Step name: ^1" .. tostring(step))
            end
            print("^5=====^0")
            print("^0Last step before the error: ^1" .. tostring(session.stepData[#session.stepData]))
        end
    end
end

-----------------------------------------------------------
-- Error Wrapper System (only active when Config.DebugError = true)
-- Overrides: RegisterCommand, RegisterNetEvent, RegisterNUICallback,
--            CreateThread, AddEventHandler with xpcall wrappers
-----------------------------------------------------------

if debugErrorEnabled then
    local _originalAddEventHandler = AddEventHandler
    local _originalRegisterNetEvent = RegisterNetEvent
    local _originalCreateThread = CreateThread
    local _originalRegisterCommand = RegisterCommand
    local _originalRegisterNUICallback = RegisterNUICallback

    --- Helper: format arguments for replication display
    local function formatDebugArgs(tbl, dumpFn)
        local str = ""
        for i = 1, 12 do
            local v = tbl[i]
            if type(v) == "table" then
                str = str .. dumpFn(v, true) .. ","
            elseif type(v) == "string" then
                str = str .. "'" .. v .. "',"
            else
                str = str .. tostring(v) .. ","
            end
        end
        return str
    end

    --- Helper: print error details for a wrapped handler
    local function printErrorDetails(handlerType, eventName, args, traceback, dumpFn)
        print("^5=========================^0")
        print("^2Error in: ^1" .. handlerType .. "^0")
        print("^2Event name: ^1" .. eventName .. "^0")
        print("^5=========================^0")
        DisplayCurrentRecordSteps(eventName)
        print("^5=========================^0")

        for idx, arg in pairs(args) do
            print("^0Argument key: ^1" .. idx)
            print("^0Argument value type: ^1" .. type(arg))
            print(" ")
            if type(arg) == "table" then
                print("^0Argument value: ^1" .. tostring(arg))
                dumpFn(arg)
            else
                print("^0Argument value: ^1" .. tostring(arg))
            end
            print("^5=====^0")
        end

        print("^5=========================^0")
        print(traceback)
        print("^5=========================^0")

        -- Print replication command
        local argsStr = formatDebugArgs(args, dumpFn)
        argsStr = argsStr:gsub("\n", ""):sub(1, -2)

        print("^0Replication trigger event:")
        if handlerType == "RegisterNUICallback" then
            print("^1TriggerEvent('__cfx_nui:" .. eventName .. "', " .. argsStr .. ")")
        else
            print("^1TriggerEvent('" .. eventName .. "', " .. argsStr .. ")")
        end
        print("^5=========================^0")
    end

    --- Debug dumpTable for error display (with bracket-style keys)
    local function debugDumpTable(tbl, silent)
        -- Simplified dump for error display (reuses dumpTable logic with bracket keys)
        local result = dumpTable(tbl, true)
        if not silent then
            print(result)
        end
        return result
    end

    -- Override RegisterCommand
    RegisterCommand = function(commandName, callback)
        _originalRegisterCommand(commandName, function(source, args, rawCommand)
            local success, err = xpcall(function()
                callback(source, args, rawCommand)
            end, debug.traceback)

            if not success then
                printErrorDetails("RegisterCommand", commandName, {source, args, rawCommand}, err, debugDumpTable)
            end
        end)
    end

    -- Override RegisterNetEvent
    RegisterNetEvent = function(eventName, callback)
        if not callback then
            _originalRegisterNetEvent(eventName)
            return
        end

        _originalRegisterNetEvent(eventName, function(...)
            local args = {...}
            local success, err = xpcall(function()
                callback(...)
            end, debug.traceback)

            if not success then
                printErrorDetails("RegisterNetEvent", eventName, args, err, debugDumpTable)
            end
        end)
    end

    -- Override RegisterNUICallback
    RegisterNUICallback = function(callbackName, callback)
        _originalRegisterNUICallback(callbackName, function(...)
            local args = {...}
            local success, err = xpcall(function()
                callback(...)
            end, debug.traceback)

            if not success then
                printErrorDetails("RegisterNUICallback", callbackName, args, err, debugDumpTable)
            end
        end)
    end

    -- Override CreateThread
    CreateThread = function(callback, label)
        _originalCreateThread(function()
            local success, err = xpcall(callback, debug.traceback)

            if not success then
                print("=========================")
                print("^2Error in: ^1CreateThread^0")
                print("^1" .. (label or "non defined") .. "^0")
                print("=========================")
                DisplayCurrentRecordSteps(label)
                print("^5=========================^0")
                print(err)
                print("=========================")
            end
        end)
    end

    -- Override AddEventHandler
    AddEventHandler = function(eventName, callback)
        _originalAddEventHandler(eventName, function(...)
            local args = {...}
            local success, err = xpcall(function()
                callback(...)
            end, debug.traceback)

            if not success then
                printErrorDetails("AddEventHandler", eventName, args, err, debugDumpTable)
            end
        end)
    end
end
