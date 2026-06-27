CreateThread(function()
    if Config.Notify == Notify.OKOK then
        ---@param client number                -- The player's source ID
        ---@param message string               -- The message to display
        ---@param type string | nil            -- The type of notification (e.g., "info", "success", "error", etc.)
        Framework.sendNotification = function(client, message, type)
            TriggerClientEvent('okokNotify:Alert', client,
                _U('NOTIFY.TITLE'),
                message,
                5000,
                type or 'info',
                false
            )
        end
    end
end)
