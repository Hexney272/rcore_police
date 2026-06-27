CreateThread(function()
    if Config.Notify == Notify.OX then
        ---@param client number                -- The player's source ID
        ---@param message string               -- The message to display
        ---@param type string | nil            -- The type of notification (e.g., "info", "success", "error", etc.)
        Framework.sendNotification = function(client, message, type)
            if lib then
                TriggerClientEvent('ox_lib:notify', client, {
                    title = _U('NOTIFY.TITLE'),
                    description = message,
                    type = type,
                    duration = 5000
                })
            end
        end
    end
end)
