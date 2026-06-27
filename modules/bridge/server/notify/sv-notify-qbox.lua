CreateThread(function()
    if Config.Notify == Notify.QBOX then
        ---@param client number                -- The player's source ID
        ---@param message string               -- The message to display
        ---@param notifyType string | nil      -- The type of notification (e.g., "success", "error", "primary", etc.)
        Framework.sendNotification = function(client, message, notifyType)
            exports.qbx_core:Notify(client, message, notifyType, 5000)
        end
    end
end)

