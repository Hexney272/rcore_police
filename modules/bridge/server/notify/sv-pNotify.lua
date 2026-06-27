CreateThread(function()
    if Config.Notify == Notify.PNOTIFY then
        ---@param client number                -- The player's source ID
        ---@param message string               -- The message to display
        ---@param type string | nil            -- The type of notification (e.g., "info", "success", "error", etc.)
        Framework.sendNotification = function(client, message, type)
            TriggerClientEvent('pNotify:SendNotification', client, {
                text = ('%s %s'):format(_U('NOTIFY.TITLE'), message),
                type = type,
                timeout = math.random(5000, 6000),
                layout = "centerLeft",
                queue = "left"
            })
        end
    end
end)
