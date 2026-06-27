CreateThread(function()
    if Config.Licence == Licence.CODESTUDIO then

        ---@param target number | nil
        ---@return table
        GetPlayerLicenses = function(target)
            if not target then
                return {}
            end

            ---@type string
            local identifier = Framework.getIdentifier(target)

            ---@type table
            local playerLicenses = {}

            if doesExportExistInResource(Licence.CODESTUDIO, 'GetPlayerLicenses') then
                playerLicenses = exports[Licence.CODESTUDIO]:GetPlayerLicenses(identifier)
            end

            return playerLicenses
        end

        ---@param target number | nil
        ---@return boolean
        HasWeaponLicense = function(target)
            -- Fallback: always return true
            return true
        end

        ---@param target number | nil
        ---@param playerId number | nil
        ShowPlayerLicense = function(target, playerId)
            if not target or not playerId then
                return
            end

            local licenses = GetPlayerLicenses(target)

            if licenses and next(licenses) then
                StartClient(playerId, 'ShowPlayerLicense', licenses)
            end
        end

        ---@param initiator number | nil
        ---@param target number | nil
        ---@param name string | nil
        AddPlayerLicense = function(initiator, target, name)
            if not initiator or not target or not name then
                return
            end

            name = name:lower()

            local currentLicenses = GetPlayerLicenses(target)

            if currentLicenses and currentLicenses[name] then
                Framework.sendNotification(initiator, _U('LICENSES.YOU_ALREADY_HAVE_LICENSE', name), "error")
                return false
            end


            exports['cs_license']:RegisterCard(target, name)

            dbg.debug('AddPlayerLicense: Using resource %s - bridge - the function is not defined!!!', Config.Licence)
        end

        ---@param initiator number | nil
        ---@param target number | nil
        ---@param name string | nil
        RemovePlayerLicense = function(initiator, target, name)
            if not initiator or not target or not name then
                return
            end

            name = name:lower()

            local currentLicenses = GetPlayerLicenses(target)
            
            if currentLicenses and not currentLicenses[name] then
                Framework.sendNotification(initiator, _U('LICENSES.YOU_DONT_HAVE_LICENSE', name), "error")
                return false
            end

            exports['cs_license']:RevokeCard(target, name)

            dbg.debug('RemovePlayerLicense: Using resource %s - bridge - the function is not defined!!!', Config.Licence)
        end
    end
end)
