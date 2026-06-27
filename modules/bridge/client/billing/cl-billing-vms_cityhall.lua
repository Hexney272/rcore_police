CreateThread(function()
    if Config.Invoices == Invoices.VMS then
        HandleInvoice = function(target)
            exports['vms_cityhall']:openBillingsMenu()
        end

        CreateInvoice = function(target, amount)

        end
    end
end)

