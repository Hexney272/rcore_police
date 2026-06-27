local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:client:UpdateSpecificGroupData"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GroupsService
  L2_2 = L2_2.UpdateSpecificGroupData
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "OpenBossMenu"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = OpenBossMenuCustom
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
