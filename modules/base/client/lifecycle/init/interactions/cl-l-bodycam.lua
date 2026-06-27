local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1
L0_1 = nil
L1_1 = nil
L2_1 = {}
L3_1 = {}
L4_1 = {}
L4_1.IsActive = false
L4_1.CameraId = nil
L4_1.Camera = nil
L4_1.TargetPed = nil
L4_1.DecoyPed = nil
L5_1 = nil
L6_1 = "amb@code_human_in_bus_passenger_idles@female@tablet@base"
L7_1 = "base"
L8_1 = -1585232418
L9_1 = 60309
L10_1 = vector3
L11_1 = 0.03
L12_1 = 0.002
L13_1 = 0.0
L13_1 = -L13_1
L10_1 = L10_1(L11_1, L12_1, L13_1)
L11_1 = vector3
L12_1 = 10.0
L13_1 = 160.0
L14_1 = 0.0
L11_1 = L11_1(L12_1, L13_1, L14_1)
L12_1 = false
L13_1 = NetworkService
L13_1 = L13_1.RegisterNetEvent
L14_1 = "OpenBodyCamsFeed"
function L15_1(A0_2, A1_2)
  local L2_2
  if A0_2 then
    L2_2 = OpenBodyCams
    L2_2()
  end
end
L13_1(L14_1, L15_1)
L13_1 = NetworkService
L13_1 = L13_1.RegisterNetEvent
L14_1 = "SyncBodyCamsPoolForUser"
function L15_1(A0_2, A1_2)
  if A0_2 then
    if not A1_2 then
      return
    end
    BodyCams = A1_2
  end
end
L13_1(L14_1, L15_1)
L13_1 = NetworkService
L13_1 = L13_1.RegisterNetEvent
L14_1 = "SyncDecoyPedPoolForUser"
function L15_1(A0_2, A1_2)
  if A0_2 then
    if not A1_2 then
      return
    end
    L3_1 = A1_2
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "rcore_police:client:RegisterDecoyPed"
function L15_1(A0_2, A1_2)
  local L2_2
  if not A0_2 then
    return
  end
  if not A1_2 then
    return
  end
  L2_2 = L3_1
  L2_2[A0_2] = A1_2
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "rcore_police:client:RemoveDecoyPed"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = L3_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L1_2 = L3_1
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.tabletNetId
  if L1_2 then
    L1_2 = NetworkGetEntityFromNetworkId
    L2_2 = L3_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.tabletNetId
    L1_2 = L1_2(L2_2)
    L2_2 = DoesEntityExist
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
  L1_2 = L3_1
  L1_2[A0_2] = nil
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNuiCallback
L14_1 = "SPECTATE_TARGET_PLAYER"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.playerId
  if not L2_2 then
    return
  end
  L2_2 = A0_2.cameraId
  if not L2_2 then
    return
  end
  L2_2 = SpectatePlayer
  L3_2 = A0_2.playerId
  L4_2 = A0_2.cameraId
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "OK"
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = CreateThread
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2
  L0_2 = UtilsService
  L0_2 = L0_2.LoadAnimationDict
  L1_2 = L6_1
  L0_2(L1_2)
  L0_2 = SetCamRot
  L1_2 = GetEntityHeading
  L2_2 = Config
  L2_2 = L2_2.BodyCams
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.BodyCams
    L2_2 = L2_2.ThreadTime
    if L2_2 then
      goto lbl_17
    end
  end
  L2_2 = 250
  ::lbl_17::
  while true do
    L3_2 = Wait
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = L3_1
    if L3_2 then
      L3_2 = next
      L4_2 = L3_1
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = pairs
        L4_2 = L3_1
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L8_2.netId
          if not L9_2 then
            return
          end
          L9_2 = BodyCams
          L10_2 = L4_1.CameraId
          L9_2 = L9_2[L10_2]
          if not L9_2 then
            return
          end
          L10_2 = PlayerPedId
          L10_2 = L10_2()
          L11_2 = GetEntityCoords
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L12_2 = L9_2.playerCoords
          L11_2 = L11_2 - L12_2
          L11_2 = #L11_2
          L12_2 = 150
          if L11_2 <= L12_2 then
            L12_2 = NetworkGetEntityFromNetworkId
            L13_2 = L8_2.netId
            L12_2 = L12_2(L13_2)
            L13_2 = DoesEntityExist
            L14_2 = L12_2
            L13_2 = L13_2(L14_2)
            if L13_2 then
              L13_2 = IsEntityPlayingAnim
              L14_2 = L12_2
              L15_2 = L6_1
              L16_2 = L7_1
              L17_2 = 3
              L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
              if not L13_2 then
                L13_2 = TaskPlayAnim
                L14_2 = L12_2
                L15_2 = L6_1
                L16_2 = L7_1
                L17_2 = 3.0
                L18_2 = 3.0
                L19_2 = -1
                L20_2 = 49
                L21_2 = 0
                L22_2 = 0
                L23_2 = 0
                L24_2 = 0
                L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
                L13_2 = ClonePedToTarget
                L14_2 = L10_2
                L15_2 = L12_2
                L13_2(L14_2, L15_2)
            end
            else
              L13_2 = DoesEntityExist
              L14_2 = L12_2
              L13_2 = L13_2(L14_2)
              if not L13_2 then
                L13_2 = DeleteEntity
                L14_2 = L12_2
                L13_2(L14_2)
              end
            end
          end
        end
      end
    end
    L3_2 = L4_1.IsActive
    if L3_2 then
      L3_2 = IsCamActive
      L4_2 = L4_1.Camera
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = L0_2
        L4_2 = L4_1.Camera
        L5_2 = 0
        L6_2 = 0
        L7_2 = L1_2
        L8_2 = L4_1.TargetPed
        L7_2 = L7_2(L8_2)
        L8_2 = 2
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L3_2 = PlayerPedId
        L3_2 = L3_2()
        L4_2 = GetEntityCoords
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        L5_2 = GetEntityCoords
        L6_2 = L4_1.TargetPed
        L5_2 = L5_2(L6_2)
        L6_2 = L5_2 - L4_2
        L6_2 = #L6_2
        L7_2 = BodyCams
        L8_2 = L4_1.CameraId
        L7_2 = L7_2[L8_2]
        if not L7_2 then
          return
        end
        L8_2 = UI
        L8_2 = L8_2.HelpKeys
        L9_2 = {}
        L10_2 = {}
        L11_2 = {}
        L12_2 = "%s: %s"
        L13_2 = L12_2
        L12_2 = L12_2.format
        L14_2 = _U
        L15_2 = "BODYCAMS.LABEL_OFFICER"
        L14_2 = L14_2(L15_2)
        L15_2 = L7_2.officerName
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2.label = L12_2
        L12_2 = {}
        L13_2 = "%s: %s"
        L14_2 = L13_2
        L13_2 = L13_2.format
        L15_2 = _U
        L16_2 = "BODYCAMS.LABEL_CAMERA_ID"
        L15_2 = L15_2(L16_2)
        L16_2 = L4_1.CameraId
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L12_2.label = L13_2
        L13_2 = {}
        L14_2 = "%s: %s"
        L15_2 = L14_2
        L14_2 = L14_2.format
        L16_2 = _U
        L17_2 = "BODYCAMS.LABEL_LOCATION"
        L16_2 = L16_2(L17_2)
        L17_2 = GetPlayerStreetName
        L18_2 = MyServerId
        L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2 = L17_2(L18_2)
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L13_2.label = L14_2
        L14_2 = {}
        L15_2 = _U
        L16_2 = "BODYCAMS.LABEL_EXIT"
        L15_2 = L15_2(L16_2)
        L14_2.label = L15_2
        L15_2 = Config
        L15_2 = L15_2.BodyCams
        L15_2 = L15_2.ExitCamKey
        L14_2.key = L15_2
        L10_2[1] = L11_2
        L10_2[2] = L12_2
        L10_2[3] = L13_2
        L10_2[4] = L14_2
        L9_2.keys = L10_2
        L10_2 = true
        L8_2(L9_2, L10_2)
        L8_2 = 150
        if L6_2 >= L8_2 then
          L8_2 = HandleLocation
          L9_2 = L4_1.TargetPed
          L8_2(L9_2)
        end
      end
    end
  end
end
L13_1(L14_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = L12_1
  if L1_2 then
    L1_2 = false
    L12_1 = L1_2
    return
  end
  L1_2 = true
  L12_1 = L1_2
  L1_2 = UtilsService
  L1_2 = L1_2.LoadAnimationDict
  L2_2 = L6_1
  L1_2(L2_2)
  L1_2 = RequestModel
  L2_2 = L8_1
  L1_2(L2_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = L8_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 100
    L1_2(L2_2)
  end
  L1_2 = A0_2
  L2_2 = CreateObject
  L3_2 = L8_1
  L4_2 = 0.0
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = true
  L8_2 = true
  L9_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_1 = L2_2
  L2_2 = GetPedBoneIndex
  L3_2 = L1_2
  L4_2 = L9_1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = AttachEntityToEntity
  L4_2 = L5_1
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L10_1.x
  L8_2 = L10_1.y
  L9_2 = L10_1.z
  L10_2 = L11_1.x
  L11_2 = L11_1.y
  L12_2 = L11_1.z
  L13_2 = true
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = 2
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = SetModelAsNoLongerNeeded
  L4_2 = L8_1
  L3_2(L4_2)
  L3_2 = CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    while true do
      L0_3 = L12_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = IsEntityPlayingAnim
      L1_3 = L1_2
      L2_3 = L6_1
      L3_3 = L7_1
      L4_3 = 3
      L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
      if not L0_3 then
        L0_3 = TaskPlayAnim
        L1_3 = L1_2
        L2_3 = L6_1
        L3_3 = L7_1
        L4_3 = 3.0
        L5_3 = 3.0
        L6_3 = -1
        L7_3 = 49
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      end
    end
  end
  L3_2(L4_2)
end
DoTabletAnimation = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if not A0_2 then
    if A1_2 then
      L3_2 = SetEntityCoords
      L4_2 = L2_2
      L5_2 = A1_2.x
      L6_2 = A1_2.y
      L7_2 = A1_2.z
      L7_2 = L7_2 - 1
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    return
  end
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = SetEntityCoords
  L5_2 = L2_2
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L8_2 = L8_2 - 1
  L9_2 = false
  L10_2 = false
  L11_2 = false
  L12_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
HandleLocation = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  if A1_2 then
    L2_2 = FreezeEntityPosition
    L3_2 = A0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityVisible
    L3_2 = A0_2
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityCollision
    L3_2 = A0_2
    L4_2 = false
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityInvincible
    L3_2 = A0_2
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = FreezeEntityPosition
    L3_2 = A0_2
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = SetEntityVisible
    L3_2 = A0_2
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityCollision
    L3_2 = A0_2
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetEntityInvincible
    L3_2 = A0_2
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
HandleSpectator = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L1_2 = L0_1
  if not L1_2 then
    return
  end
  L1_2 = GetEntityHeading
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityModel
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = CreatePed
  L4_2 = 4
  L5_2 = L2_2
  L6_2 = L0_1.x
  L7_2 = L0_1.y
  L8_2 = L0_1.z
  L8_2 = L8_2 - 1
  L9_2 = L1_2
  L10_2 = true
  L11_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L4_1.DecoyPed = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_1
  L5_2 = L4_1.DecoyPed
  L3_2(L4_2, L5_2)
  L3_2 = ClonePedToTarget
  L4_2 = L0_2
  L5_2 = L4_1.DecoyPed
  L3_2(L4_2, L5_2)
  L3_2 = FreezeEntityPosition
  L4_2 = L4_1.DecoyPed
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetEntityInvincible
  L4_2 = L4_1.DecoyPed
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetBlockingOfNonTemporaryEvents
  L4_2 = L4_1.DecoyPed
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetPedDefaultComponentVariation
  L4_2 = L4_1.DecoyPed
  L3_2(L4_2)
  L3_2 = Wait
  L4_2 = 500
  L3_2(L4_2)
  L3_2 = DoTabletAnimation
  L4_2 = L4_1.DecoyPed
  L3_2(L4_2)
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Decoy ped spawned for all clients!"
  L3_2(L4_2)
end
CreateSpectatorClone = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 - L2_2
  L3_2 = #L3_2
  L4_2 = 150
  if L3_2 >= L4_2 then
    L4_2 = SetEntityCoordsNoOffset
    L5_2 = L1_2
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = false
    L10_2 = false
    L11_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L4_2 = SetEntityCoordsNoOffset
    L5_2 = L1_2
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = false
    L10_2 = false
    L11_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
CheckSpectatorPoolToTarget = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A0_2 then
    return
  end
  L2_2 = MyServerId
  if L2_2 == A0_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = "Cannot spectate yourself, error received playerId: %s targetPed == plyPed"
    L4_2 = A0_2
    return L2_2(L3_2, L4_2)
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L0_1 = L3_2
  L4_2 = BodyCams
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    return
  end
  L5_2 = DoScreenFadeOut
  L6_2 = 0
  L5_2(L6_2)
  L5_2 = HandleSpectator
  L6_2 = L2_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = CheckSpectatorPoolToTarget
  L6_2 = L4_2.playerCoords
  L5_2(L6_2)
  L5_2 = Wait
  L6_2 = 500
  L5_2(L6_2)
  L5_2 = UtilsService
  L5_2 = L5_2.GetPlayerPedFromServerId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L6_2 = DoScreenFadeIn
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = StopBodyCam
    L6_2()
    L6_2 = dbg
    L6_2 = L6_2.critical
    L7_2 = "Failed to get target ped from serverId! Enforcing stop spectate unexpected error."
    return L6_2(L7_2)
  end
  if L5_2 == L2_2 then
    L6_2 = DoScreenFadeIn
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = StopBodyCam
    L6_2()
    L6_2 = dbg
    L6_2 = L6_2.critical
    L7_2 = "Cannot spectate yourself, error received playerId: %s targetPed == plyPed"
    L8_2 = A0_2
    return L6_2(L7_2, L8_2)
  end
  L6_2 = dbg
  L6_2 = L6_2.debug
  L7_2 = "Bodycams: Spectator, preparing camera at the officer location.."
  L6_2(L7_2)
  L6_2 = GetEntityHeading
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = CreateCam
  L8_2 = "DEFAULT_SCRIPTED_FLY_CAMERA"
  L9_2 = true
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 24818
  L9_2 = vec3
  L10_2 = 0.12683200771922
  L11_2 = 0.14320925137666
  L12_2 = 0.11986595654326
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = CreateSpectatorClone
  L10_2()
  L10_2 = AttachCamToPedBone
  L11_2 = L7_2
  L12_2 = L5_2
  L13_2 = L8_2
  L14_2 = L9_2.x
  L15_2 = L9_2.y
  L16_2 = L9_2.z
  L17_2 = true
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L10_2 = SetCamFov
  L11_2 = L7_2
  L12_2 = 100.0
  L10_2(L11_2, L12_2)
  L10_2 = SetCamRot
  L11_2 = L7_2
  L12_2 = 0
  L13_2 = 0
  L14_2 = L6_2
  L15_2 = 2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = RenderScriptCams
  L11_2 = true
  L12_2 = false
  L13_2 = 0
  L14_2 = 1
  L15_2 = 0
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = ShakeCam
  L11_2 = L7_2
  L12_2 = "HAND_SHAKE"
  L13_2 = 1.0
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = SetCamShakeAmplitude
  L11_2 = L7_2
  L12_2 = 2.0
  L10_2(L11_2, L12_2)
  L10_2 = Config
  L10_2 = L10_2.BodyCams
  L10_2 = L10_2.Spectate
  L10_2 = L10_2.EnableScreenEffects
  if L10_2 then
    L10_2 = SetTimecycleModifier
    L11_2 = Config
    L11_2 = L11_2.BodyCams
    L11_2 = L11_2.Spectate
    L11_2 = L11_2.EffectName
    L10_2(L11_2)
    L10_2 = SetTimecycleModifierStrength
    L11_2 = Config
    L11_2 = L11_2.BodyCams
    L11_2 = L11_2.Spectate
    L11_2 = L11_2.EffectModifier
    if not L11_2 then
      L11_2 = 0.5
    end
    L10_2(L11_2)
  end
  L10_2 = DoScreenFadeIn
  L11_2 = 1000
  L10_2(L11_2)
  L4_1.TargetPed = L5_2
  L4_1.Camera = L7_2
  L4_1.CameraId = A1_2
  L10_2 = dbg
  L10_2 = L10_2.debug
  L11_2 = "Bodycams: Spectator fully loaded on the officer cam with ID: %s"
  L12_2 = L4_1.CameraId
  L10_2(L11_2, L12_2)
  L10_2 = UI
  L10_2 = L10_2.HelpKeys
  L11_2 = {}
  L12_2 = {}
  L13_2 = {}
  L14_2 = "%s: %s"
  L15_2 = L14_2
  L14_2 = L14_2.format
  L16_2 = _U
  L17_2 = "BODYCAMS.LABEL_OFFICER"
  L16_2 = L16_2(L17_2)
  L17_2 = L4_2.officerName
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2.label = L14_2
  L14_2 = {}
  L15_2 = "%s: %s"
  L16_2 = L15_2
  L15_2 = L15_2.format
  L17_2 = _U
  L18_2 = "BODYCAMS.LABEL_CAMERA_ID"
  L17_2 = L17_2(L18_2)
  L18_2 = A1_2
  L15_2 = L15_2(L16_2, L17_2, L18_2)
  L14_2.label = L15_2
  L15_2 = {}
  L16_2 = "%s: %s"
  L17_2 = L16_2
  L16_2 = L16_2.format
  L18_2 = _U
  L19_2 = "BODYCAMS.LABEL_LOCATION"
  L18_2 = L18_2(L19_2)
  L19_2 = GetPlayerStreetName
  L20_2 = A0_2
  L19_2, L20_2 = L19_2(L20_2)
  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
  L15_2.label = L16_2
  L16_2 = {}
  L17_2 = _U
  L18_2 = "BODYCAMS.LABEL_EXIT"
  L17_2 = L17_2(L18_2)
  L16_2.label = L17_2
  L17_2 = Config
  L17_2 = L17_2.BodyCams
  L17_2 = L17_2.ExitCamKey
  L16_2.key = L17_2
  L12_2[1] = L13_2
  L12_2[2] = L14_2
  L12_2[3] = L15_2
  L12_2[4] = L16_2
  L11_2.keys = L12_2
  L12_2 = true
  L10_2(L11_2, L12_2)
  L10_2 = TriggerServerEvent
  L11_2 = "rcore_police:server:requestSpectateStarted"
  L12_2 = PedToNet
  L13_2 = L4_1.DecoyPed
  L12_2 = L12_2(L13_2)
  L13_2 = ObjToNet
  L14_2 = L5_1
  L13_2 = L13_2(L14_2)
  L14_2 = L4_1.CameraId
  L15_2 = A0_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_1.IsActive = true
end
SpectatePlayer = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L4_1.IsActive
  if not L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L0_1
  if L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.debug
    L2_2 = "Bodycams: Teleporting spectator to initial location: %s %s %s"
    L3_2 = L0_1.x
    L4_2 = L0_1.y
    L5_2 = L0_1.z
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = SetEntityCoords
    L2_2 = L0_2
    L3_2 = L0_1.x
    L4_2 = L0_1.y
    L5_2 = L0_1.z
    L5_2 = L5_2 - 1
    L6_2 = false
    L7_2 = false
    L8_2 = false
    L9_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L1_2 = L4_1.DecoyPed
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L4_1.DecoyPed
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = dbg
      L1_2 = L1_2.debug
      L2_2 = "BodyCams: Deleting decoy ped."
      L1_2(L2_2)
      L1_2 = TriggerServerEvent
      L2_2 = "rcore_police:server:requestDeleteDecoyPed"
      L3_2 = PedToNet
      L4_2 = L4_1.DecoyPed
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      L1_2 = DeleteEntity
      L2_2 = L4_1.DecoyPed
      L1_2(L2_2)
      L1_2 = DoTabletAnimation
      L2_2 = L4_1.DecoyPed
      L1_2(L2_2)
      L4_1.DecoyPed = nil
    end
  end
  L1_2 = IsCamActive
  L2_2 = L4_1.Camera
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.debug
    L2_2 = "BodyCams: Deleting spectator camera."
    L1_2(L2_2)
    L1_2 = RenderScriptCams
    L2_2 = false
    L3_2 = false
    L4_2 = 0
    L5_2 = 1
    L6_2 = 0
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = DestroyCam
    L2_2 = L4_1.Camera
    L3_2 = false
    L1_2(L2_2, L3_2)
    L4_1.Camera = nil
  end
  L1_2 = ClearTimecycleModifier
  L1_2()
  L1_2 = HandleSpectator
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = nil
  L0_1 = L1_2
  L4_1.TargetPed = nil
  L4_1.IsActive = false
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Bodycams: Spectator - fully exited from the player."
  L1_2(L2_2)
  L1_2 = UI
  L1_2 = L1_2.HelpKeys
  L2_2 = nil
  L3_2 = false
  L1_2(L2_2, L3_2)
end
StopBodyCam = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    L1_2 = "Unknown"
    return L1_2
  end
  L1_2 = GetStreetNameAtCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = GetStreetNameFromHashKey
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetStreetNameFromHashKey
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 and "" ~= L4_2 then
    L5_2 = L3_2
    L6_2 = " & "
    L7_2 = L4_2
    L5_2 = L5_2 .. L6_2 .. L7_2
    return L5_2
  else
    return L3_2
  end
end
GetStreetNameFromCoords = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = UtilsService
  L1_2 = L1_2.GetPlayerPedFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = ""
    return L2_2
  end
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetStreetNameAtCoord
  L4_2 = L2_2.x
  L5_2 = L2_2.y
  L6_2 = L2_2.z
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = GetStreetNameFromHashKey
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetStreetNameFromHashKey
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  if L6_2 and "" ~= L6_2 then
    L7_2 = L5_2
    L8_2 = " & "
    L9_2 = L6_2
    L7_2 = L7_2 .. L8_2 .. L9_2
    return L7_2
  else
    return L5_2
  end
end
GetPlayerStreetName = L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = DoesEntityExist
    L1_2 = L1_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = DetachEntity
      L1_2 = L1_1
      L2_2 = false
      L3_2 = false
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = DeleteEntity
      L1_2 = L1_1
      L0_2(L1_2)
      L0_2 = nil
      L1_1 = L0_2
      L0_2 = dbg
      L0_2 = L0_2.debug
      L1_2 = "Removing active bodycam prop!"
      L0_2(L1_2)
      return
    end
  end
  L0_2 = IsModelValid
  L1_2 = "rdesign_bodycam_ex_small_dark"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.critical
    L1_2 = "Bodycam spawn on ped: Failed to detected streamed folder rcore_police_assets_bodycam, ensure it!"
    return L0_2(L1_2)
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = UtilsService
  L2_2 = L2_2.SpawnObject
  L3_2 = "rdesign_bodycam_ex_small_dark"
  L4_2 = L1_2
  L5_2 = true
  L6_2 = false
  L7_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_1 = L2_2
  L2_2 = Config
  L2_2 = L2_2.BodyCams
  L2_2 = L2_2.Prop
  L2_2 = L2_2.BoneId
  if not L2_2 then
    L2_2 = 24818
  end
  L3_2 = Config
  L3_2 = L3_2.BodyCams
  L3_2 = L3_2.Prop
  L3_2 = L3_2.Pos
  if not L3_2 then
    L3_2 = vec3
    L4_2 = 0.12683200771922
    L5_2 = 0.14320925137666
    L6_2 = 0.11986595654326
    L3_2 = L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = Config
  L4_2 = L4_2.BodyCams
  L4_2 = L4_2.Prop
  L4_2 = L4_2.Rot
  if not L4_2 then
    L4_2 = vec3
    L5_2 = -14.502323044318
    L6_2 = 100
    L7_2 = 100
    L4_2 = L4_2(L5_2, L6_2, L7_2)
  end
  L5_2 = AttachEntityToEntity
  L6_2 = L1_1
  L7_2 = L0_2
  L8_2 = GetPedBoneIndex
  L9_2 = L0_2
  L10_2 = L2_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L3_2.x
  L10_2 = L3_2.y
  L11_2 = L3_2.z
  L12_2 = L4_2.x
  L13_2 = L4_2.y
  L14_2 = L4_2.z
  L15_2 = true
  L16_2 = true
  L17_2 = false
  L18_2 = true
  L19_2 = 1
  L20_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L5_2 = Config
  L5_2 = L5_2.BodyCams
  L5_2 = L5_2.HideModel
  if L5_2 then
    L5_2 = SetEntityAlpha
    L6_2 = L1_1
    L7_2 = 0
    L8_2 = false
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = SetEntityCollision
  L6_2 = L1_1
  L7_2 = false
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetModelAsNoLongerNeeded
  L6_2 = "rdesign_bodycam_ex_small_dark"
  L5_2(L6_2)
  L5_2 = dbg
  L5_2 = L5_2.debug
  L6_2 = "Attaching bodycam to player, activated!"
  L5_2(L6_2)
end
HandleBodyCamProp = L13_1
L13_1 = RegisterNetEvent
L14_1 = "rcore_police:client:RegisterBodyCam"
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.playerId
  if L1_2 then
    L1_2 = GetPlayerStreetName
    L2_2 = A0_2.playerId
    L1_2 = L1_2(L2_2)
    A0_2.location = L1_2
    L1_2 = A0_2.playerId
    L2_2 = MyServerId
    if L1_2 == L2_2 then
      L1_2 = HandleBodyCamProp
      L1_2()
    end
  end
  L1_2 = BodyCams
  L2_2 = BodyCams
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "rcore_police:client:RemoveBodyCam"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = BodyCams
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = BodyCams
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.playerId
    L2_2 = MyServerId
    if L1_2 == L2_2 then
      L1_2 = HandleBodyCamProp
      L1_2()
    end
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = BodyCams
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    L1_2 = dbg
    L1_2 = L1_2.debug
    L2_2 = "Removed bodycam with ID: %s"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = AddEventHandler
L14_1 = "onResourceStop"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L1_1
    if L1_2 then
      L1_2 = DoesEntityExist
      L2_2 = L1_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = DeleteEntity
        L2_2 = L1_1
        L1_2(L2_2)
      end
    end
    L1_2 = L2_1
    if L1_2 then
      L1_2 = next
      L2_2 = L2_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = pairs
        L2_2 = L2_1
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = DoesEntityExist
          L8_2 = L6_2
          L7_2 = L7_2(L8_2)
          if L7_2 then
            L7_2 = DeleteEntity
            L8_2 = L6_2
            L7_2(L8_2)
            L7_2 = L2_1
            L7_2[L5_2] = nil
          end
        end
      end
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterKey
L14_1 = StopBodyCam
L15_1 = "RCORE_POLICE_STOP_BODYCAM"
L16_1 = _U
L17_1 = "KEY_MAPPING.EXIT_BODYCAM"
L16_1 = L16_1(L17_1)
L17_1 = Config
L17_1 = L17_1.BodyCams
L17_1 = L17_1.ExitCamKey
if not L17_1 then
  L17_1 = "E"
end
L18_1 = nil
L19_1 = {}
L19_1.state = true
L19_1.cooldown = 250
L13_1(L14_1, L15_1, L16_1, L17_1, L18_1, L19_1)
