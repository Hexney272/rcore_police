local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = AddEventHandler
L3_1 = "rcore_police:server:playerUnloaded"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L1_2 = HasPlayerActiveBodyCam
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = UnregisterPlayerBodyCam
    L4_2 = A0_2
    L5_2 = L2_2
    return L3_2(L4_2, L5_2)
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
      L3_2 = "SyncBodyCamsPoolForUser"
      L4_2 = L0_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
  L1_2 = L1_1
  if L1_2 then
    L1_2 = next
    L2_2 = L1_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = StartClient
      L2_2 = A0_2
      L3_2 = "SyncDecoyPedPoolForUser"
      L4_2 = L1_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:requestSpectateStarted"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 then
    return
  end
  if not A3_2 then
    return
  end
  L4_2 = HasPlayerActiveBodyCam
  L5_2 = A3_2
  L4_2, L5_2 = L4_2(L5_2)
  L6_2 = NetworkGetEntityFromNetworkId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if L4_2 then
    L7_2 = DoesEntityExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = {}
      L7_2.cameraId = L5_2
      L7_2.initiator = A3_2
      L8_2 = source
      L7_2.target = L8_2
      L7_2.netId = A0_2
      L7_2.tabletNetId = A1_2
      L8_2 = L1_1
      L8_2 = #L8_2
      L8_2 = L8_2 + 1
      L9_2 = L1_1
      L9_2[L8_2] = L7_2
      L9_2 = TriggerEvent
      L10_2 = "rcore_police:server:SetBodyCamState"
      L11_2 = source
      L12_2 = true
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = StartClient
      L10_2 = -1
      L11_2 = "RegisterDecoyPed"
      L12_2 = L8_2
      L13_2 = L7_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:requestDeleteDecoyPed"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A0_2 then
    return
  end
  L1_2 = source
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = HasPlayerActiveDecoyPed
  L4_2 = L1_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = DoesEntityExist
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = GetPlayerPed
    L6_2 = source
    L5_2 = L5_2(L6_2)
    L6_2 = GetEntityCoords
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = GetEntityCoords
    L8_2 = L2_2
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2 - L6_2
    L8_2 = #L8_2
    if L8_2 <= 10.0 then
      L9_2 = DeleteEntity
      L10_2 = L2_2
      L9_2(L10_2)
    end
  end
  if L3_2 then
    L5_2 = table
    L5_2 = L5_2.remove
    L6_2 = L1_1
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = StartClient
    L6_2 = -1
    L7_2 = "RemoveDecoyPed"
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
        L7_2 = L6_2.target
        if L7_2 == A0_2 then
          L7_2 = true
          L8_2 = L5_2
          return L7_2, L8_2
        end
      end
    end
  end
end
HasPlayerActiveDecoyPed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = next
    L2_2 = L0_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = pairs
      L2_2 = L0_1
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L6_2.playerId
        if L7_2 == A0_2 then
          L7_2 = true
          L8_2 = L5_2
          return L7_2, L8_2
        end
      end
    end
  end
end
HasPlayerActiveBodyCam = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Player named %s has removed his bodycam!"
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Framework
  L2_2 = L2_2.sendNotification
  L3_2 = A0_2
  L4_2 = _U
  L5_2 = "BODYCAMS.DEACTIVATED"
  L4_2 = L4_2(L5_2)
  L5_2 = "success"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.remove
  L3_2 = L0_1
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = StartClient
  L3_2 = -1
  L4_2 = "RemoveBodyCam"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
UnregisterPlayerDecoyPed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Player named %s has removed his bodycam!"
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Framework
  L2_2 = L2_2.sendNotification
  L3_2 = A0_2
  L4_2 = _U
  L5_2 = "BODYCAMS.DEACTIVATED"
  L4_2 = L4_2(L5_2)
  L5_2 = "success"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = table
  L2_2 = L2_2.remove
  L3_2 = L0_1
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = TriggerEvent
  L3_2 = "rcore_police:server:setBodyCamState"
  L4_2 = A0_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = StartClient
  L3_2 = -1
  L4_2 = "RemoveBodyCam"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
UnregisterPlayerBodyCam = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Register player bodycam: %s"
  L3_2 = GetPlayerName
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = HasPlayerActiveBodyCam
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  if L1_2 then
    L3_2 = UnregisterPlayerBodyCam
    L4_2 = A0_2
    L5_2 = L2_2
    return L3_2(L4_2, L5_2)
  end
  L3_2 = {}
  L3_2.playerId = A0_2
  L4_2 = GetEntityCoords
  L5_2 = GetPlayerPed
  L6_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.playerCoords = L4_2
  L4_2 = Framework
  L4_2 = L4_2.getCharacterShortName
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.officerName = L4_2
  L3_2.location = ""
  L4_2 = L0_1
  L4_2 = #L4_2
  L5_2 = L4_2 + 1
  L4_2 = L0_1
  L4_2[L5_2] = L3_2
  L4_2 = dbg
  L4_2 = L4_2.debug
  L5_2 = "Player named %s has activated his bodycam!"
  L6_2 = GetPlayerName
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Framework
  L4_2 = L4_2.sendNotification
  L5_2 = A0_2
  L6_2 = _U
  L7_2 = "BODYCAMS.ACTIVATED"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = TriggerEvent
  L5_2 = "rcore_police:server:SetBodyCamState"
  L6_2 = A0_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = StartClient
  L5_2 = -1
  L6_2 = "RegisterBodyCam"
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
RegisterPlayerBodyCam = L2_1
