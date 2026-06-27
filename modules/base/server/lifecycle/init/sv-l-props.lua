local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = AddEventHandler
L3_1 = "rcore_police:server:playerUnloaded"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    return
  end
  L1_2 = L1_1
  if L1_2 then
    L1_2 = next
    L2_2 = L1_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = pairs
      L2_2 = L1_1
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L6_2.initiatior
        if L7_2 == A0_2 then
          L7_2 = L1_1
          L7_2[L5_2] = nil
          break
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "rcore_police:server:playerLoaded"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L1_2 = L0_1
  if L1_2 then
    L1_2 = next
    L2_2 = L0_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = StartClient
      L2_2 = A0_2
      L3_2 = "SyncObjectPoolForUser"
      L4_2 = L0_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:requestSpeedCameraFine"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = source
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    return
  end
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.fine
  L5_2 = dbg
  L5_2 = L5_2.debug
  L6_2 = "Speed camera: Requesting speed camera fine for user %s (%s)"
  L7_2 = GetPlayerName
  L8_2 = L2_2
  L7_2 = L7_2(L8_2)
  L8_2 = L2_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = DoesEntityExist
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if L5_2 and L4_2 then
    L5_2 = GetEntitySpeed
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetVehicleNumberPlateText
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = GetPlayerPed
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L8_2 = SEAT_INDEXES
    if L8_2 then
      L8_2 = SEAT_INDEXES
      L8_2 = L8_2.DRIVER_SEAT
      if L8_2 then
        goto lbl_45
      end
    end
    L8_2 = -1
    ::lbl_45::
    L9_2 = GetPedInVehicleSeat
    L10_2 = L3_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= L7_2 then
      L10_2 = dbg
      L10_2 = L10_2.debug
      L11_2 = "Speed camera: Ignoring player named %s (%s) since user is not driver of vehicle but passenger."
      L12_2 = GetPlayerName
      L13_2 = L2_2
      L12_2 = L12_2(L13_2)
      L13_2 = L2_2
      return L10_2(L11_2, L12_2, L13_2)
    end
    L10_2 = Config
    L10_2 = L10_2.Props
    L10_2 = L10_2.SpeedCamera
    L10_2 = L10_2.IgnoreFineForDepartments
    if L10_2 then
      L10_2 = Framework
      L10_2 = L10_2.getJob
      L11_2 = L2_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L11_2 = L10_2.name
        if L11_2 then
          L11_2 = L10_2.name
          L12_2 = L11_2
          L11_2 = L11_2.lower
          L11_2 = L11_2(L12_2)
          L12_2 = Config
          L12_2 = L12_2.Props
          L12_2 = L12_2.SpeedCamera
          L12_2 = L12_2.IgnoreJobList
          L12_2 = L12_2[L11_2]
          if L12_2 then
            L12_2 = dbg
            L12_2 = L12_2.debug
            L13_2 = "Speed camera: Disabled fine for player named %s with playerId %s since part of department group!"
            L14_2 = GetPlayerName
            L15_2 = L2_2
            L14_2 = L14_2(L15_2)
            L15_2 = L2_2
            L12_2(L13_2, L14_2, L15_2)
            return
          end
        end
      end
    end
    L10_2 = dbg
    L10_2 = L10_2.debug
    L11_2 = "Speed camera: Using invoice mode: %s"
    L12_2 = Config
    L12_2 = L12_2.Props
    L12_2 = L12_2.SpeedCamera
    L12_2 = L12_2.InvoiceMode
    L10_2(L11_2, L12_2)
    L10_2 = {}
    L11_2 = L0_1
    L11_2 = L11_2[A0_2]
    L11_2 = L11_2.job
    if L11_2 then
      L11_2 = L0_1
      L11_2 = L11_2[A0_2]
      L11_2 = L11_2.job
      L10_2.job = L11_2
    end
    L11_2 = Config
    L11_2 = L11_2.Props
    L11_2 = L11_2.SpeedCamera
    L11_2 = L11_2.InvoiceMode
    if 1 == L11_2 then
      L11_2 = dbg
      L11_2 = L11_2.debug
      L12_2 = "Speed camera: Using direct invoice to player with playerId: %s"
      L13_2 = L2_2
      L11_2(L12_2, L13_2)
      L11_2 = Framework
      L11_2 = L11_2.sendNotification
      L12_2 = L2_2
      L13_2 = _U
      L14_2 = "SPEED_RADAR.RECEIVED_FINE"
      L15_2 = L4_2
      L16_2 = _U
      L17_2 = "CURRENCY_SYMBOL"
      L16_2 = L16_2(L17_2)
      L17_2 = math
      L17_2 = L17_2.floor
      L18_2 = getVehicleSpeed
      L19_2 = L5_2
      L18_2, L19_2 = L18_2(L19_2)
      L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L14_2 = "success"
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = CreateInvoiceToPlayerInVehicle
      L12_2 = L2_2
      L13_2 = L2_2
      L14_2 = L4_2
      L15_2 = L10_2
      L11_2(L12_2, L13_2, L14_2, L15_2)
    else
      L11_2 = Config
      L11_2 = L11_2.Props
      L11_2 = L11_2.SpeedCamera
      L11_2 = L11_2.InvoiceMode
      if 2 == L11_2 then
        L11_2 = dbg
        L11_2 = L11_2.debug
        L12_2 = "Speed camera: Using direct to owner of player vehicle with plate: %s"
        L13_2 = L6_2
        L11_2(L12_2, L13_2)
        L11_2 = CreateOfflineInvoiceForVehicle
        L12_2 = L6_2
        L13_2 = L4_2
        L14_2 = math
        L14_2 = L14_2.floor
        L15_2 = getVehicleSpeed
        L16_2 = L5_2
        L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2)
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      else
        L11_2 = dbg
        L11_2 = L11_2.debug
        L12_2 = "Speed camera: Using direct invoice to player with playerId: %s fallback"
        L13_2 = L2_2
        L11_2(L12_2, L13_2)
        L11_2 = Framework
        L11_2 = L11_2.sendNotification
        L12_2 = L2_2
        L13_2 = _U
        L14_2 = "SPEED_RADAR.RECEIVED_FINE"
        L15_2 = L4_2
        L16_2 = _U
        L17_2 = "CURRENCY_SYMBOL"
        L16_2 = L16_2(L17_2)
        L17_2 = math
        L17_2 = L17_2.floor
        L18_2 = getVehicleSpeed
        L19_2 = L5_2
        L18_2, L19_2 = L18_2(L19_2)
        L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L14_2 = "success"
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = CreateInvoiceToPlayerInVehicle
        L12_2 = L2_2
        L13_2 = L2_2
        L14_2 = L4_2
        L15_2 = L10_2
        L11_2(L12_2, L13_2, L14_2, L15_2)
      end
    end
    L11_2 = StartClient
    L12_2 = L2_2
    L13_2 = "RenderVehicleFlash"
    L14_2 = A0_2
    L11_2(L12_2, L13_2, L14_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:deployProp"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  if not A0_2 then
    return
  end
  L2_2 = UsedItemsCache
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L2_2 = UsedItemsCache
    L2_2[L1_2] = nil
  end
  L2_2 = L0_1
  if L2_2 then
    L2_2 = next
    L3_2 = L0_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = checkIfPlaceOccupied
      L3_2 = L1_2
      L4_2 = L0_1
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L3_2 = Framework
        L3_2 = L3_2.sendNotification
        L4_2 = L1_2
        L5_2 = _U
        L6_2 = "PROPS.CANNOT_PLACE_ON_ANOTHER_OBJECT"
        L5_2 = L5_2(L6_2)
        L6_2 = "error"
        L3_2(L4_2, L5_2, L6_2)
        return
      end
    end
  end
  L2_2 = Config
  L2_2 = L2_2.Props
  L2_2 = L2_2.ModelDataByPropType
  L3_2 = A0_2.type
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.itemName
  end
  L4_2 = Config
  L4_2 = L4_2.Props
  L4_2 = L4_2.CheckHasItem
  if L4_2 and L3_2 then
    L4_2 = InventoryService
    L4_2 = L4_2.hasItem
    L5_2 = L1_2
    L6_2 = L3_2
    L7_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if not L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.sendNotification
      L5_2 = L1_2
      L6_2 = _U
      L7_2 = "PROPS.YOU_DONT_HAVE_ITEM_IN_INVENTORY"
      L8_2 = L3_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = "error"
      return L4_2(L5_2, L6_2, L7_2)
    end
  end
  L4_2 = L0_1
  L4_2 = #L4_2
  L4_2 = L4_2 + 1
  L5_2 = L0_1
  L5_2[L4_2] = A0_2
  L5_2 = Framework
  L5_2 = L5_2.getJob
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L6_2 = L5_2.name
    if not L6_2 then
      L6_2 = nil
    end
    A0_2.job = L6_2
  end
  L6_2 = Framework
  L6_2 = L6_2.getCharacterShortName
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = Framework
  L7_2 = L7_2.getIdentifier
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  L8_2 = Utils
  L8_2 = L8_2.Log
  L9_2 = "Objects"
  L10_2 = "Player named %s (%s) (%s) placed object %s at coords: %s"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = source
  L15_2 = A0_2.type
  L16_2 = A0_2.pos
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = StartClient
  L9_2 = -1
  L10_2 = "syncObjectPool"
  L11_2 = L4_2
  L12_2 = A0_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  if L2_2 and L3_2 then
    L8_2 = Config
    L8_2 = L8_2.Props
    L8_2 = L8_2.TakeItemWhenPlacingProp
    if L8_2 then
      L8_2 = InventoryService
      L8_2 = L8_2.removeItem
      L9_2 = L1_2
      L10_2 = L3_2
      L11_2 = 1
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:resetPropDeployState"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  if not A0_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.initiator
  if L2_2 and L2_2 == L1_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "Pool was restarted for user named %s"
    L5_2 = GetPlayerName
    L6_2 = L1_2
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = L1_1
    L3_2[A0_2] = nil
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:requestRemoveProp"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  if not A0_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = L2_2
    L5_2 = _U
    L6_2 = "PROPS.ALREADY_PICKING_UP"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Props
  L3_2 = L3_2.ModelDataByPropType
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = L3_2.needItem
    if L4_2 then
      L4_2 = InventoryService
      L4_2 = L4_2.hasItem
      L5_2 = L2_2
      L6_2 = L3_2.needItem
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L4_2 = Framework
        L4_2 = L4_2.sendNotification
        L5_2 = L2_2
        L6_2 = _U
        L7_2 = "PROPS.OBJECT_REQUIRES_ITEM_FOR_PICKUP"
        L8_2 = L3_2.needItemLabel
        if not L8_2 then
          L8_2 = L3_2.needItem
        end
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = "error"
        L4_2(L5_2, L6_2, L7_2)
        return
      end
    end
  end
  L4_2 = L1_1
  L5_2 = {}
  L5_2.initiator = L2_2
  L4_2[A0_2] = L5_2
  L4_2 = StartClient
  L5_2 = L2_2
  L6_2 = "StartRemovingPropTask"
  L7_2 = A0_2
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:removePropDeploy"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  if not A0_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Props
    L3_2 = L3_2.ModelDataByPropType
    L3_2 = L3_2[A1_2]
    L4_2 = L1_1
    L4_2 = L4_2[A0_2]
    if L4_2 then
      L4_2 = L1_1
      L4_2[A0_2] = nil
    end
    if L3_2 then
      L4_2 = L3_2.needItem
      if L4_2 then
        L4_2 = InventoryService
        L4_2 = L4_2.hasItem
        L5_2 = L2_2
        L6_2 = L3_2.needItem
        L4_2 = L4_2(L5_2, L6_2)
        if not L4_2 then
          L4_2 = Framework
          L4_2 = L4_2.sendNotification
          L5_2 = L2_2
          L6_2 = _U
          L7_2 = "PROPS.OBJECT_REQUIRES_ITEM_FOR_PICKUP"
          L8_2 = L3_2.needItemLabel
          if not L8_2 then
            L8_2 = L3_2.needItem
          end
          L6_2 = L6_2(L7_2, L8_2)
          L7_2 = "error"
          L4_2(L5_2, L6_2, L7_2)
          return
        end
      end
    end
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = L0_1
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = StartClient
    L5_2 = -1
    L6_2 = "syncObjectPool"
    L7_2 = A0_2
    L8_2 = nil
    L4_2(L5_2, L6_2, L7_2, L8_2)
    if L3_2 then
      L4_2 = Config
      L4_2 = L4_2.Props
      L4_2 = L4_2.ReturnItemWhenRemoveProp
      if L4_2 then
        L4_2 = L3_2.itemName
        if L4_2 then
          L5_2 = InventoryService
          L5_2 = L5_2.addItem
          L6_2 = L2_2
          L7_2 = L4_2
          L8_2 = 1
          L5_2(L6_2, L7_2, L8_2)
        end
      end
    end
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = L2_2
    L6_2 = _U
    L7_2 = "PROPS.OBJECT_PICKED_UP"
    L6_2 = L6_2(L7_2)
    L7_2 = "success"
    L4_2(L5_2, L6_2, L7_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:unregisterDeploy"
function L4_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = UsedItemsCache
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = UsedItemsCache
    L1_2[L0_2] = nil
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = false
  if A1_2 then
    L3_2 = next
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = pairs
      L4_2 = A1_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = GetPlayerPed
        L10_2 = A0_2
        L9_2 = L9_2(L10_2)
        L10_2 = GetEntityCoords
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        L11_2 = L8_2.pos
        L12_2 = L11_2 - L10_2
        L12_2 = #L12_2
        L13_2 = Config
        L13_2 = L13_2.Props
        L13_2 = L13_2.DistanceBetweenProps
        L14_2 = L8_2.type
        L15_2 = PROP_TYPES
        L15_2 = L15_2.WHEEL_CLAMP
        if L14_2 == L15_2 then
          L14_2 = Config
          L14_2 = L14_2.Props
          L13_2 = L14_2.DistanceBetweenWheelClamp
        end
        if L12_2 <= L13_2 then
          L2_2 = true
        end
      end
    end
  end
  return L2_2
end
checkIfPlaceOccupied = L2_1
