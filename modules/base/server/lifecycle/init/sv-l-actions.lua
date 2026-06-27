local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.SearchPlayer
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.SEARCH_PLAYER = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.TakePlayerFromVehicle
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.FROM_VEHICLE = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.PutPlayerInVehicle
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.IN_VEHICLE = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.Escort
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.ESCORT_CITIZEN = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.JailPlayer
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.SENT_TO_JAIL = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.SentPlayerToCOMS
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.SENT_TO_COMS = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = safeCallFunction
  L5_2 = CreateInvoice
  L6_2 = MENU_ACTIONS
  L6_2 = L6_2.SENT_FINE
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A3_2.cost
  L10_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1.SENT_FINE = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = safeCallFunction
  L3_2 = ShowPlayerLicense
  L4_2 = MENU_ACTIONS
  L4_2 = L4_2.SHOW_PLAYER_LICENSES
  L5_2 = A1_2
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.SHOW_PLAYER_LICENSES = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.RenderFine
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.INVOICE_CITIZEN = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Config
  L3_2 = L3_2.Props
  L3_2 = L3_2.ModelDataByPropType
  L3_2 = L3_2[A2_2]
  if L3_2 then
    L4_2 = L3_2.itemName
    L5_2 = L3_2.label
    L6_2 = Config
    L6_2 = L6_2.Props
    L6_2 = L6_2.CheckHasItem
    if L6_2 and L4_2 then
      L6_2 = InventoryService
      L6_2 = L6_2.hasItem
      L7_2 = A0_2
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      if not L6_2 then
        L7_2 = Framework
        L7_2 = L7_2.sendNotification
        L8_2 = A0_2
        L9_2 = _U
        L10_2 = "PROPS.YOU_DONT_HAVE_ITEM_IN_INVENTORY"
        L11_2 = L5_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = "error"
        return L7_2(L8_2, L9_2, L10_2)
      end
    end
  else
    L4_2 = Config
    L4_2 = L4_2.Props
    L4_2 = L4_2.CheckHasItem
    if L4_2 then
      L4_2 = dbg
      L4_2 = L4_2.debug
      L5_2 = "Prop with type %s is not defined in Config.Props.ModelDataByPropType - disabling inventory check"
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = UsedItemsCache
  L4_2 = L4_2[A0_2]
  if L4_2 then
    return
  end
  L4_2 = UsedItemsCache
  L4_2[A0_2] = true
  L4_2 = StartClient
  L5_2 = A0_2
  L6_2 = "spawnProp"
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.REQUEST_SPAWN_MODEL = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = GarageService
  L4_2 = L4_2.GetVehicleInfo
  L5_2 = A3_2.plate
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = next
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = StartClient
      L6_2 = A0_2
      L7_2 = "handleVehicleTask"
      L8_2 = MENU_ACTIONS
      L8_2 = L8_2.SHOW_VEHICLE_INFORMATION
      L9_2 = A1_2
      L10_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
end
L0_1.SHOW_VEHICLE_INFORMATION = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A3_2 then
    return
  end
  L4_2 = GarageService
  L4_2 = L4_2.IsVehiclePlayerOwned
  L5_2 = A3_2.plate
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  A3_2.owned = L4_2
  L4_2 = StartClient
  L5_2 = A0_2
  L6_2 = "handleVehicleTask"
  L7_2 = MENU_ACTIONS
  L7_2 = L7_2.IMPOUND_VEHICLE
  L8_2 = A1_2
  L9_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.IMPOUND_VEHICLE = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = Framework
  L4_2 = L4_2.getJob
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2.isBoss
    if not L5_2 then
      return
    end
  end
  L5_2 = Framework
  L5_2 = L5_2.SetPlayerJob
  L6_2 = A1_2
  L7_2 = L3_2 or L7_2
  if L3_2 then
    L7_2 = L3_2.group
  end
  L8_2 = 1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = Framework
  L6_2 = L6_2.getCharacterShortName
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  if L5_2 then
    L7_2 = Framework
    L7_2 = L7_2.sendNotification
    L8_2 = A1_2
    L9_2 = _U
    L10_2 = "BOSS_MENU.YOU_HIRED_BY_INITIATOR"
    L11_2 = L3_2 or L11_2
    if L3_2 then
      L11_2 = L3_2.group
    end
    L12_2 = L3_2 or L12_2
    if L3_2 then
      L12_2 = L3_2.name
    end
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = "success"
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = Framework
    L7_2 = L7_2.sendNotification
    L8_2 = A0_2
    L9_2 = _U
    L10_2 = "BOSS_MENU.YOU_HIRED_PLAYER"
    L11_2 = L6_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = "success"
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1.HIRE_PLAYER = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "handleVehicleTask"
  L5_2 = MENU_ACTIONS
  L5_2 = L5_2.UNLOCK_VEHICLE
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.UNLOCK_VEHICLE = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ActionService
  L2_2 = L2_2.Handcuff
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.CUFF_SOFT = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = EmergencyCall
  L5_2 = A3_2
  L4_2(L5_2)
end
L0_1.EMERGENCY = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  L2_2 = {}
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L2_2[6] = L8_2
  L2_2[7] = L9_2
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2[1]
  end
  if L1_2 then
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Loading action named: %s by player %s named %s"
    L6_2 = A0_2
    L7_2 = L3_2
    L8_2 = GetPlayerName
    L9_2 = L3_2
    L8_2, L9_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L4_2 = L1_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = ...
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L4_2 = dbg
    L4_2 = L4_2.critical
    L5_2 = "Interaction: Failed to perform action %s, since is not defined by player %s named %s"
    L6_2 = A0_2
    L7_2 = L3_2
    L8_2 = GetPlayerName
    L9_2 = L3_2
    L8_2, L9_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
performAction = L1_1
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestMenuInteract"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = source
  L5_2 = GroupsService
  L5_2 = L5_2.IsPlayerMemberOfGroup
  L6_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2)
  if A2_2 then
    L7_2 = ACTION_TYPES
    L7_2 = L7_2.CITIZEN
    if A2_2 == L7_2 then
      L7_2 = Utils
      L7_2 = L7_2.IsPlayerNearAnotherPlayer
      L8_2 = L4_2
      L9_2 = A1_2
      L10_2 = Config
      L10_2 = L10_2.CheckDistance
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if not L7_2 then
        L7_2 = Framework
        L7_2 = L7_2.sendNotification
        L8_2 = L4_2
        L9_2 = _U
        L10_2 = "NO_CITIZEN_NEARBY"
        L9_2 = L9_2(L10_2)
        L10_2 = "error"
        return L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
  if "EMERGENCY" == A0_2 then
    A3_2 = L6_2
  end
  L7_2 = performAction
  L8_2 = A0_2
  L9_2 = L4_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestSearchInventory"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = ActionService
  L1_2 = L1_2.SearchPlayer
  L2_2 = source
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestStopEscort"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = GetPlayerPed
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ClearPedTasksImmediately
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = ActionService
  L2_2 = L2_2.Escort
  L3_2 = L0_2
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestCuffDuringEscort"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = Config
  L7_2 = L7_2.Cuffing
  L7_2 = L7_2.CheckDistance
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = L1_2
    L6_2 = _U
    L7_2 = "NO_CITIZEN_NEARBY"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    return L4_2(L5_2, L6_2, L7_2)
  end
  if L1_2 == A0_2 then
    return
  end
  L4_2 = ActionService
  L4_2 = L4_2.Escort
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Wait
  L5_2 = 100
  L4_2(L5_2)
  L4_2 = ActionService
  L4_2 = L4_2.Handcuff
  L5_2 = L1_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
  L4_2 = Wait
  L5_2 = 500.0
  L4_2(L5_2)
  L4_2 = ActionService
  L4_2 = L4_2.Escort
  L5_2 = L1_2
  L6_2 = A0_2
  L4_2(L5_2, L6_2)
end
L1_1(L2_1, L3_1)
