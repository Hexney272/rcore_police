local L0_1, L1_1
L0_1 = {}
ActionService = L0_1
L0_1 = ActionService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L3_2 = nil
  L4_2 = IsInDev
  if L4_2 then
    L3_2 = A0_2
  else
    if A1_2 then
      L3_2 = A1_2
    else
      L4_2 = Utils
      L4_2 = L4_2.getClosestPlayers
      L5_2 = L2_2
      L6_2 = Config
      L6_2 = L6_2.CheckDistance
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
    if -1 == L3_2 then
      L4_2 = Framework
      L4_2 = L4_2.sendNotification
      L5_2 = L2_2
      L6_2 = _U
      L7_2 = "NO_CITIZEN_NEARBY"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = false
      L5_2 = "TARGET_PLAYER_NOT_FOUND"
      return L4_2, L5_2
    end
    if L2_2 == L3_2 then
      L4_2 = dbg
      L4_2 = L4_2.debug
      L5_2 = "SearchInventory: You cannot request search player inventory for yourself!"
      L4_2(L5_2)
      L4_2 = false
      L5_2 = "PLAYER_EQUAL_TARGET"
      return L4_2, L5_2
    end
  end
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = Config
  L7_2 = L7_2.CheckDistance
  L7_2 = L7_2 + 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = L2_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L4_2, L5_2
  end
  L4_2 = {}
  L5_2 = Config
  L5_2 = L5_2.Inventory
  L6_2 = Inventory
  L6_2 = L6_2.ESX
  if L5_2 == L6_2 then
    L5_2 = InventoryService
    L5_2 = L5_2.getFullInventory
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = Framework
  L5_2 = L5_2.sendNotification
  L6_2 = A0_2
  L7_2 = _U
  L8_2 = "OFFICER_SEARCH"
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Framework
  L5_2 = L5_2.sendNotification
  L6_2 = L3_2
  L7_2 = _U
  L8_2 = "SEARCH_TARGET"
  L7_2 = L7_2(L8_2)
  L8_2 = "success"
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = StartClient
  L6_2 = L2_2
  L7_2 = "SearchPlayer"
  L8_2 = L3_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.SearchPlayer = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  if A1_2 then
    L2_2 = A1_2
  else
    L3_2 = Utils
    L3_2 = L3_2.getClosestPlayers
    L4_2 = A0_2
    L5_2 = Config
    L5_2 = L5_2.CheckDistance
    L5_2 = L5_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if -1 == L2_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "NO_CITIZEN_NEARBY"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = false
    L4_2 = "TARGET_PLAYER_NOT_FOUND"
    return L3_2, L4_2
  end
  if A0_2 == L2_2 then
    L3_2 = false
    L4_2 = "PLAYER_EQUAL_TARGET"
    return L3_2, L4_2
  end
  L3_2 = Utils
  L3_2 = L3_2.IsPlayerNearAnotherPlayer
  L4_2 = A0_2
  L5_2 = L2_2
  L6_2 = Config
  L6_2 = L6_2.CheckDistance
  L6_2 = L6_2 + 0.5
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "NO_CITIZEN_NEARBY"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = false
    L4_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L3_2, L4_2
  end
  if A0_2 then
    L3_2 = type
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if "number" == L3_2 then
      L3_2 = GetPlayerPed
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = GetVehiclePedIsIn
      L5_2 = L3_2
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L5_2 = DoesEntityExist
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L5_2 = false
          L6_2 = "INITATOR_TRIED_ACTION_FROM_VEHICLE"
          return L5_2, L6_2
        end
      end
    end
  end
  L3_2 = InteractionService
  L3_2 = L3_2.removeState
  L4_2 = L2_2
  L5_2 = "ESCORT_STATE"
  L3_2(L4_2, L5_2)
  L3_2 = InteractionService
  L3_2 = L3_2.removeState
  L4_2 = A0_2
  L5_2 = "ESCORT_STATE"
  L3_2(L4_2, L5_2)
  L3_2 = StartClient
  L4_2 = L2_2
  L5_2 = "FromVehicle"
  L6_2 = A0_2
  L7_2 = {}
  L8_2 = DeathService
  L8_2 = L8_2.GetPlayerState
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L7_2.initiatorDeath = L8_2
  L8_2 = DeathService
  L8_2 = L8_2.GetPlayerState
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L7_2.targetDeath = L8_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.TakePlayerFromVehicle = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = nil
  if A1_2 then
    L3_2 = A1_2
  else
    L4_2 = Utils
    L4_2 = L4_2.getClosestPlayers
    L5_2 = A0_2
    L6_2 = Config
    L6_2 = L6_2.CheckDistance
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if -1 == L3_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "TARGET_PLAYER_NOT_FOUND"
    return L4_2, L5_2
  end
  if A0_2 == L3_2 then
    L4_2 = false
    L5_2 = "PLAYER_EQUAL_TARGET"
    return L4_2, L5_2
  end
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = A0_2
  L6_2 = L3_2
  L7_2 = Config
  L7_2 = L7_2.CheckDistance
  L7_2 = L7_2 + 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L4_2, L5_2
  end
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetVehiclePedIsIn
  L6_2 = L4_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and L5_2 > 0 then
    L6_2 = false
    L7_2 = "INITATOR_TRIED_ACTION_FROM_VEHICLE"
    return L6_2, L7_2
  end
  L6_2 = Config
  L6_2 = L6_2.Flags
  L6_2 = L6_2.CuffsRequiredForTransport
  if not L6_2 then
    L6_2 = PutInVehicle
    L7_2 = A0_2
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    return
  end
  L6_2 = type
  L7_2 = DeathService
  L7_2 = L7_2.GetPlayerState
  L6_2 = L6_2(L7_2)
  if "nil" ~= L6_2 then
    L6_2 = DeathService
    L6_2 = L6_2.GetPlayerState
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = PutInVehicle
      L7_2 = A0_2
      L8_2 = L3_2
      L6_2(L7_2, L8_2)
      return
    end
  end
  if A2_2 then
    L6_2 = PutInVehicle
    L7_2 = A0_2
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
    return
  else
    if not A2_2 then
      L6_2 = InteractionService
      L6_2 = L6_2.isCuffed
      L7_2 = L3_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = Framework
        L6_2 = L6_2.sendNotification
        L7_2 = A0_2
        L8_2 = _U
        L9_2 = "CITIZEN_MUST_CUFFED"
        L8_2 = L8_2(L9_2)
        L9_2 = "error"
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = false
        L7_2 = "TARGET_NEEDS_TO_BE_CUFFED"
        return L6_2, L7_2
      end
    end
    L6_2 = PutInVehicle
    L7_2 = A0_2
    L8_2 = L3_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.PutPlayerInVehicle = L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = InteractionService
  L3_2 = L3_2.isEscorted
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = InteractionService
    L3_2 = L3_2.removeState
    L4_2 = A1_2
    L5_2 = "ESCORT_STATE"
    L3_2(L4_2, L5_2)
  end
  L3_2 = InteractionService
  L3_2 = L3_2.isEscorted
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = InteractionService
    L3_2 = L3_2.removeState
    L4_2 = A0_2
    L5_2 = "ESCORT_STATE"
    L3_2(L4_2, L5_2)
  end
  L3_2 = ClearPedTasks
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2(L4_2, L5_2)
  L3_2 = StartClient
  L4_2 = A1_2
  L5_2 = "InVehicle"
  L3_2(L4_2, L5_2)
end
PutInVehicle = L0_1
L0_1 = ActionService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = IsInDev
  if L3_2 then
    L2_2 = A0_2
  else
    if A1_2 then
      L2_2 = A1_2
    else
      L3_2 = Utils
      L3_2 = L3_2.getClosestPlayers
      L4_2 = A0_2
      L5_2 = Config
      L5_2 = L5_2.CheckDistance
      L3_2 = L3_2(L4_2, L5_2)
      L2_2 = L3_2
    end
    if -1 == L2_2 then
      L3_2 = Framework
      L3_2 = L3_2.sendNotification
      L4_2 = A0_2
      L5_2 = _U
      L6_2 = "NO_CITIZEN_NEARBY"
      L5_2 = L5_2(L6_2)
      L6_2 = "error"
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = false
      L4_2 = "TARGET_PLAYER_NOT_FOUND"
      return L3_2, L4_2
    end
    if A0_2 == L2_2 then
      L3_2 = false
      L4_2 = "PLAYER_EQUAL_TARGET"
      return L3_2, L4_2
    end
  end
  L3_2 = Utils
  L3_2 = L3_2.IsPlayerNearAnotherPlayer
  L4_2 = A0_2
  L5_2 = L2_2
  L6_2 = Config
  L6_2 = L6_2.CheckDistance
  L6_2 = L6_2 + 0.5
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "NO_CITIZEN_NEARBY"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = false
    L4_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L3_2, L4_2
  end
  L3_2 = StartClient
  L4_2 = A0_2
  L5_2 = "JailPlayer"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.JailPlayer = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  if A1_2 then
    L2_2 = A1_2
  else
    L3_2 = Utils
    L3_2 = L3_2.getClosestPlayers
    L4_2 = A0_2
    L5_2 = Config
    L5_2 = L5_2.CheckDistance
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  if -1 == L2_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "NO_CITIZEN_NEARBY"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = false
    L4_2 = "TARGET_PLAYER_NOT_FOUND"
    return L3_2, L4_2
  end
  if A0_2 == L2_2 then
    L3_2 = false
    L4_2 = "PLAYER_EQUAL_TARGET"
    return L3_2, L4_2
  end
  L3_2 = Utils
  L3_2 = L3_2.IsPlayerNearAnotherPlayer
  L4_2 = A0_2
  L5_2 = L2_2
  L6_2 = Config
  L6_2 = L6_2.CheckDistance
  L6_2 = L6_2 + 0.5
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "NO_CITIZEN_NEARBY"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = false
    L4_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L3_2, L4_2
  end
  L3_2 = StartClient
  L4_2 = A0_2
  L5_2 = "SentToCOMS"
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.SentPlayerToCOMS = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "ShowInvoice"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.RenderFine = L1_1
L0_1 = ActionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.Props
  L1_2 = L1_2.ModelDataByPropType
  L1_2 = L1_2.SPIKES
  if not L1_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2 = L2_2[A0_2]
  if L2_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2[A0_2] = true
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "spawnProp"
  L5_2 = L1_2.prop
  L6_2 = PROP_TYPES
  L6_2 = L6_2.SPIKES
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.RequestSpike = L1_1
L0_1 = ActionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.Props
  L1_2 = L1_2.ModelDataByPropType
  L1_2 = L1_2.WHEEL_CLAMP
  if not L1_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2 = L2_2[A0_2]
  if L2_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2[A0_2] = true
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "spawnProp"
  L5_2 = L1_2.prop
  L6_2 = PROP_TYPES
  L6_2 = L6_2.WHEEL_CLAMP
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.RequestWheelClamp = L1_1
L0_1 = ActionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.Props
  L1_2 = L1_2.ModelDataByPropType
  L1_2 = L1_2.BARRICADE
  if not L1_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2 = L2_2[A0_2]
  if L2_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2[A0_2] = true
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "spawnProp"
  L5_2 = L1_2.prop
  L6_2 = PROP_TYPES
  L6_2 = L6_2.BARRICADE
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.RequestBarrier = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "TaskPlayAnim"
  L5_2 = {}
  L5_2.animDict = "mp_arresting"
  L5_2.animName = "a_uncuff"
  L5_2.animFlag = 49
  L5_2.time = 2000
  L5_2.target = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Wait
  L3_2 = 2000
  L2_2(L3_2)
  L2_2 = InteractionService
  L2_2 = L2_2.isHeadBagged
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = InteractionService
    L2_2 = L2_2.removeState
    L3_2 = A1_2
    L4_2 = "PAPERBAG_STATE"
    L2_2(L3_2, L4_2)
    L2_2 = Framework
    L2_2 = L2_2.sendNotification
    L3_2 = A0_2
    L4_2 = _U
    L5_2 = "PAPER_BAG.INITIATOR_REMOVED_FROM_TARGET"
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = InteractionService
    L2_2 = L2_2.addState
    L3_2 = A1_2
    L4_2 = "PAPERBAG_STATE"
    L2_2(L3_2, L4_2)
    L2_2 = Framework
    L2_2 = L2_2.sendNotification
    L3_2 = A0_2
    L4_2 = _U
    L5_2 = "PAPER_BAG.INITIATOR_ADDED_ON_TARGET"
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = StartClient
  L3_2 = A1_2
  L4_2 = "spawnProp"
  L5_2 = "prop_food_bag2"
  L6_2 = PROP_TYPES
  L6_2 = L6_2.PAPER_BAG
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.RequestHeadBag = L1_1
L0_1 = ActionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.Props
  L1_2 = L1_2.ModelDataByPropType
  L1_2 = L1_2.SPEED_RADAR
  if not L1_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2 = L2_2[A0_2]
  if L2_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2[A0_2] = true
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "spawnProp"
  L5_2 = L1_2.prop
  L6_2 = PROP_TYPES
  L6_2 = L6_2.SPEED_RADAR
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.RequestSpeedCamera = L1_1
L0_1 = ActionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = StartClient
  L2_2 = A0_2
  L3_2 = "spawnProp"
  L4_2 = "prop_megaphone_01"
  L5_2 = PROP_TYPES
  L5_2 = L5_2.MEGA_PHONE
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1.RequestMegaphone = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Config
  L3_2 = L3_2.Escort
  L3_2 = L3_2.Enable
  if not L3_2 then
    return
  end
  L3_2 = nil
  if A1_2 then
    L3_2 = A1_2
  else
    L4_2 = Utils
    L4_2 = L4_2.getClosestPlayers
    L5_2 = A0_2
    L6_2 = Config
    L6_2 = L6_2.CheckDistance
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  end
  if -1 == L3_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "TARGET_PLAYER_NOT_FOUND"
    return L4_2, L5_2
  end
  if A0_2 == L3_2 then
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Escort: You cannot request escort for yourself!"
    L4_2(L5_2)
    L4_2 = false
    L5_2 = "PLAYER_EQUAL_TARGET"
    return L4_2, L5_2
  end
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = A0_2
  L6_2 = L3_2
  L7_2 = Config
  L7_2 = L7_2.CheckDistance
  L7_2 = L7_2 + 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L4_2, L5_2
  end
  L4_2 = InteractionService
  L4_2 = L4_2.isCuffed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = GetPlayerPed
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetVehiclePedIsIn
  L6_2 = L4_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and L5_2 > 0 then
    L6_2 = false
    L7_2 = "INITIATOR_TRIED_ESCORT_TARGET_IN_VEHICLE"
    return L6_2, L7_2
  end
  L6_2 = GlobalCache
  if L6_2 then
    L6_2 = GlobalCache
    L6_2 = L6_2[L3_2]
    if L6_2 then
      L6_2 = false
      L7_2 = "ESCAPE_SESSION"
      return L6_2, L7_2
    end
  end
  L6_2 = InteractionService
  L6_2 = L6_2.isEscorted
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    if not A2_2 then
      L6_2 = Framework
      L6_2 = L6_2.sendNotification
      L7_2 = A0_2
      L8_2 = _U
      L9_2 = "ESCORT_INITIATOR_PED_REMOVE"
      L8_2 = L8_2(L9_2)
      L9_2 = "success"
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = Framework
      L6_2 = L6_2.sendNotification
      L7_2 = L3_2
      L8_2 = _U
      L9_2 = "ESCORT_TARGET_PED_REMOVE"
      L8_2 = L8_2(L9_2)
      L9_2 = "success"
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = ClearPedTasks
    L7_2 = GetPlayerPed
    L8_2 = L3_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L6_2 = StartClient
    L7_2 = A0_2
    L8_2 = "StopTask"
    L6_2(L7_2, L8_2)
    L6_2 = InteractionService
    L6_2 = L6_2.removeState
    L7_2 = L3_2
    L8_2 = "ESCORT_STATE"
    L6_2(L7_2, L8_2)
    L6_2 = InteractionService
    L6_2 = L6_2.removeState
    L7_2 = A0_2
    L8_2 = "ESCORT_STATE"
    L6_2(L7_2, L8_2)
    L6_2 = StartClient
    L7_2 = A0_2
    L8_2 = "EscortState"
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  else
    if not A2_2 then
      L6_2 = Framework
      L6_2 = L6_2.sendNotification
      L7_2 = A0_2
      L8_2 = _U
      L9_2 = "ESCORT_INITIATOR"
      L8_2 = L8_2(L9_2)
      L9_2 = "success"
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = Framework
      L6_2 = L6_2.sendNotification
      L7_2 = L3_2
      L8_2 = _U
      L9_2 = "ESCORT_TARGET"
      L8_2 = L8_2(L9_2)
      L9_2 = "success"
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = StartClient
    L7_2 = A0_2
    L8_2 = "TaskPlayAnim"
    L9_2 = {}
    L9_2.animDict = "rcmnigel1d"
    L9_2.animName = "base_club_shoulder"
    L9_2.animFlag = 49
    L9_2.time = -1
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = InteractionService
    L6_2 = L6_2.addState
    L7_2 = L3_2
    L8_2 = "ESCORT_STATE"
    L6_2(L7_2, L8_2)
    L6_2 = InteractionService
    L6_2 = L6_2.addState
    L7_2 = A0_2
    L8_2 = "ESCORT_STATE"
    L6_2(L7_2, L8_2)
    L6_2 = StartClient
    L7_2 = A0_2
    L8_2 = "EscortState"
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = {}
  L7_2 = DeathService
  L7_2 = L7_2.GetPlayerState
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2.initiatorDeath = L7_2
  L7_2 = DeathService
  L7_2 = L7_2.GetPlayerState
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2.targetDeath = L7_2
  L7_2 = StartClient
  L8_2 = L3_2
  L9_2 = "EscortPlayer"
  L10_2 = A0_2
  L11_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1.Escort = L1_1
L0_1 = ActionService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    L1_2 = false
    L2_2 = "TARGET_PLAYER_ID_NIL"
    return L1_2, L2_2
  end
  L1_2 = GetPlayerPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    L3_2 = "TARGET_PLAYER_ID_OFFLINE"
    return L2_2, L3_2
  end
  L2_2 = InteractionService
  L2_2 = L2_2.isCuffed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    L3_2 = "TARGET_NOT_CUFFED"
    return L2_2, L3_2
  end
  L2_2 = InteractionService
  L2_2 = L2_2.removeState
  L3_2 = A0_2
  L4_2 = "CUFF_STATE"
  L2_2(L3_2, L4_2)
  L2_2 = TriggerEvent
  L3_2 = "rcore_police:server:sendHeartBeat"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = "CUFF_STATE"
  L7_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "RemoveCuffs"
  L5_2 = true
  L6_2 = "cuffs"
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = true
  L3_2 = "TARGET_CUFFS_REMOVED"
  return L2_2, L3_2
end
L0_1.ForceUncuff = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = nil
  L4_2 = IsInDev
  if L4_2 then
    L3_2 = A0_2
  else
    if A1_2 then
      L3_2 = A1_2
    else
      L4_2 = Utils
      L4_2 = L4_2.getClosestPlayers
      L5_2 = A0_2
      L6_2 = Config
      L6_2 = L6_2.CheckDistance
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    end
    if A0_2 == L3_2 then
      L4_2 = false
      L5_2 = "PLAYER_EQUAL_TARGET"
      return L4_2, L5_2
    end
    if -1 == L3_2 then
      L4_2 = Framework
      L4_2 = L4_2.sendNotification
      L5_2 = A0_2
      L6_2 = _U
      L7_2 = "NO_CITIZEN_NEARBY"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = false
      L5_2 = "TARGET_PLAYER_NOT_FOUND"
      return L4_2, L5_2
    end
  end
  L4_2 = InteractionService
  L4_2 = L4_2.isEscorted
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "YOU_CANNOT_DO_THAT_WHILE_ESCORTING_PLAYER"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "INITIATOR_CANNOT_REMOVE_CUFF_ON_ESCORTED_TARGET"
    return L4_2, L5_2
  end
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = A0_2
  L6_2 = L3_2
  L7_2 = Config
  L7_2 = L7_2.CheckDistance
  L7_2 = L7_2 + 0.5
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = A0_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = false
    L5_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L4_2, L5_2
  end
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetVehiclePedIsIn
  L6_2 = L4_2
  L7_2 = false
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 and L5_2 > 0 then
    L6_2 = false
    L7_2 = "INITATOR_TRIED_ACTION_FROM_VEHICLE"
    return L6_2, L7_2
  end
  L6_2 = Items
  L6_2 = L6_2.HandcuffsKeys
  L7_2 = "CUFFED"
  L8_2 = HasPlayerZiptieCutters
  L9_2 = A0_2
  L8_2, L9_2 = L8_2(L9_2)
  L10_2 = InteractionService
  L10_2 = L10_2.isCuffed
  L11_2 = L3_2
  L10_2 = L10_2(L11_2)
  if L10_2 then
    L10_2 = InteractionService
    L10_2 = L10_2.HasPlayerState
    L11_2 = L3_2
    L12_2 = "CUFF_STATE"
    L10_2, L11_2 = L10_2(L11_2, L12_2)
    if L10_2 and L9_2 and L11_2 then
      L12_2 = L11_2.type
      if "ziptie" == L12_2 then
        L6_2 = L9_2
      end
    end
    L12_2 = InventoryService
    L12_2 = L12_2.hasItem
    L13_2 = A0_2
    L14_2 = L6_2
    L12_2 = L12_2(L13_2, L14_2)
    if not L12_2 then
      L12_2 = Config
      L12_2 = L12_2.Cuffing
      L12_2 = L12_2.CheckHasItems
      if L12_2 then
        L12_2 = Framework
        L12_2 = L12_2.sendNotification
        L13_2 = A0_2
        L14_2 = _U
        L15_2 = "YOU_DONT_HAVE_ITEM_IN_YOUR_INVENTORY"
        L16_2 = Config
        L16_2 = L16_2.ItemsLabels
        L16_2 = L16_2[L6_2]
        if not L16_2 then
          L16_2 = L6_2
        end
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = "error"
        return L12_2(L13_2, L14_2, L15_2)
      end
    end
    L12_2 = GetPlayerPed
    L13_2 = L3_2
    L12_2 = L12_2(L13_2)
    L13_2 = GetVehiclePedIsIn
    L14_2 = L12_2
    L15_2 = false
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 and L13_2 > 0 then
      L14_2 = false
      L15_2 = "INITIATOR_TRIED_REMOVE_CUFFS_FROM_TARGET_IN_VEHICLE"
      return L14_2, L15_2
    end
    if L10_2 and L9_2 and L11_2 then
      L14_2 = L11_2.type
      if "ziptie" == L14_2 then
        L14_2 = Framework
        L14_2 = L14_2.sendNotification
        L15_2 = A0_2
        L16_2 = _U
        L17_2 = "ZIPTIES_INITIATOR_REMOVE"
        L16_2 = L16_2(L17_2)
        L17_2 = "success"
        L14_2(L15_2, L16_2, L17_2)
        L14_2 = Framework
        L14_2 = L14_2.sendNotification
        L15_2 = L3_2
        L16_2 = _U
        L17_2 = "ZIPTIES_TARGET_REMOVE"
        L16_2 = L16_2(L17_2)
        L17_2 = "success"
        L14_2(L15_2, L16_2, L17_2)
    end
    else
      L14_2 = Framework
      L14_2 = L14_2.sendNotification
      L15_2 = A0_2
      L16_2 = _U
      L17_2 = "HANDCUFF_INITIATOR_REMOVE"
      L16_2 = L16_2(L17_2)
      L17_2 = "success"
      L14_2(L15_2, L16_2, L17_2)
      L14_2 = Framework
      L14_2 = L14_2.sendNotification
      L15_2 = L3_2
      L16_2 = _U
      L17_2 = "HANDCUFF_TARGET_REMOVE"
      L16_2 = L16_2(L17_2)
      L17_2 = "success"
      L14_2(L15_2, L16_2, L17_2)
    end
    L14_2 = StartClient
    L15_2 = A0_2
    L16_2 = "TaskPlayAnim"
    L17_2 = {}
    L17_2.animDict = "mp_arresting"
    L17_2.animName = "a_uncuff"
    L17_2.animFlag = 49
    L17_2.time = 2000
    L14_2(L15_2, L16_2, L17_2)
    L14_2 = Config
    L14_2 = L14_2.Cuffing
    L14_2 = L14_2.TakeAndReturnItems
    if L14_2 then
      L14_2 = Items
      L14_2 = L14_2.Handcuffs
      if L10_2 and L11_2 then
        L15_2 = L11_2.type
        if "ziptie" == L15_2 then
          L15_2 = Items
          L14_2 = L15_2.Zipties
        end
      end
      L15_2 = InventoryService
      L15_2 = L15_2.addItem
      L16_2 = A0_2
      L17_2 = L14_2
      L18_2 = 1
      L15_2(L16_2, L17_2, L18_2)
    end
    L14_2 = SetTimeout
    L15_2 = 2000
    function L16_2()
      local L0_3, L1_3, L2_3
      L0_3 = InteractionService
      L0_3 = L0_3.removeState
      L1_3 = L3_2
      L2_3 = "CUFF_STATE"
      L0_3(L1_3, L2_3)
    end
    L14_2(L15_2, L16_2)
    L14_2 = StartClient
    L15_2 = L3_2
    L16_2 = "Handcuff"
    L17_2 = A0_2
    L14_2(L15_2, L16_2, L17_2)
    L7_2 = "IS_CUFFED"
  else
    L10_2 = _U
    L11_2 = "PLAYER_IS_NOT_HANDCUFFED"
    L10_2 = L10_2(L11_2)
    if L9_2 == A2_2 then
      L11_2 = _U
      L12_2 = "PLAYER_IS_NOT_ZIPTIED"
      L11_2 = L11_2(L12_2)
      L10_2 = L11_2
    end
    L11_2 = Framework
    L11_2 = L11_2.sendNotification
    L12_2 = A0_2
    L13_2 = L10_2
    L14_2 = "error"
    L11_2(L12_2, L13_2, L14_2)
    L7_2 = "IS_NOT_CUFFED"
  end
  L10_2 = TriggerEvent
  L11_2 = "rcore_police:server:sendHeartBeat"
  L12_2 = A0_2
  L13_2 = L3_2
  L14_2 = "CUFF_STATE"
  L15_2 = false
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = true
  L11_2 = L7_2
  return L10_2, L11_2
end
L0_1.RemoveHandcuff = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = ActionService
  L3_2 = L3_2.Handcuff
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = "ziptie"
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.ZipTies = L1_1
L0_1 = ActionService
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L5_2 = nil
  L6_2 = IsInDev
  if L6_2 then
    L5_2 = A0_2
  else
    if A1_2 then
      L5_2 = A1_2
    else
      L6_2 = Utils
      L6_2 = L6_2.getClosestPlayers
      L7_2 = A0_2
      L8_2 = Config
      L8_2 = L8_2.CheckDistance
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    end
    if A0_2 == L5_2 then
      L6_2 = false
      L7_2 = "PLAYER_EQUAL_TARGET"
      return L6_2, L7_2
    end
    if -1 == L5_2 then
      L6_2 = Framework
      L6_2 = L6_2.sendNotification
      L7_2 = A0_2
      L8_2 = _U
      L9_2 = "NO_CITIZEN_NEARBY"
      L8_2 = L8_2(L9_2)
      L9_2 = "error"
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = false
      L7_2 = "TARGET_PLAYER_NOT_FOUND"
      return L6_2, L7_2
    end
  end
  L6_2 = Utils
  L6_2 = L6_2.IsPlayerNearAnotherPlayer
  L7_2 = A0_2
  L8_2 = L5_2
  L9_2 = Config
  L9_2 = L9_2.CheckDistance
  L9_2 = L9_2 + 0.5
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if not L6_2 then
    L6_2 = Framework
    L6_2 = L6_2.sendNotification
    L7_2 = A0_2
    L8_2 = _U
    L9_2 = "NO_CITIZEN_NEARBY"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = false
    L7_2 = "INITIATOR_AND_TARGET_NOT_IN_DISTANCE"
    return L6_2, L7_2
  end
  L6_2 = GetPlayerPed
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetVehiclePedIsIn
  L8_2 = L6_2
  L9_2 = false
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 and L7_2 > 0 then
    L8_2 = false
    L9_2 = "INITATOR_TRIED_ACTION_FROM_VEHICLE"
    return L8_2, L9_2
  end
  L8_2 = Items
  L8_2 = L8_2.Handcuffs
  L9_2 = Items
  L9_2 = L9_2.HandcuffsKeys
  L10_2 = "handcuffs"
  if "ziptie" == A3_2 then
    L11_2 = Items
    L8_2 = L11_2.Zipties
    L10_2 = "ziptie"
  end
  L11_2 = InteractionService
  L11_2 = L11_2.isEscorted
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  if L11_2 then
    L11_2 = Framework
    L11_2 = L11_2.sendNotification
    L12_2 = A0_2
    L13_2 = _U
    L14_2 = "YOU_CANNOT_DO_THAT_WHILE_ESCORTING_PLAYER"
    L13_2 = L13_2(L14_2)
    L14_2 = "error"
    L11_2(L12_2, L13_2, L14_2)
    L11_2 = false
    L12_2 = "INITIATOR_CANNOT_REMOVE_CUFF_ON_ESCORTED_TARGET"
    return L11_2, L12_2
  end
  L11_2 = "NOT_CUFFED"
  L12_2 = HasPlayerZiptieCutters
  L13_2 = A0_2
  L12_2, L13_2 = L12_2(L13_2)
  L14_2 = InteractionService
  L14_2 = L14_2.isCuffed
  L15_2 = L5_2
  L14_2 = L14_2(L15_2)
  if L14_2 then
    L14_2 = InteractionService
    L14_2 = L14_2.HasPlayerState
    L15_2 = L5_2
    L16_2 = "CUFF_STATE"
    L14_2, L15_2 = L14_2(L15_2, L16_2)
    if L14_2 and L15_2 then
      L16_2 = L15_2.type
      if "ziptie" == L16_2 then
        if not L13_2 then
          L16_2 = Items
          L13_2 = L16_2.ZipTiesCutter
        end
        L9_2 = L13_2
      end
    end
    L16_2 = InventoryService
    L16_2 = L16_2.hasItem
    L17_2 = A0_2
    L18_2 = L9_2
    L16_2 = L16_2(L17_2, L18_2)
    if not L16_2 then
      L16_2 = Config
      L16_2 = L16_2.Cuffing
      L16_2 = L16_2.CheckHasItems
      if L16_2 then
        L16_2 = Framework
        L16_2 = L16_2.sendNotification
        L17_2 = A0_2
        L18_2 = _U
        L19_2 = "YOU_DONT_HAVE_ITEM_IN_YOUR_INVENTORY"
        L20_2 = Config
        L20_2 = L20_2.ItemsLabels
        L20_2 = L20_2[L9_2]
        if not L20_2 then
          L20_2 = L9_2
        end
        L18_2 = L18_2(L19_2, L20_2)
        L19_2 = "error"
        L16_2(L17_2, L18_2, L19_2)
        L16_2 = false
        L17_2 = "INITIATOR_DONT_HAVE_ITEM_IN_INVENTORY"
        return L16_2, L17_2
      end
    end
    L16_2 = GetPlayerPed
    L17_2 = L5_2
    L16_2 = L16_2(L17_2)
    L17_2 = GetVehiclePedIsIn
    L18_2 = L16_2
    L19_2 = false
    L17_2 = L17_2(L18_2, L19_2)
    if L17_2 and L17_2 > 0 then
      L18_2 = false
      L19_2 = "INITIATOR_TRIED_CUFF_TARGET_IN_VEHICLE"
      return L18_2, L19_2
    end
    if not A2_2 then
      if L14_2 and L13_2 and L15_2 then
        L18_2 = L15_2.type
        if "ziptie" == L18_2 then
          L18_2 = Framework
          L18_2 = L18_2.sendNotification
          L19_2 = A0_2
          L20_2 = _U
          L21_2 = "ZIPTIES_INITIATOR_REMOVE"
          L20_2 = L20_2(L21_2)
          L21_2 = "success"
          L18_2(L19_2, L20_2, L21_2)
          L18_2 = Framework
          L18_2 = L18_2.sendNotification
          L19_2 = L5_2
          L20_2 = _U
          L21_2 = "ZIPTIES_TARGET_REMOVE"
          L20_2 = L20_2(L21_2)
          L21_2 = "success"
          L18_2(L19_2, L20_2, L21_2)
      end
      else
        L18_2 = Framework
        L18_2 = L18_2.sendNotification
        L19_2 = A0_2
        L20_2 = _U
        L21_2 = "HANDCUFF_INITIATOR_REMOVE"
        L20_2 = L20_2(L21_2)
        L21_2 = "success"
        L18_2(L19_2, L20_2, L21_2)
        L18_2 = Framework
        L18_2 = L18_2.sendNotification
        L19_2 = L5_2
        L20_2 = _U
        L21_2 = "HANDCUFF_TARGET_REMOVE"
        L20_2 = L20_2(L21_2)
        L21_2 = "success"
        L18_2(L19_2, L20_2, L21_2)
      end
    end
    L18_2 = StartClient
    L19_2 = A0_2
    L20_2 = "TaskPlayAnim"
    L21_2 = {}
    L21_2.animDict = "mp_arresting"
    L21_2.animName = "a_uncuff"
    L21_2.animFlag = 49
    L21_2.time = 2000
    L18_2(L19_2, L20_2, L21_2)
    L18_2 = InteractionService
    L18_2 = L18_2.HasPlayerState
    L19_2 = L5_2
    L20_2 = "CUFF_STATE"
    L18_2, L19_2 = L18_2(L19_2, L20_2)
    L20_2 = InteractionService
    L20_2 = L20_2.removeState
    L21_2 = L5_2
    L22_2 = "CUFF_STATE"
    L23_2 = L10_2
    L20_2(L21_2, L22_2, L23_2)
    L20_2 = SetTimeout
    L21_2 = 2000
    function L22_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Config
      L0_3 = L0_3.Cuffing
      L0_3 = L0_3.TakeAndReturnItems
      if L0_3 then
        L0_3 = L18_2
        if L0_3 then
          L0_3 = L19_2
          if L0_3 then
            L0_3 = L19_2.type
            if "ziptie" == L0_3 then
              L0_3 = Items
              L0_3 = L0_3.Zipties
              L8_2 = L0_3
            end
          end
        end
        L0_3 = L18_2
        if L0_3 then
          L0_3 = L19_2
          if L0_3 then
            L0_3 = L19_2.type
            if "ziptie" == L0_3 then
              L0_3 = Config
              L0_3 = L0_3.Zipties
              L0_3 = L0_3.ReturnZipTies
              if not L0_3 then
                return
              end
            end
          end
        end
        L0_3 = InventoryService
        L0_3 = L0_3.addItem
        L1_3 = A0_2
        L2_3 = L8_2
        L3_3 = 1
        L0_3(L1_3, L2_3, L3_3)
      end
    end
    L20_2(L21_2, L22_2)
    L11_2 = "NOT_CUFFED"
  else
    L14_2 = InventoryService
    L14_2 = L14_2.hasItem
    L15_2 = A0_2
    L16_2 = L8_2
    L14_2 = L14_2(L15_2, L16_2)
    if not L14_2 then
      L14_2 = Config
      L14_2 = L14_2.Cuffing
      L14_2 = L14_2.CheckHasItems
      if L14_2 then
        L14_2 = Framework
        L14_2 = L14_2.sendNotification
        L15_2 = A0_2
        L16_2 = _U
        L17_2 = "YOU_DONT_HAVE_ITEM_IN_YOUR_INVENTORY"
        L18_2 = Config
        L18_2 = L18_2.ItemsLabels
        L18_2 = L18_2[L8_2]
        L16_2 = L16_2(L17_2, L18_2)
        L17_2 = "error"
        return L14_2(L15_2, L16_2, L17_2)
      end
    end
    L14_2 = GetPlayerPed
    L15_2 = L5_2
    L14_2 = L14_2(L15_2)
    L15_2 = GetVehiclePedIsIn
    L16_2 = L14_2
    L17_2 = false
    L15_2 = L15_2(L16_2, L17_2)
    if L15_2 and L15_2 > 0 then
      L16_2 = false
      L17_2 = "INITIATOR_TRIED_CUFF_TARGET_IN_VEHICLE"
      return L16_2, L17_2
    end
    L16_2 = "cuff"
    L17_2 = nil
    L18_2 = nil
    if not A2_2 then
      if "ziptie" == L10_2 then
        L19_2 = Framework
        L19_2 = L19_2.sendNotification
        L20_2 = A0_2
        L21_2 = _U
        L22_2 = "ZIPTIES_INITIATOR"
        L21_2 = L21_2(L22_2)
        L22_2 = "success"
        L19_2(L20_2, L21_2, L22_2)
        L19_2 = Framework
        L19_2 = L19_2.sendNotification
        L20_2 = L5_2
        L21_2 = _U
        L22_2 = "ZIPTIES_TARGET"
        L21_2 = L21_2(L22_2)
        L22_2 = "success"
        L19_2(L20_2, L21_2, L22_2)
      else
        L19_2 = Framework
        L19_2 = L19_2.sendNotification
        L20_2 = A0_2
        L21_2 = _U
        L22_2 = "HANDCUFF_INITIATOR"
        L21_2 = L21_2(L22_2)
        L22_2 = "success"
        L19_2(L20_2, L21_2, L22_2)
        L19_2 = Framework
        L19_2 = L19_2.sendNotification
        L20_2 = L5_2
        L21_2 = _U
        L22_2 = "HANDCUFF_TARGET"
        L21_2 = L21_2(L22_2)
        L22_2 = "success"
        L19_2(L20_2, L21_2, L22_2)
      end
    end
    L19_2 = StartClient
    L20_2 = A0_2
    L21_2 = "TaskPlayAnim"
    L22_2 = {}
    L22_2.animDict = L16_2
    L22_2.animName = L17_2
    L22_2.animFlag = 49
    L22_2.time = L18_2
    L22_2.target = L5_2
    L19_2(L20_2, L21_2, L22_2)
    L19_2 = Config
    L19_2 = L19_2.Cuffing
    L19_2 = L19_2.TakeAndReturnItems
    if L19_2 then
      L19_2 = InventoryService
      L19_2 = L19_2.removeItem
      L20_2 = A0_2
      L21_2 = L8_2
      L22_2 = 1
      L19_2(L20_2, L21_2, L22_2)
    end
    L19_2 = InteractionService
    L19_2 = L19_2.addState
    L20_2 = L5_2
    L21_2 = "CUFF_STATE"
    L22_2 = L10_2
    L19_2(L20_2, L21_2, L22_2)
    L11_2 = "CUFFED"
  end
  L14_2 = false
  if "CUFFED" == L11_2 then
    L14_2 = true
  end
  L15_2 = TriggerEvent
  L16_2 = "rcore_police:server:sendHeartBeat"
  L17_2 = A0_2
  L18_2 = L5_2
  L19_2 = "CUFF_STATE"
  L20_2 = L14_2
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L15_2 = StartClient
  L16_2 = L5_2
  L17_2 = "Handcuff"
  L18_2 = A0_2
  L19_2 = A3_2
  L20_2 = A4_2
  L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  L15_2 = true
  L16_2 = L11_2
  return L15_2, L16_2
end
L0_1.Handcuff = L1_1
