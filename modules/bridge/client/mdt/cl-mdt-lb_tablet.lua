CreateThread(function()
    if Config.MDT == MDT.LB_TABLET then
        --[[

            Event handler for opening the MDT (Mobile Data Terminal).
            This event is triggered when 'rcore_police:client:showMDT' is fired.

            ExecuteCommand is a native function that simulates a user typing a command in chat.
            In this case, it executes the command './mdt', which internally triggers the logic
            registered under that command name.
        --]]

        AddEventHandler('rcore_police:client:showMDT', function()
            ExecuteCommand('tablet') -- Executes the command './mdt'
        end)
    end
end)
