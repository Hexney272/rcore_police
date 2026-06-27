local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L0_2.storage = L1_2
  L1_2 = RegisterCommand
  L2_2 = "svGarageStorage"
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = L0_2.storage
    if L1_3 then
      L1_3 = next
      L2_3 = L0_2.storage
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = tprint
        L2_3 = L0_2.storage
        L1_3(L2_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = "%s_%s_%s"
    L2_3 = L1_3
    L1_3 = L1_3.format
    L3_3 = GetCurrentResourceName
    L3_3 = L3_3()
    L4_3 = A0_3
    L5_3 = "garage"
    return L1_3(L2_3, L3_3, L4_3, L5_3)
  end
  L0_2.getKVPKey = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = L0_2.getKVPKey
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if L2_3 then
      L3_3 = SetResourceKvpInt
      L4_3 = L2_3
      L5_3 = A1_3
      L3_3(L4_3, L5_3)
    else
      L3_3 = dbg
      L3_3 = L3_3.critical
      L4_3 = "Storage for garage, failed to sync since key doesnt exist for job: %s"
      L5_3 = A0_3
      L3_3(L4_3, L5_3)
    end
  end
  L0_2.syncKVP = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L0_2.getKVPKey
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = GetResourceKvpInt
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = "UNDEFINED_KVP"
    if L2_3 > 0 then
      L3_3 = "DEFINED_KVP"
    else
      L2_3 = 0
    end
    L4_3 = L2_3
    L5_3 = L3_3
    return L4_3, L5_3
  end
  L0_2.getAmountFromKVP = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = pairs
    L1_3 = Config
    L1_3 = L1_3.JobGroups
    L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
    for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
      L6_3 = L0_2.getAmountFromKVP
      L7_3 = L4_3
      L6_3, L7_3 = L6_3(L7_3)
      if L7_3 then
        L8_3 = dbg
        L8_3 = L8_3.debug
        L9_3 = "Garage register for group %s status code: %s"
        L10_3 = L4_3
        L11_3 = L7_3
        L8_3(L9_3, L10_3, L11_3)
      end
      L8_3 = L0_2.storage
      L8_3[L4_3] = L6_3
    end
  end
  L0_2.registerStorage = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = L0_2.storage
    L2_3 = L2_3[A0_3]
    if not L2_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Storage for job %s doesnt exist, failed to add vehicle count"
      L4_3 = A0_3
      return L2_3(L3_3, L4_3)
    end
    L2_3 = L0_2.storage
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3 + A1_3
    L3_3 = dbg
    L3_3 = L3_3.debug
    L4_3 = "Garage storage: Add vehicle count for job %s with new amount: %s"
    L5_3 = A0_3
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = L0_2.storage
    L3_3[A0_3] = L2_3
    L3_3 = L0_2.syncKVP
    L4_3 = A0_3
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = GroupsService
    L3_3 = L3_3.UpdateGlobalState
    L4_3 = A0_3
    L3_3(L4_3)
  end
  L0_2.addVehicleCount = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = L0_2.storage
    L2_3 = L2_3[A0_3]
    if not L2_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Storage for job %s doesnt exist, failed to remove vehicle count"
      L4_3 = A0_3
      return L2_3(L3_3, L4_3)
    end
    L2_3 = L0_2.storage
    L2_3 = L2_3[A0_3]
    L2_3 = L2_3 - A1_3
    L3_3 = dbg
    L3_3 = L3_3.debug
    L4_3 = "Garage storage: Removing vehicle count for job %s with new amount: %s"
    L5_3 = A0_3
    L6_3 = L2_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = L0_2.storage
    L3_3[A0_3] = L2_3
    L3_3 = L0_2.syncKVP
    L4_3 = A0_3
    L5_3 = L2_3
    L3_3(L4_3, L5_3)
    L3_3 = GroupsService
    L3_3 = L3_3.UpdateGlobalState
    L4_3 = A0_3
    L3_3(L4_3)
  end
  L0_2.removeVehicleCount = L1_2
  function L1_2(A0_3)
    local L1_3
    if not A0_3 then
      L1_3 = 0
      return L1_3
    end
    L1_3 = L0_2.storage
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L1_3 = 0
      return L1_3
    end
    L1_3 = L0_2.storage
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L1_3 = 0
    end
    return L1_3
  end
  L0_2.getVehicleCount = L1_2
  return L0_2
end
GarageStorage = L0_1
L0_1 = Object
L0_1 = L0_1.registerStorage
L1_1 = STORAGE_GARAGE
L2_1 = GarageStorage
L2_1 = L2_1()
L0_1(L1_1, L2_1)
