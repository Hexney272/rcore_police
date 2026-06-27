local L0_1, L1_1
L0_1 = {}
InteractionService = L0_1
L0_1 = InteractionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_INTERACTIONS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = "Client storage is not available"
    return L2_2(L3_2)
  end
  L2_2 = L1_2.updateStorage
  L3_2 = A0_2
  L2_2(L3_2)
end
L0_1.updateStorage = L1_1
L0_1 = InteractionService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    return
  end
  if not A2_2 then
    return
  end
  L3_2 = Object
  L3_2 = L3_2.getStorage
  L4_2 = STORAGE_INTERACTIONS
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = dbg
    L4_2 = L4_2.critical
    L5_2 = "Client storage is not available"
    return L4_2(L5_2)
  end
  L4_2 = L3_2.updateStorageSpecific
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.updateStorageSpecific = L1_1
L0_1 = InteractionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    A0_2 = MyServerId
  end
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_INTERACTIONS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.isPlayerZiptied
  L3_2 = playerId
  return L2_2(L3_2)
end
L0_1.isPlayerZiptied = L1_1
L0_1 = InteractionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    A0_2 = MyServerId
  end
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_INTERACTIONS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.isCuffed
  L3_2 = A0_2
  return L2_2(L3_2)
end
L0_1.isCuffed = L1_1
L0_1 = InteractionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    A0_2 = MyServerId
  end
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_INTERACTIONS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.isEscorted
  L3_2 = A0_2
  return L2_2(L3_2)
end
L0_1.isEscorted = L1_1
