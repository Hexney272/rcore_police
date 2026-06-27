local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestBossMenu"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = GroupsService
  L1_2 = L1_2.IsPlayerMemberOfGroup
  L2_2 = L0_2
  L1_2, L2_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  if not L2_2 then
    return
  end
  L3_2 = GroupsService
  L3_2 = L3_2.GetGlobalStateData
  L4_2 = L2_2.group
  L3_2 = L3_2(L4_2)
  L4_2 = StartClient
  L5_2 = L0_2
  L6_2 = "OpenBossMenu"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestBossMenuAction"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  if not L1_2 then
    return
  end
  L2_2 = HandleBossMenuAction
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
