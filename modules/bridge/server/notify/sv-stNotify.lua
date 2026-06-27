CreateThread(function()
    if Config.Notify == Notify.ST_NOTIFY then
        ---@param client number            -- The player's source ID
        ---@param message string           -- The message to display
        ---@param type string | nil        -- The type of notification (e.g., "success", "error", "info", etc.)
        Framework.sendNotification = function(client, message, type)
            exports['stNotify']:Notify(client, type, message, "", nil, false, 5000)
        end
    end
end)
