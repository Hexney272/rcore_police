CreateThread(function()
    if Config.Invoices == Invoices.JAKSAM then
        HandleInvoice = function(targetPlayerId)
            TriggerEvent("billing_ui:openBillingMenu", targetPlayerId)
        end

        CreateInvoice = function(targetPlayerId, amount)
            TriggerServerEvent('rcore_police:server:requestInvoice', targetPlayerId, amount)
        end
    end
end)

