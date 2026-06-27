CreateThread(function()
    if Config.Dispatch == Dispatch.NONE then
        --[[

            Event handler for opening the Dispatch 
            This event is triggered when 'rcore_police:client:showDispatch' is fired.

            You need to define ExecuteCommand('commandUsedForOpeningDispatch')
        --]]

        AddEventHandler('rcore_police:client:showDispatch', function()
            Framework.sendNotification(_U("NOT_DISPATCH_PANEL_LOADED_STANDALONE"), "error")
            dbg.debug("Not dispatch panel detected.")

            -- ExecuteCommand('commandUsedForOpeningDispatch')
        end)
    end
end)
