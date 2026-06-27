CreateThread(function()
    if Config.Notify == Notify.OKOK then
        ---@param client number            -- The player's source ID
        ---@param message string           -- The message to display
        ---@param type string | nil        -- The type of notification (e.g., "success", "error", "info", etc.)
        Framework.sendNotification = function(client, message, type)
            if type == 'info' then
                type = 'inform'
            end

            TriggerClientEvent('mythic_notify:client:SendAlert', client, {
                type = type,
                text = message,
                length = 5500
            })
        end
    end
end)
