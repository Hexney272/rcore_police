local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L0_2.storage = L1_2
  L1_2 = RegisterCommand
  L2_2 = "svStorage"
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
    if not A0_3 then
      return
    end
    L1_3 = L0_2.storage
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      return
    end
    L1_3 = L0_2.storage
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L1_3[L2_3] = nil
    L1_3 = dbg
    L1_3 = L1_3.debug
    L2_3 = "Cleared player interaction storage: %s (%s)"
    L3_3 = A0_3
    L4_3 = GetPlayerName
    L5_3 = A0_3
    L4_3, L5_3 = L4_3(L5_3)
    L1_3(L2_3, L3_3, L4_3, L5_3)
    L1_3 = L0_2.syncStorageSpecific
    L2_3 = tostring
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    L3_3 = nil
    L4_3 = nil
    L1_3(L2_3, L3_3, L4_3)
  end
  L0_2.clearPlayerStorage = L1_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = StartClient
    L4_3 = -1
    L5_3 = "syncSpecificStorage"
    L6_3 = A0_3
    L7_3 = A1_3
    L8_3 = A2_3
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L0_2.syncStorageSpecific = L1_2
  function L1_2()
    local L0_3, L1_3
  end
  L0_2.syncToAllPLayers = L1_2
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
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
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
      L2_3 = TriggerLocalServerEvent
      L3_3 = "onState"
      L4_3 = "hasState"
      L5_3 = A1_3
      L6_3 = A0_3
      L2_3(L3_3, L4_3, L5_3, L6_3)
      L2_3 = true
      L3_3 = L0_2.storage
      L4_3 = tostring
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3[A1_3]
      return L2_3, L3_3
    else
      L2_3 = false
      return L2_3
    end
  end
  L0_2.hasState = L1_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if not A0_3 then
      return
    end
    L3_3 = L0_2.storage
    L4_3 = tostring
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    if not L3_3 then
      L3_3 = L0_2.storage
      L4_3 = tostring
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L5_3 = {}
      L3_3[L4_3] = L5_3
    end
    L3_3 = dbg
    L3_3 = L3_3.debug
    L4_3 = "Adding player %s to storage with action: %s"
    L5_3 = A0_3
    L6_3 = A1_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = {}
    if A2_3 then
      L4_3 = {}
      L4_3.type = A2_3
      L3_3 = L4_3
    end
    L4_3 = TriggerLocalServerEvent
    L5_3 = "onState"
    L6_3 = "add"
    L7_3 = A1_3
    L8_3 = A0_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = L0_2.storage
    L5_3 = tostring
    L6_3 = A0_3
    L5_3 = L5_3(L6_3)
    L4_3 = L4_3[L5_3]
    L4_3[A1_3] = L3_3
    L4_3 = L0_2.syncStorageSpecific
    L5_3 = tostring
    L6_3 = A0_3
    L5_3 = L5_3(L6_3)
    L6_3 = L3_3
    L7_3 = A1_3
    L4_3(L5_3, L6_3, L7_3)
  end
  L0_2.addState = L1_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if not A0_3 then
      return
    end
    L2_3 = L0_2.storage
    L3_3 = tostring
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3[L3_3]
    if not L2_3 then
      return
    end
    L2_3 = L0_2.storage
    L3_3 = tostring
    L4_3 = A0_3
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3[L3_3]
    L2_3 = L2_3[A1_3]
    if not L2_3 then
      return
    end
    L2_3 = table
    L2_3 = L2_3.size
    L3_3 = L0_2.storage
    L4_3 = tostring
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    L2_3 = L2_3(L3_3)
    L3_3 = TriggerLocalServerEvent
    L4_3 = "onState"
    L5_3 = "remove"
    L6_3 = A1_3
    L7_3 = A0_3
    L3_3(L4_3, L5_3, L6_3, L7_3)
    L3_3 = dbg
    L3_3 = L3_3.debug
    L4_3 = "Removing player %s from storage with action: %s"
    L5_3 = A0_3
    L6_3 = A1_3
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = L0_2.storage
    L4_3 = tostring
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    L3_3[A1_3] = nil
    if L2_3 <= 1 then
      L3_3 = L0_2.storage
      L4_3 = tostring
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L3_3[L4_3] = nil
    end
    L3_3 = L0_2.syncStorageSpecific
    L4_3 = tostring
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L5_3 = nil
    L6_3 = A1_3
    L3_3(L4_3, L5_3, L6_3)
  end
  L0_2.removeState = L1_2
  function L1_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if not A0_3 then
      return
    end
    L3_3 = L0_2.storage
    L4_3 = tostring
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3[L4_3]
    if not L3_3 then
      return
    end
    L3_3 = {}
    if A2_3 then
      L4_3 = {}
      L4_3.type = A2_3
      L3_3 = L4_3
    end
    L4_3 = TriggerLocalServerEvent
    L5_3 = "onState"
    L6_3 = "update"
    L7_3 = A1_3
    L8_3 = A0_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
    L4_3 = dbg
    L4_3 = L4_3.debug
    L5_3 = "Registering player %s in storage with action: %s"
    L6_3 = A0_3
    L7_3 = A1_3
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = L0_2.storage
    L5_3 = tostring
    L6_3 = A0_3
    L5_3 = L5_3(L6_3)
    L4_3 = L4_3[L5_3]
    L4_3[A1_3] = L3_3
    L4_3 = L0_2.syncStorageSpecific
    L5_3 = tostring
    L6_3 = A0_3
    L5_3 = L5_3(L6_3)
    L6_3 = L3_3
    L7_3 = A1_3
    L4_3(L5_3, L6_3, L7_3)
  end
  L0_2.updateState = L1_2
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
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3
    if not A0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.hasState
    L2_3 = A0_3
    L3_3 = "PAPERBAG_STATE"
    return L1_3(L2_3, L3_3)
  end
  L0_2.isHeadBagged = L1_2
  return L0_2
end
InteractionStorage = L0_1
L0_1 = Object
L0_1 = L0_1.registerStorage
L1_1 = STORAGE_INTERACTIONS
L2_1 = InteractionStorage
L2_1 = L2_1()
L0_1(L1_1, L2_1)
