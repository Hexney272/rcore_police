local L0_1, L1_1, L2_1
L0_1 = {}
UtilsService = L0_1
L0_1 = false
L1_1 = UtilsService
function L2_1()
  local L0_2, L1_2
  L0_2 = false
  L0_1 = L0_2
end
L1_1.StopCurrentFade = L2_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if not A0_2 then
    return
  end
  if not A1_2 then
    return
  end
  if not A2_2 then
    return
  end
  L3_2 = true
  L0_1 = L3_2
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = GetGameTimer
    L0_3 = L0_3()
    L1_3 = A1_2
    if "fadeIn" == L1_3 then
      L1_3 = 0
      if L1_3 then
        goto lbl_10
      end
    end
    L1_3 = 255
    ::lbl_10::
    L2_3 = A1_2
    if "fadeIn" == L2_3 then
      L2_3 = 255
      if L2_3 then
        goto lbl_17
      end
    end
    L2_3 = 0
    ::lbl_17::
    L3_3 = A1_2
    if "fadeIn" == L3_3 then
      L3_3 = 1
      if L3_3 then
        goto lbl_24
      end
    end
    L3_3 = -1
    ::lbl_24::
    while true do
      L4_3 = L0_1
      if not L4_3 then
        break
      end
      L4_3 = GetGameTimer
      L4_3 = L4_3()
      L5_3 = L4_3 - L0_3
      L6_3 = A2_2
      L6_3 = L5_3 / L6_3
      L7_3 = math
      L7_3 = L7_3.floor
      L8_3 = L6_3 * 255
      L8_3 = L8_3 * L3_3
      L8_3 = L1_3 + L8_3
      L7_3 = L7_3(L8_3)
      L8_3 = 255
      if L7_3 > L8_3 then
        L7_3 = 255
      end
      if L7_3 < 0 then
        L7_3 = 0
      end
      L8_3 = SetEntityAlpha
      L9_3 = A0_2
      L10_3 = L7_3
      L11_3 = false
      L8_3(L9_3, L10_3, L11_3)
      L8_3 = A1_2
      if "fadeIn" == L8_3 then
        L8_3 = 255
        if L7_3 >= L8_3 then
          goto lbl_66
        end
      end
      L8_3 = A1_2
      ::lbl_66::
      if "fadeOut" == L8_3 and L7_3 <= 0 then
        L8_3 = A1_2
        if "fadeOut" == L8_3 then
          L8_3 = DeleteEntity
          L9_3 = A0_2
          L8_3(L9_3)
          break
        end
        L8_3 = SetTimeout
        L9_3 = 400
        function L10_3()
          local L0_4, L1_4
          L0_4 = DeleteEntity
          L1_4 = A0_2
          L0_4(L1_4)
        end
        L8_3(L9_3, L10_3)
        break
      end
      L8_3 = Wait
      L9_3 = 50
      L8_3(L9_3)
    end
  end
  L3_2(L4_2)
end
L1_1.HandleEntityFade = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = HasAnimDictLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = 0
  while true do
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 10
    L2_2(L3_2)
    L1_2 = L1_2 + 1
    if L1_2 >= 50 then
      break
    end
  end
  L2_2 = HasAnimDictLoaded
  L3_2 = A0_2
  return L2_2(L3_2)
end
L1_1.LoadAnimationDict = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Object
  L1_2 = L1_2.getHash
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2
  L1_2 = HasModelLoaded
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = RequestModel
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = 0
    while true do
      L2_2 = HasModelLoaded
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        break
      end
      L2_2 = Wait
      L3_2 = 10
      L2_2(L3_2)
      L1_2 = L1_2 + 1
      if L1_2 >= 50 then
        L2_2 = dbg
        L2_2 = L2_2.critical
        L3_2 = "Failed to load model: %s!"
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
        break
      end
    end
  end
  L1_2 = HasModelLoaded
  L2_2 = A0_2
  return L1_2(L2_2)
end
L1_1.LoadModel = L2_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A3_2 then
    A3_2 = false
  end
  if not A2_2 then
    A2_2 = false
  end
  L5_2 = nil
  if A4_2 then
    L6_2 = CreateObjectNoOffset
    L7_2 = A0_2
    L8_2 = A1_2.x
    L9_2 = A1_2.y
    L10_2 = A1_2.z
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L6_2
  else
    L6_2 = CreateObject
    L7_2 = A0_2
    L8_2 = A1_2.x
    L9_2 = A1_2.y
    L10_2 = A1_2.z
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = false
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    L5_2 = L6_2
  end
  L6_2 = 0
  while true do
    L7_2 = DoesEntityExist
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      break
    end
    L7_2 = Wait
    L8_2 = 0
    L7_2(L8_2)
    L6_2 = L6_2 + 1
    if L6_2 >= 50 then
      L7_2 = dbg
      L7_2 = L7_2.critical
      L8_2 = "Failed to spawn object named: %s"
      L9_2 = A0_2
      L7_2(L8_2, L9_2)
      break
    end
  end
  return L5_2
end
L1_1.SpawnObject = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L1_2 = nil
    L2_2 = false
    return L1_2, L2_2
  end
  L1_2 = GetPlayerFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    L3_2 = false
    return L2_2, L3_2
  end
  if -1 == L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Failed to get player from serverId: %s got: %s not in same scope!"
    L4_2 = A0_2
    L5_2 = L1_2
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = GetPlayerPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "GetPlayerPedFromServerId: Returning with playerPed (%s) for serverId %s"
  L5_2 = L2_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L2_2
  L4_2 = true
  return L3_2, L4_2
end
L1_1.GetPlayerPedFromServerId = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "GetServerIdFromPed: Requesting playerIndex 1/3"
  L1_2(L2_2)
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = NetworkGetPlayerIndexFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "GetServerIdFromPed: Got player index (%s) rquesting playerId 2/3"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = GetPlayerServerId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "GetServerIdFromPed: Returning playerId (%s) 3/3"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  return L2_2
end
L1_1.GetServerIdFromPed = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = NetworkGetPlayerIndexFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  return L1_2
end
L1_1.GetPlayerIndexFromPed = L2_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetLastPedInVehicleSeat
  L3_2 = A0_2
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L1_1.GetPedFromVehicleSeatIndex = L2_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  if not A0_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "AttachFromPedToTarget: Failed to attached ped since initiator ped is not defined"
    return L3_2(L4_2)
  end
  if not A1_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "AttachFromPedToTarget: Failed to attached ped since targetPed ped is not defined"
    return L3_2(L4_2)
  end
  L3_2 = UtilsService
  L3_2 = L3_2.GetPlayerIndexFromPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = UtilsService
  L4_2 = L4_2.GetServerIdFromPed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if A2_2 then
    L5_2 = A2_2.boneIndex
    if L5_2 then
      goto lbl_29
    end
  end
  L5_2 = 11816
  ::lbl_29::
  if A2_2 then
    L6_2 = A2_2.offset
    if L6_2 then
      goto lbl_38
    end
  end
  L6_2 = vector2
  L7_2 = 0.25
  L8_2 = 0.25
  L6_2 = L6_2(L7_2, L8_2)
  ::lbl_38::
  if A2_2 then
    L7_2 = A2_2.rot
    if L7_2 then
      goto lbl_49
    end
  end
  L7_2 = vector4
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  ::lbl_49::
  L8_2 = false
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L12_2 = 2
  if A2_2 then
    L13_2 = A2_2.syncRot
    if L13_2 then
      goto lbl_60
    end
  end
  L13_2 = true
  ::lbl_60::
  if L3_2 then
    L14_2 = dbg
    L14_2 = L14_2.debug
    L15_2 = "AttachFromPedToTarget: Loading attach for you with this serverId (%s) by player named %s"
    L16_2 = L4_2
    L17_2 = GetPlayerName
    L18_2 = L3_2
    L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2 = L17_2(L18_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  end
  L14_2 = Wait
  L15_2 = 0
  L14_2(L15_2)
  L14_2 = AttachEntityToEntity
  L15_2 = A1_2
  L16_2 = A0_2
  L17_2 = L5_2
  L18_2 = L6_2.x
  L19_2 = L6_2.y
  L20_2 = L7_2.x
  L21_2 = L7_2.y
  L22_2 = L7_2.z
  L23_2 = L7_2.w
  L24_2 = L8_2
  L25_2 = L9_2
  L26_2 = L10_2
  L27_2 = L11_2
  L28_2 = L12_2
  L29_2 = L13_2
  L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
  L14_2 = IsEntityAttachedToEntity
  L15_2 = A1_2
  L16_2 = A0_2
  L14_2 = L14_2(L15_2, L16_2)
  return L14_2
end
L1_1.AttachFromPedToTarget = L2_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = math
  L3_2 = L3_2.huge
  L4_2 = ipairs
  L5_2 = GetActivePlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerPed
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 ~= L0_2 then
      L11_2 = GetEntityCoords
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = L1_2 - L11_2
      L12_2 = #L12_2
      if L3_2 > L12_2 then
        L3_2 = L12_2
        L2_2 = L9_2
      end
    end
  end
  return L2_2
end
getClosestPlayerToMe = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.sqrt
  L3_2 = A0_2.x
  L3_2 = L3_2 ^ 2
  L4_2 = A0_2.y
  L4_2 = L4_2 ^ 2
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2.z
  L4_2 = L4_2 ^ 2
  L3_2 = L3_2 + L4_2
  L2_2 = L2_2(L3_2)
  if 0 == L2_2 then
    L3_2 = {}
    L3_2.x = 0
    L3_2.y = 0
    L3_2.z = 0
    return L3_2
  end
  L3_2 = {}
  L4_2 = A0_2.x
  L4_2 = L4_2 / L2_2
  L4_2 = L4_2 * A1_2
  L3_2.x = L4_2
  L4_2 = A0_2.y
  L4_2 = L4_2 / L2_2
  L4_2 = L4_2 * A1_2
  L3_2.y = L4_2
  L4_2 = A0_2.z
  L4_2 = L4_2 / L2_2
  L4_2 = L4_2 * A1_2
  L3_2.z = L4_2
  return L3_2
end
normalizeAndScaleVector = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2
  L3_2 = 0
  L4_2 = A2_2 * 1000
  L5_2 = 30
  L6_2 = L4_2 / L5_2
  L7_2 = 0
  L8_2 = L5_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L10_2 / L5_2
    L3_2 = L11_2 * 100
    L11_2 = math
    L11_2 = L11_2.random
    L12_2 = 180
    L13_2 = 255
    L11_2 = L11_2(L12_2, L13_2)
    L12_2 = math
    L12_2 = L12_2.random
    L13_2 = 180
    L14_2 = 255
    L12_2 = L12_2(L13_2, L14_2)
    L13_2 = math
    L13_2 = L13_2.random
    L14_2 = 180
    L15_2 = 255
    L13_2 = L13_2(L14_2, L15_2)
    L14_2 = vec3
    L15_2 = 2.0
    L16_2 = 3.0
    L17_2 = 0
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = {}
    L16_2 = A1_2.x
    L17_2 = A0_2.x
    L16_2 = L16_2 - L17_2
    L15_2.x = L16_2
    L16_2 = A1_2.y
    L17_2 = A0_2.y
    L16_2 = L16_2 - L17_2
    L15_2.y = L16_2
    L16_2 = A1_2.z
    L17_2 = A0_2.z
    L16_2 = L16_2 - L17_2
    L15_2.z = L16_2
    L16_2 = normalizeAndScaleVector
    L17_2 = L15_2
    L18_2 = 0.1
    L16_2 = L16_2(L17_2, L18_2)
    L15_2 = L16_2
    L16_2 = DrawSpotLight
    L17_2 = A0_2.x
    L18_2 = A0_2.y
    L19_2 = A0_2.z
    L20_2 = L15_2.x
    L21_2 = L15_2.y
    L22_2 = L15_2.z
    L23_2 = L11_2
    L24_2 = L12_2
    L25_2 = L13_2
    L26_2 = 50.0
    L27_2 = L3_2
    L28_2 = 0.0
    L29_2 = 25.0
    L30_2 = 30.0
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2)
    L16_2 = Wait
    L17_2 = L6_2
    L16_2(L17_2)
  end
end
fadeInFlashlight = L1_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetEntityCoords
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityForwardVector
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = A1_2.x
  L6_2 = L2_2.x
  L5_2 = L5_2 - L6_2
  L6_2 = A1_2.y
  L7_2 = L2_2.y
  L6_2 = L6_2 - L7_2
  L7_2 = 0.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L6_2 = #L4_2
  L6_2 = L4_2 / L6_2
  L7_2 = L5_2.x
  L8_2 = L6_2.x
  L7_2 = L7_2 * L8_2
  L8_2 = L5_2.y
  L9_2 = L6_2.y
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L5_2.z
  L9_2 = L6_2.z
  L8_2 = L8_2 * L9_2
  L7_2 = L7_2 + L8_2
  L8_2 = L7_2 > 0
  return L8_2
end
L1_1.IsTargetInFrontOfPed = L2_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if not A0_2 then
    return
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = A0_2
  L4_2 = UtilsService
  L4_2 = L4_2.GetPlayerPedFromServerId
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = IsInDev
  if L5_2 then
    L5_2 = "back"
    return L5_2
  elseif L2_2 == L4_2 then
    L5_2 = getClosestPlayerToMe
    L5_2 = L5_2()
    if L5_2 then
      L6_2 = GetPlayerPed
      L7_2 = L5_2
      L6_2 = L6_2(L7_2)
      L4_2 = L6_2
    else
      L6_2 = "no_target"
      return L6_2
    end
  end
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = IsPedFacingPed
  L7_2 = L5_2
  L8_2 = L4_2
  L9_2 = 90.0
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = nil
  if A1_2 then
    L8_2 = IsPedFacingPed
    L9_2 = L4_2
    L10_2 = L5_2
    L11_2 = 40.0
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2 = L8_2
  end
  if L6_2 then
    L7_2 = "front"
  else
    L7_2 = "back"
  end
  return L7_2
end
L1_1.IsPlayerInFrontOrBehind = L2_1
L1_1 = UtilsService
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityForwardVector
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * L2_2
  L5_2 = L3_2 + L5_2
  return L5_2
end
L1_1.GetTargetOffset = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if A0_2 then
    L3_2 = next
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = pairs
      L4_2 = A0_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2
        L10_2 = GetOffsetFromEntityInWorldCoords
        L11_2 = L2_2
        L12_2 = 0.0
        L13_2 = 0.0
        L14_2 = 0.0
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
        L11_2 = GetPedBoneIndex
        L12_2 = L2_2
        L13_2 = L9_2.bone
        if not L13_2 then
          L13_2 = 60309
        end
        L11_2 = L11_2(L12_2, L13_2)
        L12_2 = UtilsService
        L12_2 = L12_2.SpawnObject
        L13_2 = L9_2.name
        L14_2 = L10_2
        L15_2 = false
        L16_2 = false
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L13_2 = AttachEntityToEntity
        L14_2 = L12_2
        L15_2 = L2_2
        L16_2 = L11_2
        L17_2 = L9_2.coords
        L17_2 = L17_2.x
        L18_2 = L9_2.coords
        L18_2 = L18_2.y
        L19_2 = L9_2.coords
        L19_2 = L19_2.z
        L20_2 = L9_2.rotation
        L20_2 = L20_2.x
        L21_2 = L9_2.rotation
        L21_2 = L21_2.y
        L22_2 = L9_2.rotation
        L22_2 = L22_2.z
        L23_2 = true
        L24_2 = true
        L25_2 = false
        L26_2 = true
        L27_2 = 0
        L28_2 = true
        L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
        L1_2[L12_2] = L12_2
      end
    end
  end
  return L1_2
end
L1_1.CreateProps = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L1_2 = next
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = pairs
      L2_2 = A0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = DoesEntityExist
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        if L7_2 then
          L7_2 = DeleteEntity
          L8_2 = L5_2
          L7_2(L8_2)
          L7_2 = DetachEntity
          L8_2 = L5_2
          L9_2 = false
          L10_2 = false
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L1_1.DeleteCreatedProps = L2_1
