CreateThread(function()
    if Config.Prison == Prison.QB_PRISON then
        --- Handles prison request event.
        ---@param target number     -- Target player (to send to prison)
        ---@param time number       -- Prison time in minutes
        RegisterNetEvent('rcore_police:server:requestPrison', function(target, time)
            local playerId = source

            --- Check if player has permission via group membership
            local state, playerData = GroupsService.IsPlayerMemberOfGroup(playerId)
            if not state then return end

            if not target or not time then return end

            local targetPed = GetPlayerPed(playerId)
            if not DoesEntityExist(targetPed) then return end

            --- Check if the target player is close enough
            if not Utils.IsPlayerNearAnotherPlayer(playerId, target, Config.CheckDistance) then
                Framework.sendNotification(playerId, _U("NO_CITIZEN_NEARBY"), "error")
                return
            end

            local TargetPlayer = Framework.getPlayer(target)
            if not TargetPlayer then return end

            ---@type table<string, number>
            local currentDate = os.date('*t')

            -- Simple edge case fix for date overflow
            if currentDate.day == 31 then
                currentDate.day = 30
            end

            -- Set metadata for jail status and criminal record
            TargetPlayer.Functions.SetMetaData('injail', time)
            TargetPlayer.Functions.SetMetaData('criminalrecord', {
                hasRecord = true,
                date = currentDate
            })

            TriggerClientEvent(Config.Events['QBCore:Client:OnPlayerLoaded'], target)
        end)
    end
end)
