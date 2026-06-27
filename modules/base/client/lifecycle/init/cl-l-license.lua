local L0_1, L1_1, L2_1
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "ShowPlayerLicense"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = safeCallFunction
    L3_2 = ShowPlayerLicense
    L4_2 = "SHOW_PLAYER_LICENSE"
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
