CreateThread(function()
    if Config.Prison == Prison.NONE then
        SentPlayerToCOMS = function(target)
            if not target then
                return
            end

            local hasComs = false
            local retval = {}

            if isResourcePresentProvideless(Prison.ESX_COMS) then
                hasComs = true
            end

            if not hasComs then
                return
            end

            retval = UI.Input(_U('INPUT_JAIL_PLAYER.HEADER'), {
                {
                    label = _U("PLAYER_NAME_INPUT"),
                    placeholder = getPlayerLabelByShowMode(target),
                    type = "input",
                    disabled = true
                },
                {
                    label = _U('INPUT_JAIL_PLAYER.JAIL_TIME_LABEL'),
                    placeholder = "",
                    type = "number",
                    required = true
                },
            })

            if not retval then return end

            local time = retval[tostring(1)]

            if isResourcePresentProvideless(Prison.ESX_COMS) then
                TriggerServerEvent('esx_communityservice:sendToCommunityService', target, time)
            end
        end
        
        --- @param target number Target playerId
        --- @return boolean 
        SentPlayerToPrison = function(target)
            if not target then
                return
            end

            local retval = UI.Input(_U('INPUT_JAIL_PLAYER.HEADER'), {
                {
                    label = _U("PLAYER_NAME_INPUT"),
                    placeholder = getPlayerLabelByShowMode(target),
                    type = "input",
                    disabled = true
                },
                {
                    label = _U('INPUT_JAIL_PLAYER.JAIL_TIME_LABEL'),
                    placeholder = "",
                    type = "number",
                    required = true
                },
                {
                    label = _U('INPUT_JAIL_PLAYER.REASON_LABEL'),
                    placeholder = "",
                    type = "textarea",
                },
            })

            if not retval then return end

            local time = retval[tostring(1)]
            local jailReason = retval[tostring(2)]

            if isResourceLoaded(Prison.QALLE) then
                dbg.debug('SentPlayerToPrison: Sending player with playerId %s for jailTime %s', target, time)     
                TriggerServerEvent('esx-qalle-jail:jailPlayer', target, time, jailReason)
            else
                dbg.critical('SentPlayerToPrison: Failed to sent anybody since running standalone bridge!')
            end
        end
    end
end)

