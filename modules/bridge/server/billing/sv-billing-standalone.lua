CreateThread(function()
    if Config.Invoices == Invoices.NONE then
        CreateOfflineInvoiceForVehicle = function(vehiclePlate, fineAmount, vehicleSpeed)
            dbg.debug(
                'Speed camera taken fine for this vehicle: %s - but you need to integrate this to your billing resource (sv-billing-standalone.lua)',
                vehiclePlate)
        end

        CreateInvoiceToPlayerInVehicle = function(playerId, targetPlayerId, amount, data)
            if not playerId then
                return
            end

            if not targetPlayerId then
                return
            end

            if not data then
                data = {}
            end

            local targetBankAccount = Framework.GetBankAccount(targetPlayerId)

            if targetBankAccount then
                targetBankAccount.RemoveMoney(amount)
            end
        end

        CreateInvoice = function(playerId, targetPlayerId, amount, data)
            if not playerId then
                return
            end

            if not targetPlayerId then
                return
            end

            if not Utils.IsPlayerNearAnotherPlayer(playerId, targetPlayerId) then
                return
            end

            if not data then
                data = {}
            end

            local targetBankAccount = Framework.GetBankAccount(targetPlayerId)
            local SocietyAccount = SocietyService.GetAccount('police')

            if targetBankAccount then
                targetBankAccount.RemoveMoney(amount)
            end

            if SocietyAccount then
                SocietyAccount.AddMoney(amount)
            end
        end
    end
end)

