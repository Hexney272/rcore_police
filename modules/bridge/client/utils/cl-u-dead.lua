---@class DeadUtils
DeadUtils = {}

--- Determines if the ped (player/entity) should be considered "alive" and eligible to respawn.
--  Note: This function allows you to define your own logic for checking if the player is alive,
--  which may depend on your specific framework (like ESX, QBCore) or any custom scripts you use.
--  You can replace or extend the condition inside to match how your server handles player states.

---@param ped number|integer -- Entity ID of the ped (player)
---@return boolean
function DeadUtils.ShouldRespawn(ped)
    if isResourcePresentProvideless('p_ambulancejob') then
        return not IsPedStill(ped)
    elseif IS_QB[Config.Framework] then
        return GetEntityHealth(ped) > 150
    end

    return false
end

--- Checks if the ped (player/entity) should be processed as "dead".
--  Note: This function can be customized to define your own criteria for when a player is really dead,
--  allowing you to handle special cases or use different logic based on your server's framework or scripts.
--  Adjust the condition as needed to suit your own death-handling mechanics.

---@param ped number|integer -- Entity ID of the ped (player)
---@return boolean
function DeadUtils.ShouldProcessDead(ped)
    if IS_QB[Config.Framework] then
        return GetEntityHealth(ped) < 150
    end

    return false
end

function DeadUtils.IsTargetPlayerDead(targetPlayerId)
    if not targetPlayerId then
        return false, "Failure: Missing targetPlayerId!"
    end

    local player = Player(targetPlayerId)
    local playerState = player and player.state
    local ped = UtilsService.GetPlayerPedFromServerId(targetPlayerId)
    local playerIndex = ped and UtilsService.GetPlayerIndexFromPed(ped)
    local name = playerIndex and GetPlayerName(playerIndex) or "Unk name"

    local result = false
    local bestSource = "None"
    local bestWeight = 0

    local function evaluate(condition, source, weight)
        if condition and weight > bestWeight then
            result = true
            bestSource = source
            bestWeight = weight
        end
    end

    evaluate(playerState and playerState.rcorePoliceDead, "Statebag: rcorePoliceDead", 90)

    if ped and DoesEntityExist(ped) and IsEntityAPed(ped) then
        evaluate(IsEntityDead(ped), "Native: IsEntityDead", 100)
        evaluate(IsPedFatallyInjured(ped), "Native: IsPedFatallyInjured", 95)
        evaluate(UtilsService.WasPedDeadRecently(ped) and Config.Framework ~= Framework.QBOX, "Native: GetPedTimeOfDeath", 80)
        evaluate(IsPedRagdoll(ped), "Native: IsPedRagdoll", 50)
        evaluate(IsEntityPlayingAnim(ped, "combat@damage@writhe", "writhe_loop", 3), "Animation: Last stand (qb-ambulance)", 85)
        evaluate(IsEntityPlayingAnim(ped, "dead", "dead_a", 3), "Animation: Dead (qb-ambulance)", 90)
    end

    evaluate(playerState and (playerState.isDead or playerState.down), "Statebag: isDead or down", 85)
    evaluate(Config.SkipDeathCheck, "Enforced via Config.SkipDeathCheck", 200)

    dbg.info("[Dead system]: Result for %s (%s): %s (%s)", name, targetPlayerId, result, bestSource)

    return result, bestSource
end

RegisterCommand("rcore_police_self_dead", function()
    local retval, deadSource = DeadUtils.IsTargetPlayerDead(MyServerId)
    local ambulanceJob = FindTargetResource("ambulance") or "Failed to detect any ambulance"
    local output = ([[
^3============================================================^7
^3[Running dead check]^7
------------------------------------------------------------
 - Dead check result: ^5%s^7
 - Dead check source: ^5%s^7
 - Current ambulance job: ^5%s^7
^3============================================================^7
]]):format(tostring(retval), tostring(deadSource), tostring(ambulanceJob))
    print(output)
end, false)
