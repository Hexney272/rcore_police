CreateThread(function()
    if Config.Notify == Notify.BRUTAL then
        ---@param client number            -- The player's source ID
        ---@param message string           -- The message to display
        ---@param type string | nil        -- The type of notification (e.g., "success", "error", etc.)
        Framework.sendNotification = function(client, message, type)
            TriggerClientEvent('brutal_notify:SendAlert', client, _U('NOTIFY.TITLE'), message, 5500, type)
        end
    end
end, "sv-brutal_notify code name: Phoenix")
