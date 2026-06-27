CreateThread(function()
    ---@type table<string, boolean>
    local LicenseList = {
        ["business"] = true,
        ["weapon"] = true,
        ["driver"] = true,
    }

    if Config.Licence == Licence.QBCORE then

        ---------------------------------------------------------
        -- GetPlayerLicenses: Returns all licenses a player owns
        ---------------------------------------------------------
        ---@param target number
        ---@return table<string, boolean>
        GetPlayerLicenses = function(target)
            if not target then return {} end

            local player = Framework.getPlayer(target)
            if not player then return {} end

            return player.PlayerData.metadata['licences']
        end

        ---------------------------------------------------------
        -- HasWeaponLicense: Checks if the player has a weapon license
        ---------------------------------------------------------
        ---@param target number
        ---@return boolean
        HasWeaponLicense = function(target)
            local playerLicenses = GetPlayerLicenses(target)
            local retval = false

            if playerLicenses and next(playerLicenses) and playerLicenses['weapon'] then
                retval = true
            end

            return retval
        end

        ---------------------------------------------------------
        -- ShowPlayerLicense: Sends all player's licenses to another player to view
        ---------------------------------------------------------
        ---@param target number -- The player whose licenses will be shown
        ---@param playerId number -- The player who will see the licenses
        ShowPlayerLicense = function(target, playerId)
            if not target or not playerId then return end

            local licenses = GetPlayerLicenses(target)

            if licenses and next(licenses) then
                StartClient(playerId, 'ShowPlayerLicense', licenses)
            end
        end

        ---------------------------------------------------------
        -- AddPlayerLicense: Adds a specific license to a player
        ---------------------------------------------------------
        ---@param initiator number -- Who is giving the license
        ---@param target number -- Who is receiving the license
        ---@param name string -- The name of the license to give
        ---@return boolean | nil
        AddPlayerLicense = function(initiator, target, name)
            if not initiator or not target or not name then return end

            name = name:lower()

            if not LicenseList[name] then
                Framework.sendNotification(initiator, _U("HELP_MESSAGES.NO_VALID_LICENCE", name), "error")
                return false
            end

            local currentLicenses = GetPlayerLicenses(target)

            if currentLicenses and next(currentLicenses) and not currentLicenses[name] then
                local Player = Framework.getPlayer(target)
                local storedLicenses = currentLicenses

                if Player then
                    storedLicenses[name] = true
                    Player.Functions.SetMetaData('licences', storedLicenses)
                    Framework.sendNotification(target, _U('LICENSES.RECEIVED_LICENSE', name, 'success'))
                end
            else
                Framework.sendNotification(initiator, _U('LICENSES.YOU_ALREADY_HAVE_LICENSE', name, 'error'))
            end
        end

        ---------------------------------------------------------
        -- RemovePlayerLicense: Removes a specific license from a player
        ---------------------------------------------------------
        ---@param initiator number -- Who is removing the license
        ---@param target number -- Who is losing the license
        ---@param name string -- The name of the license to remove
        RemovePlayerLicense = function(initiator, target, name)
            if not initiator or not target or not name then return end

            name = name:lower()

            if not LicenseList[name] then return end

            local currentLicenses = GetPlayerLicenses(target)

            if currentLicenses and next(currentLicenses) and currentLicenses[name] then
                local Player = Framework.getPlayer(target)
                local storedLicenses = currentLicenses

                if Player then
                    storedLicenses[name] = false
                    Player.Functions.SetMetaData('licences', storedLicenses)
                    Framework.sendNotification(Player.PlayerData.source, _U('LICENSES.CONFISCATED', name, 'success'))
                end
            else
                Framework.sendNotification(initiator, _U('LICENSES.YOU_DONT_HAVE_LICENSE', name, 'error'))
            end
        end
    end
end)
