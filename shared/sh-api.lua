-- API / Export Registration System for rcore_police
-- Registers exports that other resources can call into this resource

-----------------------------------------------------------
-- Export Registration Helpers
-----------------------------------------------------------

--- Register a single export for this resource
--- @param exportName string The name of the export
--- @param callback function The function to expose
function registerExport(exportName, callback)
    local resourceName = GetCurrentResourceName()

    AddEventHandler(string.format("__cfx_export_%s_%s", resourceName, exportName), function(setCB)
        setCB(callback)
    end)
end

--- Register multiple exports from an array of {name, func} entries
--- @param exportList table Array of tables with .name and .func fields
function registerExports(exportList)
    for _, entry in ipairs(exportList) do
        registerExport(entry.name, entry.func)
        dbg.debugAPI("Registered export: %s", entry.name)
    end
end

-----------------------------------------------------------
-- Local Event System (prevents cross-resource triggering)
-----------------------------------------------------------

if IsDuplicityVersion() then
    --- Register a local server-only event handler
    --- @param eventName string The event name
    --- @param callback function The handler function
    function RegisterLocalServerEvent(eventName, callback)
        local eventKey = string.format("%s:%s:%s", GetCurrentResourceName(), "server", eventName)

        if eventKey then
            AddEventHandler(eventName, function(...)
                callback(...)
            end)
        end
    end

    --- Trigger a local server-only event
    --- @param eventName string The event name
    --- @param ... any Event arguments
    function TriggerLocalServerEvent(eventName, ...)
        local eventKey = string.format("%s:%s:%s", GetCurrentResourceName(), "server", eventName)

        if eventKey then
            TriggerEvent(eventName, ...)
        end
    end
else
    --- Register a local client-only event handler
    --- @param eventName string The event name
    --- @param callback function The handler function
    function RegisterLocalClientEvent(eventName, callback)
        local eventKey = string.format("%s:%s:%s", GetCurrentResourceName(), "client", eventName)

        if eventKey then
            AddEventHandler(eventName, function(...)
                callback(...)
            end)
        end
    end

    --- Trigger a local client-only event
    --- @param eventName string The event name
    --- @param ... any Event arguments
    function TriggerLocalClientEvent(eventName, ...)
        local eventKey = string.format("%s:%s:%s", GetCurrentResourceName(), "client", eventName)

        if eventKey then
            TriggerEvent(eventName, ...)
        end
    end
end

-----------------------------------------------------------
-- API Export Registration (runs after all services load)
-----------------------------------------------------------

CreateThread(function()
    Wait(0) -- Wait one frame to ensure all services are initialized

    if IsDuplicityVersion() then
        -- SERVER-SIDE EXPORTS
        local exports = {}

        -- Action exports (police interactions)
        exports.Actions = {
            { name = "JailPlayer",            func = ActionService.JailPlayer },
            { name = "SearchPlayer",          func = ActionService.SearchPlayer },
            { name = "Escort",                func = ActionService.Escort },
            { name = "Zipties",               func = ActionService.ZipTies },
            { name = "Handcuff",              func = ActionService.Handcuff },
            { name = "PutPlayerInVehicle",    func = ActionService.PutPlayerInVehicle },
            { name = "TakePlayerFromVehicle", func = ActionService.TakePlayerFromVehicle },
            { name = "RemoveHandcuff",        func = ActionService.RemoveHandcuff },
            { name = "ForceUncuff",           func = ActionService.ForceUncuff },
            { name = "Paperbag",              func = ActionService.RequestHeadBag },
        }

        -- Player state query exports
        exports.PlayerStates = {
            { name = "IsPlayerCuffed",     func = InteractionService.isCuffed },
            { name = "IsPlayerEscorted",   func = InteractionService.isEscorted },
            { name = "IsPlayerHeadBagged", func = InteractionService.isHeadBagged },
            { name = "IsPlayerZiptied",    func = InteractionService.isPlayerZiptied },
        }

        -- Miscellaneous exports
        exports.Miscellaneous = {
            { name = "GetPoliceOnline", func = GroupsService.GetAllDeparmentsCount },
        }

        -- Register all export groups
        for _, group in pairs(exports) do
            registerExports(group)
        end
    else
        -- CLIENT-SIDE EXPORTS
        local exports = {}

        -- Player state query exports (client)
        exports.PlayerStates = {
            { name = "IsPlayerCuffed",     func = InteractionService.isCuffed },
            { name = "IsPlayerEscorted",   func = InteractionService.isEscorted },
            { name = "IsPlayerHeadBagged", func = InteractionService.isHeadBagged },
            { name = "IsPlayerZiptied",    func = InteractionService.isPlayerZiptied },
        }

        -- Miscellaneous exports (client)
        exports.Miscellaneous = {
            { name = "GetPoliceOnline",          func = GroupsService.GetAllDeparmentsCount },
            { name = "PlaceWheelClamp",          func = Props.RequestWheelClamp },
            { name = "RemoveWheelClamp",         func = RemoveWheelClamp },
            { name = "DoesVehicleHaveWheelClamp", func = DoesVehicleHaveWheelClamp },
        }

        -- Register all export groups
        for _, group in pairs(exports) do
            registerExports(group)
        end
    end
end)
