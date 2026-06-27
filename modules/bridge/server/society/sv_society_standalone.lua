CreateThread(function()
    if not Config.Society or Config.Society == Society.NONE then
        local registeredAccounts = {}

        local function getESXSocietyAccount(business)
            local p = promise.new()
            local societyPrefix = ('society_%s'):format(business)
        
            TriggerEvent(Config.Events['esx_addonaccount:getSharedAccount'], societyPrefix, function(account)
                p:resolve(account)
            end)
        
            return Citizen.Await(p)
        end

        --[[
            Since, no Society was detected on your server, we have emulation for society system
            By default each business has 50 000 USD as balance that can be used
        ]]

        ---@param business string
        ---@return number | nil
        SocietyService.GetMoney = function(business)
            if isResourcePresentProvideless(Society.TGG_BANKING) and doesExportExistInResource(Society.TGG_BANKING, "GetSocietyAccountMoney") then
                local account = exports[Society.TGG_BANKING]:GetSocietyAccount(business)

                if account == nil then
                    exports[Society.TGG_BANKING]:CreateBusinessAccount(business, 0, business, 'red')
                end

                return safeNumber(exports[Society.TGG_BANKING]:GetSocietyAccountMoney(business), 0)
            end

            if Config.Framework == Framework.ESX then
                local account = getESXSocietyAccount(business)

                if account then
                    return safeNumber(account.money, 0)
                end
            end

            if doesExportExistInResource(Society.QB_MANAGEMENT, "GetAccount") then
                return tonumber(exports[Society.QB_MANAGEMENT]:GetAccount(business))
            end

            if doesExportExistInResource(Society.QB_BANKING, "GetAccountBalance") then
                return tonumber(exports[Society.QB_BANKING]:GetAccountBalance(business))
            end

            return registeredAccounts[business] 
        end


        --- @param business string Name of business
        --- @param amount number Amount of money be removed
        --- @return boolean
        SocietyService.RemoveMoney = function(business, amount)
            if isResourcePresentProvideless(Society.TGG_BANKING) and doesExportExistInResource(Society.TGG_BANKING, "RemoveSocietyMoney") then
                return exports[Society.TGG_BANKING]:RemoveSocietyMoney(business, amount)
            end

            if Config.Framework == Framework.ESX then
                local account = getESXSocietyAccount(business)
                
                if account then
                    account.removeMoney(amount)
                    return true
                end
            end
            
            if doesExportExistInResource(Society.QB_MANAGEMENT, "RemoveMoney") then
                return exports[Society.QB_MANAGEMENT]:RemoveMoney(business, amount)
            end

            if doesExportExistInResource(Society.QB_BANKING, "RemoveMoney") then
                return exports[Society.QB_BANKING]:RemoveMoney(business, amount)
            end
            
            registeredAccounts[business] = registeredAccounts[business] - amount 

            return registeredAccounts[business]
        end

        --- @param business string Name of business
        --- @param amount number Amount of money be added
        --- @return boolean
        SocietyService.AddMoney = function(business, amount)
            if isResourcePresentProvideless(Society.TGG_BANKING) and doesExportExistInResource(Society.TGG_BANKING, "AddSocietyMoney") then
                return exports[Society.TGG_BANKING]:AddSocietyMoney(business, amount)
            end

            if Config.Framework == Framework.ESX then
                local account = getESXSocietyAccount(business)
                
                if account then
                    account.addMoney(amount)
                    return true
                end
            end

            if doesExportExistInResource(Society.QB_MANAGEMENT, "AddMoney") then
                return exports[Society.QB_MANAGEMENT]:AddMoney(business, amount)
            end

            if doesExportExistInResource(Society.QB_BANKING, "AddMoney") then
                return exports[Society.QB_BANKING]:AddMoney(business, amount)
            end
            
            registeredAccounts[business] = registeredAccounts[business] + amount 

            return registeredAccounts[business]
        end

        
        --- @param business string Name of business
        --- @return boolean
        SocietyService.Register = function(business)
            if not registeredAccounts[business] then
                registeredAccounts[business] = 50 * 1000
            end

            dbg.debug("Business named %s was registered!", business)

            return true
        end

        SocietyService.StoreDepartmentVehicle = function(data, cb)
            local retval = false

            if not data then
                return
            end

            local account = SocietyService.GetAccount(data.department)

            if account and next(account) then
                account.AddMoney(data.spawnPrice)
                retval = true
            end

            cb(retval, data.spawnPrice)
        end

        SocietyService.BuyDepartmentVehicle = function(data, cb)
            local retval = false

            if not data then
                return
            end

            local account = SocietyService.GetAccount(data.department)

            if account and next(account) then
                local balance = account.GetBalance()

                if balance and balance >= data.spawnPrice then
                    retval = true
                end
            end

            cb(retval, data.spawnPrice)
        end

        SocietyService.GetAccount = function(businessName)
            local account = nil
            local accountBalance = SocietyService.GetMoney(businessName)
            
            if accountBalance and accountBalance >= 0 then
                account = {
                    AddMoney = function(amount) 
                        SocietyService.AddMoney(businessName, amount) 
                    end,
                    RemoveMoney = function(amount) 
                        SocietyService.RemoveMoney(businessName, amount) 
                    end,
                    GetBalance = function() 
                        return SocietyService.GetMoney(businessName)
                    end
                }
            else
                dbg.debug('Failed to get society account: %s', businessName)
            end
            
            dbg.debug('Returning society business: %s (named: %s)', account and "Account exists" or "Account is nil", businessName)
            
            return account
        end
    end
end)