local L0_1, L1_1, L2_1, L3_1
L0_1 = 0
L1_1 = RegisterNetEvent
L2_1 = "police:SetCopCount"
function L3_1(A0_2)
  local L1_2
  L0_1 = A0_2
end
L1_1(L2_1, L3_1)
L1_1 = GroupsService
function L2_1()
  local L0_2, L1_2
  L0_2 = "rcore_police_departments_count"
  L1_2 = L0_1
  if L1_2 <= 0 then
    L1_2 = GlobalState
    L1_2 = L1_2[L0_2]
    L0_1 = L1_2
  end
  L1_2 = L0_1
  return L1_2
end
L1_1.GetAllDeparmentsCount = L2_1
L1_1 = GroupsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = "Client storage is not available"
    return L2_2(L3_2)
  end
  L2_2 = L1_2.getCharacterDataByServerId
  L3_2 = A0_2
  return L2_2(L3_2)
end
L1_1.GetCharacterDataByServerId = L2_1
L1_1 = GroupsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = "Client storage is not available"
    return L2_2(L3_2)
  end
  L2_2 = L1_2.getStorageSpecificById
  L3_2 = A0_2
  return L2_2(L3_2)
end
L1_1.GetStorageSpecificById = L2_1
L1_1 = GroupsService
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Object
  L2_2 = L2_2.getStorage
  L3_2 = STORAGE_GROUPS
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = dbg
    L3_2 = L3_2.critical
    L4_2 = "Client storage is not available"
    return L3_2(L4_2)
  end
  L3_2 = L2_2.updateStorageSpecific
  L4_2 = A0_2
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L1_1.UpdateSpecificGroupData = L2_1
