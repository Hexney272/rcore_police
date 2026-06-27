local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestDuty"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = UtilsService
  L2_2 = L2_2.IsPlayerAtInteract
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Failed to set duty for player named %s with playerId (%s), player not at request zone area."
    L4_2 = GetPlayerName
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = L1_2
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Failed to set duty for player named %s with playerId (%s), player is not part of department."
    L6_2 = GetPlayerName
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L7_2 = L1_2
    return L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = DutyService
  L4_2 = L4_2.HandlePlayerDuty
  L5_2 = L1_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
