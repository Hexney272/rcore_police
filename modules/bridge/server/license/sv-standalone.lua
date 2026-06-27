CreateThread(function()
    if Config.Licence == Licence.NONE then
        --- @param target any
        --- @return table|nil
        GetPlayerLicenses = function(target)
            return nil
        end

        --- @param target any
        --- @return boolean
        HasWeaponLicense = function(target)
            return true
        end

        --- @param target any
        --- @param playerId number|string
        ShowPlayerLicense = function(target, playerId)
            if not target then
                return
            end

            if not playerId then
                return
            end

            --- @type table|nil
            local licenses = GetPlayerLicenses(target)

            if licenses and next(licenses) then
                StartClient(playerId, 'ShowPlayerLicense', licenses)
            end
        end

        --- @param initiator any
        --- @param target any
        --- @param name string
        AddPlayerLicense = function(initiator, target, name)
            if not initiator then
                return
            end

            if not target then
                return
            end

            if not name then
                return
            end

            name = name:lower()

            dbg.debug('AddPlayerLicense: Using resource %s - bridge - the function is not defined!!!', Config.Licence)
        end

        --- @param initiator any
        --- @param target any
        --- @param name string
        RemovePlayerLicense = function(initiator, target, name)
            if not initiator then
                return
            end

            if not target then
                return
            end

            if not name then
                return
            end

            name = name:lower()

            dbg.debug('RemovePlayerLicense: Using resource %s - bridge - the function is not defined!!!', Config.Licence)
        end
    end
end)
