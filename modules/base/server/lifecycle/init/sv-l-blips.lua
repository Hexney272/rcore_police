local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.__index = L0_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = L0_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.JobGroups
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2 in L4_2, L5_2, L6_2, L7_2 do
    L3_2[L8_2] = true
  end
  L2_2.entityId = A0_2
  L2_2.active = true
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = L3_2
  end
  L2_2.visibleTo = L4_2
  L2_2.lastCoords = nil
  L2_2.lastUpdate = 0
  L4_2 = {}
  L2_2.activeViewers = L4_2
  return L2_2
end
L0_1.new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.isEntityValid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = nil
  ::lbl_15::
  return L2_2
end
L0_1.getCoords = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlayerPed
  L2_2 = A0_2.entityId
  L1_2 = L1_2(L2_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = GetVehiclePedIsIn
    L3_2 = L1_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = nil
  ::lbl_16::
  L3_2 = TRACK_TYPE
  L3_2 = L3_2.PED
  L4_2 = A0_2.entityId
  return L3_2, L4_2
end
L0_1.getTrackType = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2.lastCoords
  L3_2 = not L3_2
  if L3_2 then
    L4_2 = 3000
    if L4_2 then
      goto lbl_22
    end
  end
  L4_2 = 10000
  ::lbl_22::
  L5_2 = A0_2.lastUpdate
  if not L5_2 then
    L5_2 = 0
  end
  L5_2 = A2_2 - L5_2
  L5_2 = L4_2 < L5_2
  L6_2 = L3_2 or L6_2
  if not L3_2 then
    L6_2 = L5_2
  end
  L7_2 = L3_2
  return L6_2, L7_2
end
L0_1.shouldUpdate = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2.lastCoords = A1_2
  A0_2.lastUpdate = A2_2
end
L0_1.markUpdated = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = {}
  L2_2 = A0_2.visibleTo
  L2_2 = L2_2.everyone
  if L2_2 then
    L2_2 = GetPlayers
    L2_2 = L2_2()
    L1_2 = L2_2
  else
    L2_2 = pairs
    L3_2 = A0_2.visibleTo
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if L7_2 then
        L8_2 = GroupsService
        L8_2 = L8_2.GetGroupPlayersByDerpartmentName
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        L9_2 = ipairs
        L10_2 = L8_2
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L15_2 = table
          L15_2 = L15_2.insert
          L16_2 = L1_2
          L17_2 = tonumber
          L18_2 = L14_2
          L17_2, L18_2 = L17_2(L18_2)
          L15_2(L16_2, L17_2, L18_2)
        end
      end
    end
  end
  return L1_2
end
L0_1.getViewers = L1_1
L1_1 = {}
L2_1 = {}
L1_1.trackers = L2_1
L2_1 = {}
L1_1.subscriptions = L2_1
TrackerManager = L1_1
L1_1 = TrackerManager
L2_1 = TrackerManager
L1_1.__index = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.trackers
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.unregister
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  else
    L3_2 = A0_2.trackers
    L4_2 = L0_1.new
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2[A1_2] = L4_2
    L3_2 = true
    return L3_2
  end
end
L1_1.toggleTracker = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2.trackers
  L4_2 = L4_2[A1_2]
  L4_2 = nil ~= L4_2
  if A2_2 and not L4_2 then
    L5_2 = A0_2.trackers
    L6_2 = L0_1.new
    L7_2 = A1_2
    L8_2 = A3_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2[A1_2] = L6_2
    L5_2 = true
    return L5_2
  elseif not A2_2 and L4_2 then
    L6_2 = A0_2
    L5_2 = A0_2.unregister
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
    L5_2 = false
    return L5_2
  end
  return L4_2
end
L1_1.setTrackerState = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.trackers
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    return
  end
  L4_2 = L2_2
  L3_2 = L2_2.getViewers
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.sendRemoveBlip
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2.trackers
  L4_2[A1_2] = nil
end
L1_1.unregister = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = A0_2.subscriptions
  L2_2 = L2_2[A1_2]
  if nil == L2_2 then
    L2_2 = A0_2.subscriptions
    L2_2[A1_2] = true
  else
    L2_2 = A0_2.subscriptions
    L3_2 = A0_2.subscriptions
    L3_2 = L3_2[A1_2]
    L3_2 = not L3_2
    L2_2[A1_2] = L3_2
  end
  L2_2 = A0_2.subscriptions
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = "ENABLED"
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = "DISABLED"
  ::lbl_21::
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Player %s toggled subscription \226\134\146 %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A1_2
  L7_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Current subscriptions: %s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A0_2.subscriptions
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L6_2(L7_2)
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L3_2 = A0_2.subscriptions
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = pairs
    L4_2 = A0_2.trackers
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.activeViewers
      L9_2 = L9_2[A1_2]
      if L9_2 then
        L9_2 = TriggerClientEvent
        L10_2 = "rcore_police:client:removeBlip"
        L11_2 = A1_2
        L12_2 = L7_2
        L9_2(L10_2, L11_2, L12_2)
        L9_2 = L8_2.activeViewers
        L9_2[A1_2] = nil
      end
    end
  else
    L3_2 = {}
    L4_2 = pairs
    L5_2 = A0_2.trackers
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L11_2 = L9_2
      L10_2 = L9_2.getViewers
      L10_2 = L10_2(L11_2)
      L11_2 = ipairs
      L12_2 = L10_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        if L16_2 == A1_2 then
          L18_2 = L9_2
          L17_2 = L9_2.getCoords
          L17_2 = L17_2(L18_2)
          if L17_2 then
            L19_2 = L9_2
            L18_2 = L9_2.getTrackType
            L18_2 = L18_2(L19_2)
            L19_2 = table
            L19_2 = L19_2.insert
            L20_2 = L3_2
            L21_2 = {}
            L21_2.id = L8_2
            L21_2.coords = L17_2
            L21_2.type = L18_2
            L19_2(L20_2, L21_2)
            L19_2 = L9_2.activeViewers
            L19_2[A1_2] = true
          end
          break
        end
      end
    end
    L4_2 = #L3_2
    if L4_2 > 0 then
      L4_2 = TriggerClientEvent
      L5_2 = "rcore_police:client:updateBlipsBatch"
      L6_2 = A1_2
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L3_2 = A0_2.subscriptions
  L3_2 = L3_2[A1_2]
  return L3_2
end
L1_1.toggleSubscription = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.subscriptions
  L2_2[A1_2] = true
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Player %s subscribed (auto)"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L1_1.subscribe = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Player %s unsubscribed/left"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.subscriptions
  L2_2[A1_2] = nil
end
L1_1.unsubscribe = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = TrackerManager
  L4_2 = L3_2
  L3_2 = L3_2.handleLostItem
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = A0_2.subscriptions
  L3_2 = L3_2[A1_2]
  L3_2 = true == L3_2
  L4_2 = dbg
  L4_2 = L4_2.debug
  L5_2 = "canViewerSee \226\134\146 player %s subscribed = %s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A1_2
  L8_2 = tostring
  L9_2 = L3_2
  L8_2, L9_2 = L8_2(L9_2)
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L1_1.canViewerSee = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = TriggerClientEvent
    L10_2 = "rcore_police:client:removeBlip"
    L11_2 = L8_2
    L12_2 = A1_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L1_1.sendRemoveBlip = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L7_2
    if L8_2 > 0 then
      L8_2 = TriggerLatentClientEvent
      L9_2 = "rcore_police:client:updateBlipsBatch"
      L10_2 = L6_2
      L11_2 = 10000
      L12_2 = L7_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L1_1.sendUpdates = L2_1
L1_1 = TrackerManager
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.Blips
  L2_2 = L2_2.GPS
  L2_2 = L2_2.RequireItem
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Blips
    L2_2 = L2_2.GPS
    L2_2 = L2_2.ItemName
    if L2_2 then
      goto lbl_15
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_15::
  L2_2 = InventoryService
  L2_2 = L2_2.hasItem
  L3_2 = A1_2
  L4_2 = Config
  L4_2 = L4_2.Blips
  L4_2 = L4_2.GPS
  L4_2 = L4_2.ItemName
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "[GPS] Target %s lost item '%s', removing tracker."
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = A1_2
    L7_2 = Config
    L7_2 = L7_2.Blips
    L7_2 = L7_2.GPS
    L7_2 = L7_2.ItemName
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2.unsubscribe
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.unregister
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = true
  return L3_2
end
L1_1.handleLostItem = L2_1
L1_1 = TrackerManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = Config
  L1_2 = L1_2.Blips
  L1_2 = L1_2.Enable
  if not L1_2 then
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2.trackers
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.active
    if L9_2 then
      L10_2 = L8_2
      L9_2 = L8_2.isEntityValid
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = L8_2
        L9_2 = L8_2.getCoords
        L9_2 = L9_2(L10_2)
        L11_2 = L8_2
        L10_2 = L8_2.getTrackType
        L10_2, L11_2 = L10_2(L11_2)
        L13_2 = L8_2
        L12_2 = L8_2.shouldUpdate
        L14_2 = L9_2
        L15_2 = L1_2
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        if L12_2 then
          L14_2 = L8_2
          L13_2 = L8_2.markUpdated
          L15_2 = L9_2
          L16_2 = L1_2
          L13_2(L14_2, L15_2, L16_2)
          L14_2 = L8_2
          L13_2 = L8_2.getViewers
          L13_2 = L13_2(L14_2)
          L14_2 = dbg
          L14_2 = L14_2.debug
          L15_2 = "Entity %s has %d viewers: %s"
          L16_2 = L15_2
          L15_2 = L15_2.format
          L17_2 = L7_2
          L18_2 = #L13_2
          L19_2 = json
          L19_2 = L19_2.encode
          L20_2 = L13_2
          L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L19_2(L20_2)
          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L14_2 = ipairs
          L15_2 = L13_2
          L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
          for L18_2, L19_2 in L14_2, L15_2, L16_2, L17_2 do
            L21_2 = A0_2
            L20_2 = A0_2.canViewerSee
            L22_2 = L19_2
            L23_2 = L7_2
            L20_2 = L20_2(L21_2, L22_2, L23_2)
            if L20_2 then
              L21_2 = dbg
              L21_2 = L21_2.debug
              L22_2 = "Adding update for viewer %s \226\134\146 entity %s"
              L23_2 = L22_2
              L22_2 = L22_2.format
              L24_2 = L19_2
              L25_2 = L11_2
              L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2, L24_2, L25_2)
              L21_2(L22_2, L23_2, L24_2, L25_2)
              L21_2 = L2_2[L19_2]
              if not L21_2 then
                L21_2 = {}
              end
              L2_2[L19_2] = L21_2
              L21_2 = table
              L21_2 = L21_2.insert
              L22_2 = L2_2[L19_2]
              L23_2 = {}
              L23_2.id = L7_2
              L23_2.coords = L9_2
              L23_2.type = L10_2
              L21_2(L22_2, L23_2)
              L21_2 = L8_2.activeViewers
              L21_2[L19_2] = true
            else
              L21_2 = L8_2.activeViewers
              L21_2 = L21_2[L19_2]
              if L21_2 then
                L21_2 = dbg
                L21_2 = L21_2.debug
                L22_2 = "Viewer %s lost subscription, removing blip"
                L23_2 = L22_2
                L22_2 = L22_2.format
                L24_2 = L19_2
                L22_2, L23_2, L24_2, L25_2 = L22_2(L23_2, L24_2)
                L21_2(L22_2, L23_2, L24_2, L25_2)
                L21_2 = TriggerClientEvent
                L22_2 = "rcore_police:client:removeBlip"
                L23_2 = L19_2
                L24_2 = L7_2
                L21_2(L22_2, L23_2, L24_2)
                L21_2 = L8_2.activeViewers
                L21_2[L19_2] = nil
              end
            end
          end
        end
      end
    end
  end
  L3_2 = next
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "Sending updates to %d viewers"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = #L2_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    L4_2 = A0_2
    L3_2 = A0_2.sendUpdates
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "No updates this tick"
    L3_2(L4_2)
  end
end
L1_1.tick = L2_1
L1_1 = AddEventHandler
L2_1 = "playerDropped"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = TrackerManager
  L2_2 = L1_2
  L1_2 = L1_2.unsubscribe
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
  L1_2 = TrackerManager
  L2_2 = L1_2
  L1_2 = L1_2.unregister
  L3_2 = L0_2
  L1_2(L2_2, L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "rcore_police:server:playerUnloaded"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = TrackerManager
  L3_2 = L2_2
  L2_2 = L2_2.unsubscribe
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = TrackerManager
  L3_2 = L2_2
  L2_2 = L2_2.unregister
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Blips
  L0_2 = L0_2.Enable
  if not L0_2 then
    return
  end
  while true do
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = TrackerManager
    L1_2 = L0_2
    L0_2 = L0_2.tick
    L0_2(L1_2)
  end
end
L1_1(L2_1)
