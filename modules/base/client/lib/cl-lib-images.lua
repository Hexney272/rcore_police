local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1
L0_1 = false
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = 70.0
L5_1 = 10.0
L6_1 = 50.0
L7_1 = 0
L8_1 = 500
L9_1 = nil
L10_1 = 0.0
L11_1 = L4_1 - L5_1
L12_1 = 680380202
L13_1 = "amb@world_human_paparazzi@male@base"
L14_1 = "base"
L15_1 = 201
L16_1 = 194
L17_1 = 96
L18_1 = 97
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = IsNuiFocused
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = IsPauseMenuActive
    L1_2 = L1_2()
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = L0_1
  if L1_2 then
    return
  end
  L1_2 = {}
  L1_2.showState = true
  L1_2.options = A0_2
  L2_2 = UI
  L2_2 = L2_2.SendReactMessage
  L3_2 = NUI_EVENTS
  L3_2 = L3_2.VIEW_PHOTO
  L4_2 = {}
  L5_2 = L1_2.options
  L4_2.options = L5_2
  L5_2 = L1_2.showState
  L4_2.showState = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
end
ViewPhoto = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsModelInCdimage
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = RequestModel
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasModelLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = false
      return L2_2
    end
    L2_2 = Wait
    L3_2 = 10
    L2_2(L3_2)
  end
  L2_2 = true
  return L2_2
end
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = RequestAnimDict
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 5000
  while true do
    L2_2 = HasAnimDictLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = false
      return L2_2
    end
    L2_2 = Wait
    L3_2 = 10
    L2_2(L3_2)
  end
  L2_2 = true
  return L2_2
end
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = L19_1
  L2_2 = L12_1
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetEntityCoords
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CreateObject
  L3_2 = L12_1
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L6_2 = L6_2 + 0.2
  L7_2 = true
  L8_2 = true
  L9_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_1 = L2_2
  L2_2 = GetPedBoneIndex
  L3_2 = A0_2
  L4_2 = 28422
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = AttachEntityToEntity
  L4_2 = L1_1
  L5_2 = A0_2
  L6_2 = L2_2
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = true
  L14_2 = true
  L15_2 = false
  L16_2 = true
  L17_2 = 1
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = SetModelAsNoLongerNeeded
  L4_2 = L12_1
  L3_2(L4_2)
  L3_2 = L20_1
  L4_2 = L13_1
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = TaskPlayAnim
    L4_2 = A0_2
    L5_2 = L13_1
    L6_2 = L14_1
    L7_2 = 2.0
    L8_2 = 2.0
    L9_2 = -1
    L10_2 = 1
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = CreateCam
  L4_2 = "DEFAULT_SCRIPTED_FLY_CAMERA"
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L3_1 = L3_2
  L3_2 = AttachCamToEntity
  L4_2 = L3_1
  L5_2 = A0_2
  L6_2 = 0.0
  L7_2 = 1.0
  L8_2 = 0.8
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = SetCamRot
  L4_2 = L3_1
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = GetEntityHeading
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetCamFov
  L4_2 = L3_1
  L5_2 = L6_1
  L3_2(L4_2, L5_2)
  L3_2 = RenderScriptCams
  L4_2 = true
  L5_2 = false
  L6_2 = 0
  L7_2 = true
  L8_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = SetTimecycleModifier
  L4_2 = "default"
  L3_2(L4_2)
  L3_2 = SetTimecycleModifierStrength
  L4_2 = 0.3
  L3_2(L4_2)
  L3_2 = SetCurrentPedWeapon
  L4_2 = A0_2
  L5_2 = -1569615261
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = true
  return L3_2
end
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L1_1
  if L1_2 then
    L1_2 = DoesEntityExist
    L2_2 = L1_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DetachEntity
      L2_2 = L1_1
      L3_2 = true
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = DeleteObject
      L2_2 = L1_1
      L1_2(L2_2)
      L1_2 = nil
      L1_1 = L1_2
    end
  end
  L1_2 = L3_1
  if L1_2 then
    L1_2 = RenderScriptCams
    L2_2 = false
    L3_2 = false
    L4_2 = 0
    L5_2 = true
    L6_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = DestroyCam
    L2_2 = L3_1
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = nil
    L3_1 = L1_2
  end
  L1_2 = ClearTimecycleModifier
  L1_2()
  L1_2 = SetNightvision
  L2_2 = false
  L1_2(L2_2)
  L1_2 = SetSeethrough
  L2_2 = false
  L1_2(L2_2)
  L1_2 = L4_1
  L2_2 = L5_1
  L1_2 = L1_2 + L2_2
  L1_2 = L1_2 * 0.5
  L6_1 = L1_2
  L1_2 = nil
  L9_1 = L1_2
  L1_2 = 0
  L7_1 = L1_2
  L1_2 = UI
  L1_2 = L1_2.HelpKeys
  L2_2 = nil
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ClearPedTasks
  L2_2 = A0_2
  L1_2(L2_2)
end
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetDisabledControlNormal
  L3_2 = 0
  L4_2 = 220
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetDisabledControlNormal
  L4_2 = 0
  L5_2 = 221
  L3_2 = L3_2(L4_2, L5_2)
  if 0.0 == L2_2 and 0.0 == L3_2 then
    return
  end
  L4_2 = GetCamRot
  L5_2 = A0_2
  L6_2 = 2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L9_1
  L6_2 = GetEntityHeading
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2 + 0.1
  L7_2 = -8.0 * L7_2
  L8_2 = L4_2.z
  L9_2 = L2_2 * L7_2
  L8_2 = L8_2 + L9_2
  L9_2 = math
  L9_2 = L9_2.max
  L10_2 = math
  L10_2 = L10_2.min
  L11_2 = 20.0
  L12_2 = L4_2.x
  L13_2 = L3_2 * L7_2
  L12_2 = L12_2 + L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = -89.5
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L8_2 - L6_2
  L11_2 = 180.0
  if L10_2 > L11_2 then
    L10_2 = L10_2 - 360.0
  else
    L11_2 = -180.0
    if L10_2 < L11_2 then
      L10_2 = L10_2 + 360.0
    end
  end
  if L10_2 > 90.0 then
    L8_2 = L6_2 + 90.0
  elseif L10_2 < -90.0 then
    L8_2 = L6_2 - 90.0
  end
  L11_2 = SetCamRot
  L12_2 = A0_2
  L13_2 = L9_2
  L14_2 = 0.0
  L15_2 = L8_2
  L16_2 = 2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
end
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = IsControlJustPressed
  L2_2 = 0
  L3_2 = L17_1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = math
    L1_2 = L1_2.max
    L2_2 = L6_1
    L2_2 = L2_2 - 10.0
    L3_2 = L5_1
    L1_2 = L1_2(L2_2, L3_2)
    L6_1 = L1_2
  else
    L1_2 = IsControlJustPressed
    L2_2 = 0
    L3_2 = L18_1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = math
      L1_2 = L1_2.min
      L2_2 = L6_1
      L2_2 = L2_2 + 10.0
      L3_2 = L4_1
      L1_2 = L1_2(L2_2, L3_2)
      L6_1 = L1_2
    end
  end
  L1_2 = GetCamFov
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = L6_1
  L3_2 = L3_2 - L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = 0.6
  if L2_2 < L3_2 then
    L6_1 = L1_2
  else
    L2_2 = SetCamFov
    L3_2 = A0_2
    L4_2 = L6_1
    L4_2 = L4_2 - L1_2
    L4_2 = L4_2 * 0.05
    L4_2 = L1_2 + L4_2
    L2_2(L3_2, L4_2)
  end
end
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = AnimpostfxPlay
  L1_2 = "FocusOut"
  L2_2 = 0
  L3_2 = false
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = PlaySoundFrontend
  L1_2 = -1
  L2_2 = "Camera_Shoot"
  L3_2 = "Phone_SoundSet_Michael"
  L4_2 = true
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = Wait
  L1_2 = 250
  L0_2(L1_2)
  L0_2 = AnimpostfxStop
  L1_2 = "FocusOut"
  L0_2(L1_2)
end
PlayTakePhotoSound = L25_1
function L25_1(A0_2)
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
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1
  if not L0_2 then
    return
  end
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = L25_1
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L2_2.location = L3_2
  L3_2 = TriggerServerEvent
  L4_2 = "rcore_police:server:requestCameraTakePhoto"
  L5_2 = ObjToNet
  L6_2 = L1_1
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = IsNuiFocused
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = IsPauseMenuActive
    L1_2 = L1_2()
    if not L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = L0_1
  if L1_2 then
    L1_2 = false
    L0_1 = L1_2
    L1_2 = L22_1
    L2_2 = L9_1
    if not L2_2 then
      L2_2 = L2_1
      if not L2_2 then
        L2_2 = PlayerPedId
        L2_2 = L2_2()
      end
    end
    L1_2(L2_2)
    currentZoom = 50.0
    L1_2 = nil
    L9_1 = L1_2
    L1_2 = 0
    L7_1 = L1_2
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_1 = L1_2
  L9_1 = L1_2
  L2_2 = L21_1
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = true
    L0_1 = L2_2
    currentZoom = 50.0
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    L7_1 = L2_2
  end
  L2_2 = UI
  L2_2 = L2_2.HelpKeys
  L3_2 = {}
  L4_2 = {}
  L5_2 = {}
  L5_2.key = ""
  L6_2 = _U
  L7_2 = "CAMERA.ZOOM_HELPTEXT"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L6_2 = {}
  L6_2.key = "ENTER"
  L7_2 = _U
  L8_2 = "CAMERA.TAKE_PHOTO_HELPKEY"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L7_2 = {}
  L7_2.key = "BACKSPACE"
  L8_2 = _U
  L9_2 = "CAMERA.EXIT_HELPKEY"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L3_2.keys = L4_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
StartCamera = L27_1
L27_1 = CreateThread
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  while true do
    L0_2 = L0_1
    if L0_2 then
      L0_2 = GetGameTimer
      L0_2 = L0_2()
      L1_2 = L2_1
      if not L1_2 then
        L1_2 = PlayerPedId
        L1_2 = L1_2()
      end
      L9_1 = L1_2
      L1_2 = IsEntityDead
      L2_2 = L9_1
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = false
        L0_1 = L1_2
        L1_2 = L22_1
        L2_2 = L9_1
        L1_2(L2_2)
        L1_2 = Wait
        L2_2 = 1000
        L1_2(L2_2)
      end
      L1_2 = HideHudAndRadarThisFrame
      L1_2()
      L1_2 = L7_1
      L1_2 = L0_2 - L1_2
      L2_2 = L8_1
      if L1_2 > L2_2 then
        L1_2 = IsEntityPlayingAnim
        L2_2 = L9_1
        L3_2 = L13_1
        L4_2 = L14_1
        L5_2 = 3
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        if not L1_2 then
          L1_2 = TaskPlayAnim
          L2_2 = L9_1
          L3_2 = L13_1
          L4_2 = L14_1
          L5_2 = 2.0
          L6_2 = 2.0
          L7_2 = -1
          L8_2 = 1
          L9_2 = 0
          L10_2 = false
          L11_2 = false
          L12_2 = false
          L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        end
        L7_1 = L0_2
      end
      L1_2 = L3_1
      if L1_2 then
        L1_2 = L11_1
        L2_2 = 1.0
        L1_2 = L2_2 / L1_2
        L2_2 = L6_1
        L3_2 = L5_1
        L2_2 = L2_2 - L3_2
        L1_2 = L1_2 * L2_2
        L10_1 = L1_2
        L1_2 = L23_1
        L2_2 = L3_1
        L3_2 = L10_1
        L1_2(L2_2, L3_2)
        L1_2 = L24_1
        L2_2 = L3_1
        L1_2(L2_2)
      end
      L1_2 = IsControlJustPressed
      L2_2 = 0
      L3_2 = L15_1
      L1_2 = L1_2(L2_2, L3_2)
      if L1_2 then
        L1_2 = L26_1
        L1_2()
      else
        L1_2 = IsControlJustPressed
        L2_2 = 0
        L3_2 = L16_1
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = false
          L0_1 = L1_2
          L1_2 = L22_1
          L2_2 = L9_1
          L1_2(L2_2)
          L1_2 = Wait
          L2_2 = 100
          L1_2(L2_2)
        end
      end
      L1_2 = Wait
      L2_2 = 0
      L1_2(L2_2)
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L27_1(L28_1)
L27_1 = AddEventHandler
L28_1 = "onResourceStop"
function L29_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L0_1
    if L1_2 then
      L1_2 = false
      L0_1 = L1_2
      L1_2 = L22_1
      L2_2 = L2_1
      if not L2_2 then
        L2_2 = PlayerPedId
        L2_2 = L2_2()
      end
      L1_2(L2_2)
    end
  end
end
L27_1(L28_1, L29_1)
