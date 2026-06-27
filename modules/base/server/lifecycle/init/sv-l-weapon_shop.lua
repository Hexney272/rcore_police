local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestBuyItemFromDepartmentStore"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Player %s requested transaction for department store!"
  L4_2 = GetPlayerName
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = Config
  L2_2 = L2_2.Debug
  if L2_2 then
    L2_2 = tprint
    L3_2 = A0_2
    L2_2(L3_2)
  end
  if not A0_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Buy item from department store: Not received any data"
    return L2_2(L3_2)
  end
  L2_2 = A0_2.zone
  L3_2 = UtilsService
  L3_2 = L3_2.IsPlayerAtInteract
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.critical
    L4_2 = "Buy item from department store: Player is not at store interact"
    return L3_2(L4_2)
  end
  L3_2 = GroupsService
  L3_2 = L3_2.IsPlayerMemberOfGroup
  L4_2 = L1_2
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 then
    L5_2 = dbg
    L5_2 = L5_2.critical
    L6_2 = "Buy item from department store: Player is not part of department to access this store!"
    return L5_2(L6_2)
  end
  L5_2 = RequestGetItemFromStore
  L6_2 = L1_2
  L7_2 = A0_2.item
  L8_2 = A0_2.paymentMethod
  L9_2 = A0_2.amount
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1(L1_1, L2_1)
