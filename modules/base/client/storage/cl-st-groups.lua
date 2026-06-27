local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_2 = {}
  L0_2.storage = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = L0_2.storage
    L3_3 = L3_3[L2_3]
    if not L3_3 then
      L3_3 = L0_2.storage
      L3_3[L2_3] = A1_3
    end
    L3_3 = UpdateBossMenuData
    L4_3 = A1_3
    L3_3(L4_3)
    L3_3 = true
    return L3_3
  end
  L0_2.updateStorageSpecific = L1_2
  function L1_2(A0_3)
    local L1_3
    L1_3 = L0_2.storage
    L1_3 = L1_3[A0_3]
    return L1_3
  end
  L0_2.getStorageSpecificById = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L1_3 = L0_2.storage
    if L1_3 then
      L1_3 = next
      L2_3 = L0_2.storage
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_11
      end
    end
    L1_3 = nil
    do return L1_3 end
    ::lbl_11::
    L1_3 = pairs
    L2_3 = L0_2.storage
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.members
      if L7_3 then
        L7_3 = pairs
        L8_3 = L6_3.members
        L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
        for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
          L13_3 = L12_3.playerId
          if L13_3 == A0_3 then
            return L12_3
          end
        end
      end
    end
    L1_3 = nil
    return L1_3
  end
  L0_2.getCharacterDataByServerId = L1_2
  return L0_2
end
GroupsStorage = L0_1
L0_1 = Object
L0_1 = L0_1.registerStorage
L1_1 = STORAGE_GROUPS
L2_1 = GroupsStorage
L2_1 = L2_1()
L0_1(L1_1, L2_1)
