local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L0_2.storage = L1_2
  L1_2 = RegisterCommand
  L2_2 = "clStorage"
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
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if not A0_3 then
      L2_3 = false
      return L2_3
    end
    if not A1_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = L0_2.storage
    L3_3 = tostring
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3[L3_3]
    if not L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = L0_2.storage
    L3_3 = tostring
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3[A1_3]
    if not L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = L0_2.storage
    L3_3 = tostring
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3[A1_3]
    if L2_3 then
      L2_3 = true
      return L2_3
    else
      L2_3 = false
      return L2_3
    end
  end
  L0_2.hasState = L1_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = tostring
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L4_3 = L0_2.storage
    L4_3 = L4_3[L3_3]
    if not L4_3 then
      L4_3 = L0_2.storage
      L5_3 = {}
      L4_3[L3_3] = L5_3
    end
    L4_3 = {}
    if A1_3 then
      L4_3 = A1_3
      L5_3 = L0_2.storage
      L5_3 = L5_3[L3_3]
      L5_3[A2_3] = L4_3
    elseif not A1_3 then
      L5_3 = L0_2.storage
      L5_3 = L5_3[L3_3]
      L5_3[A2_3] = nil
    end
  end
  L0_2.updateStorageSpecific = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.storage = A0_3
    L1_3 = IsInDev
    if L1_3 then
    end
  end
  L0_2.updateStorage = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.storage
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.storage
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.CUFF_STATE
    if not L1_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.storage
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.CUFF_STATE
    if L1_3 then
      L2_3 = L1_3.type
      if "ziptie" == L2_3 then
        L2_3 = true
        return L2_3
      end
    end
  end
  L0_2.isPlayerZiptied = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.hasState
    L2_3 = A0_3
    L3_3 = "CUFF_STATE"
    return L1_3(L2_3, L3_3)
  end
  L0_2.isCuffed = L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.hasState
    L2_3 = A0_3
    L3_3 = "ESCORT_STATE"
    return L1_3(L2_3, L3_3)
  end
  L0_2.isEscorted = L1_2
  return L0_2
end
InteractionStorage = L0_1
L0_1 = Object
L0_1 = L0_1.registerStorage
L1_1 = STORAGE_INTERACTIONS
L2_1 = InteractionStorage
L2_1 = L2_1()
L0_1(L1_1, L2_1)
