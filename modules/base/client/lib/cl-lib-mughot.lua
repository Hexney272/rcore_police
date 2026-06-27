local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L0_1.__index = L0_1
L1_1 = -1623189257
L2_1 = -955488312
L3_1 = "mp_character_creation@lineup@male_a"
L4_1 = "loop_raised"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L1_2.isActive = false
  L1_2.boardObj = nil
  L1_2.overlayObj = nil
  L1_2.camera = nil
  L1_2.ped = nil
  L1_2.scaleform = 0
  L1_2.renderTarget = 0
  L1_2.rtName = "ID_Text"
  L1_2.scaleformName = "mugshot_board_01"
  L2_2 = setmetatable
  L3_2 = L1_2
  L4_2 = L0_1
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1.new = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IsModelInCdimage
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = RequestModel
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = false
      return L3_2
    end
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  L3_2 = true
  return L3_2
end
L0_1.loadModel = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = RequestAnimDict
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = false
      return L3_2
    end
    L3_2 = Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  L3_2 = true
  return L3_2
end
L0_1.loadAnimation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetEntityCoords
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityHeading
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.rad
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = vector3
  L6_2 = math
  L6_2 = L6_2.sin
  L7_2 = L4_2
  L6_2 = L6_2(L7_2)
  L6_2 = -L6_2
  L7_2 = math
  L7_2 = L7_2.cos
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L5_2 * 2.0
  L6_2 = L2_2 + L6_2
  L7_2 = vector3
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.4
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L6_2 + L7_2
  L7_2 = CreateCam
  L8_2 = "DEFAULT_SCRIPTED_CAMERA"
  L9_2 = true
  L7_2 = L7_2(L8_2, L9_2)
  A0_2.camera = L7_2
  L7_2 = SetCamCoord
  L8_2 = A0_2.camera
  L9_2 = L6_2.x
  L10_2 = L6_2.y
  L11_2 = L6_2.z
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = PointCamAtEntity
  L8_2 = A0_2.camera
  L9_2 = A1_2
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.65
  L13_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = SetCamFov
  L8_2 = A0_2.camera
  L9_2 = 40.0
  L7_2(L8_2, L9_2)
  L7_2 = RenderScriptCams
  L8_2 = true
  L9_2 = true
  L10_2 = 500
  L11_2 = true
  L12_2 = true
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1.createCamera = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.camera
  if L1_2 then
    L1_2 = DoesCamExist
    L2_2 = A0_2.camera
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = RenderScriptCams
      L2_2 = false
      L3_2 = true
      L4_2 = 500
      L5_2 = true
      L6_2 = true
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
      L1_2 = DestroyCam
      L2_2 = A0_2.camera
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
  A0_2.camera = nil
end
L0_1.destroyCamera = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L2_2 = A0_2.loadAnimation
  L4_2 = L3_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = TaskPlayAnim
    L3_2 = A1_2
    L4_2 = L3_1
    L5_2 = L4_1
    L6_2 = 8.0
    L7_2 = 8.0
    L8_2 = -1
    L9_2 = 49
    L10_2 = 0
    L11_2 = false
    L12_2 = false
    L13_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L0_1.playAnimation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = StopAnimTask
  L3_2 = A1_2
  L4_2 = L3_1
  L5_2 = L4_1
  L6_2 = 1.0
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = RemoveAnimDict
  L3_2 = L3_1
  L2_2(L3_2)
end
L0_1.clearAnimation = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = 0
  L4_2 = IsNamedRendertargetRegistered
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = RegisterNamedRendertarget
    L5_2 = A1_2
    L6_2 = 0
    L4_2(L5_2, L6_2)
  end
  L4_2 = IsNamedRendertargetLinked
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = LinkNamedRendertarget
    L5_2 = A2_2
    L4_2(L5_2)
  end
  L4_2 = IsNamedRendertargetRegistered
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = GetNamedRendertargetRenderId
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  return L3_2
end
L0_1.createRenderTarget = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = RequestScaleformMovie
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if 0 ~= L2_2 then
    while true do
      L3_2 = HasScaleformMovieLoaded
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        break
      end
      L3_2 = Wait
      L4_2 = 0
      L3_2(L4_2)
    end
  end
  return L2_2
end
L0_1.loadScaleform = L5_1
function L5_1(A0_2, A1_2, A2_2, ...)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = ...
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L3_2[5] = L8_2
  L3_2[6] = L9_2
  L3_2[7] = L10_2
  L3_2[8] = L11_2
  L3_2[9] = L12_2
  L3_2[10] = L13_2
  L4_2 = BeginScaleformMovieMethod
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "string" == L10_2 then
      L11_2 = PushScaleformMovieMethodParameterString
      L12_2 = L9_2
      L11_2(L12_2)
    elseif "number" == L10_2 then
      L11_2 = string
      L11_2 = L11_2.match
      L12_2 = tostring
      L13_2 = L9_2
      L12_2 = L12_2(L13_2)
      L13_2 = "%."
      L11_2 = L11_2(L12_2, L13_2)
      if L11_2 then
        L11_2 = PushScaleformMovieFunctionParameterFloat
        L12_2 = L9_2
        L11_2(L12_2)
      else
        L11_2 = PushScaleformMovieFunctionParameterInt
        L12_2 = L9_2
        L11_2(L12_2)
      end
    elseif "boolean" == L10_2 then
      L11_2 = PushScaleformMovieMethodParameterBool
      L12_2 = L9_2
      L11_2(L12_2)
    end
  end
  L4_2 = EndScaleformMovieMethod
  L4_2()
end
L0_1.callScaleformMethod = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    while true do
      L0_3 = A0_2.isActive
      if not L0_3 then
        break
      end
      L0_3 = A0_2.scaleform
      if 0 ~= L0_3 then
        L0_3 = A0_2.renderTarget
        if 0 ~= L0_3 then
          L0_3 = HideHudAndRadarThisFrame
          L0_3()
          L0_3 = SetTextRenderId
          L1_3 = A0_2.renderTarget
          L0_3(L1_3)
          L0_3 = Set_2dLayer
          L1_3 = 4
          L0_3(L1_3)
          L0_3 = SetScriptGfxDrawBehindPausemenu
          L1_3 = 1
          L0_3(L1_3)
          L0_3 = DrawScaleformMovie
          L1_3 = A0_2.scaleform
          L2_3 = 0.405
          L3_3 = 0.37
          L4_3 = 0.81
          L5_3 = 0.74
          L6_3 = 255
          L7_3 = 255
          L8_3 = 255
          L9_3 = 255
          L10_3 = 0
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          L0_3 = SetScriptGfxDrawBehindPausemenu
          L1_3 = 0
          L0_3(L1_3)
          L0_3 = SetTextRenderId
          L1_3 = GetDefaultScriptRendertargetRenderId
          L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L1_3()
          L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        end
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L0_1.renderBoard = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = A0_2
  L2_2 = A0_2.loadModel
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.loadModel
    L4_2 = L2_1
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_13::
  L2_2 = GetEntityCoords
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CreateObject
  L4_2 = L1_1
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L7_2 = L7_2 + 0.2
  L8_2 = true
  L9_2 = true
  L10_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.boardObj = L3_2
  L3_2 = CreateObject
  L4_2 = L2_1
  L5_2 = L2_2.x
  L6_2 = L2_2.y
  L7_2 = L2_2.z
  L7_2 = L7_2 + 0.2
  L8_2 = true
  L9_2 = true
  L10_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2.overlayObj = L3_2
  L3_2 = AttachEntityToEntity
  L4_2 = A0_2.overlayObj
  L5_2 = A0_2.boardObj
  L6_2 = -1
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = 2
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = 28422
  L4_2 = AttachEntityToEntity
  L5_2 = A0_2.boardObj
  L6_2 = A1_2
  L7_2 = GetPedBoneIndex
  L8_2 = A1_2
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L18_2 = 2
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = L1_1
  L4_2(L5_2)
  L4_2 = SetModelAsNoLongerNeeded
  L5_2 = L2_1
  L4_2(L5_2)
  L4_2 = SetCurrentPedWeapon
  L5_2 = A1_2
  L6_2 = -1569615261
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = ClearPedWetness
  L5_2 = A1_2
  L4_2(L5_2)
  L4_2 = ClearPedBloodDamage
  L5_2 = A1_2
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.createRenderTarget
  L6_2 = A0_2.rtName
  L7_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2.renderTarget = L4_2
  L5_2 = A0_2
  L4_2 = A0_2.loadScaleform
  L6_2 = A0_2.scaleformName
  L4_2 = L4_2(L5_2, L6_2)
  A0_2.scaleform = L4_2
  L4_2 = A0_2.renderTarget
  L4_2 = 0 ~= L4_2
  return L4_2
end
L0_1.createBoard = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.scaleform
  if 0 ~= L1_2 then
    L1_2 = SetScaleformMovieAsNoLongerNeeded
    L2_2 = A0_2.scaleform
    L1_2(L2_2)
    A0_2.scaleform = 0
  end
  L1_2 = IsNamedRendertargetRegistered
  L2_2 = A0_2.rtName
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = ReleaseNamedRendertarget
    L2_2 = A0_2.rtName
    L1_2(L2_2)
  end
  A0_2.renderTarget = 0
end
L0_1.releaseRenderTarget = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2.overlayObj
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DetachEntity
    L2_2 = A0_2.overlayObj
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DeleteObject
    L2_2 = A0_2.overlayObj
    L1_2(L2_2)
  end
  A0_2.overlayObj = nil
  L1_2 = DoesEntityExist
  L2_2 = A0_2.boardObj
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = DetachEntity
    L2_2 = A0_2.boardObj
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = DeleteObject
    L2_2 = A0_2.boardObj
    L1_2(L2_2)
  end
  A0_2.boardObj = nil
  L1_2 = A0_2.ped
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.clearAnimation
    L3_2 = A0_2.ped
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.destroyCamera
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.releaseRenderTarget
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = A0_2.ped
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2.isActive = false
end
L0_1.cleanup = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.isActive
  if L3_2 then
    return
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  A0_2.ped = L3_2
  L4_2 = ClearPedTasksImmediately
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = SetEntityHeading
  L5_2 = L3_2
  L6_2 = GetEntityHeading
  L7_2 = L3_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = FreezeEntityPosition
  L5_2 = L3_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.createBoard
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = print
    L5_2 = "^1Mugshot: failed to spawn board/overlay or init render target.^0"
    L4_2(L5_2)
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2.loadAnimation
  L6_2 = L3_1
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.playAnimation
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.createCamera
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  A0_2.isActive = true
  L5_2 = A0_2
  L4_2 = A0_2.updateText
  L6_2 = _U
  L7_2 = "MUGSHOT.TITLE"
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2
  L8_2 = _U
  L9_2 = "MUGSHOT.FOOTER"
  L8_2 = L8_2(L9_2)
  L9_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2
  L4_2 = A0_2.renderBoard
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.maintainState
  L4_2(L5_2)
end
L0_1.start = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A0_2.isActive
  if L5_2 then
    L5_2 = A0_2.scaleform
    if 0 ~= L5_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L6_2 = A0_2
  L5_2 = A0_2.callScaleformMethod
  L7_2 = A0_2.scaleform
  L8_2 = "SET_BOARD"
  L9_2 = A1_2 or L9_2
  if not A1_2 then
    L9_2 = "LOS SANTOS POLICE DEPT."
  end
  L10_2 = A2_2 or L10_2
  if not A2_2 then
    L10_2 = "UNKNOWN"
  end
  L11_2 = A3_2 or L11_2
  if not A3_2 then
    L11_2 = "WANTED"
  end
  L12_2 = A4_2 or L12_2
  if not A4_2 then
    L12_2 = "10/04/1993"
  end
  L13_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.updateText = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.isActive
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.cleanup
  L1_2(L2_2)
end
L0_1.stop = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    while true do
      L0_3 = A0_2.isActive
      if not L0_3 then
        break
      end
      L0_3 = A0_2.isActive
      if L0_3 then
        L0_3 = A0_2.ped
        if L0_3 then
          L0_3 = IsEntityPlayingAnim
          L1_3 = A0_2.ped
          L2_3 = L3_1
          L3_3 = L4_1
          L4_3 = 3
          L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
          if not L0_3 then
            L0_3 = A0_2
            L1_3 = L0_3
            L0_3 = L0_3.playAnimation
            L2_3 = A0_2.ped
            L0_3(L1_3, L2_3)
          end
          L0_3 = A0_2.boardObj
          if L0_3 then
            L0_3 = IsEntityAttachedToEntity
            L1_3 = A0_2.boardObj
            L2_3 = A0_2.ped
            L0_3 = L0_3(L1_3, L2_3)
            if not L0_3 then
              L0_3 = AttachEntityToEntity
              L1_3 = A0_2.boardObj
              L2_3 = A0_2.ped
              L3_3 = GetPedBoneIndex
              L4_3 = A0_2.ped
              L5_3 = 28422
              L3_3 = L3_3(L4_3, L5_3)
              L4_3 = 0.0
              L5_3 = 0.0
              L6_3 = 0.0
              L7_3 = 0.0
              L8_3 = 0.0
              L9_3 = 0.0
              L10_3 = false
              L11_3 = false
              L12_3 = false
              L13_3 = false
              L14_3 = 2
              L15_3 = true
              L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
            end
          end
          L0_3 = A0_2.overlayObj
          if L0_3 then
            L0_3 = A0_2.boardObj
            if L0_3 then
              L0_3 = IsEntityAttachedToEntity
              L1_3 = A0_2.overlayObj
              L2_3 = A0_2.boardObj
              L0_3 = L0_3(L1_3, L2_3)
              if not L0_3 then
                L0_3 = AttachEntityToEntity
                L1_3 = A0_2.overlayObj
                L2_3 = A0_2.boardObj
                L3_3 = -1
                L4_3 = 0.0
                L5_3 = 0.0
                L6_3 = 0.0
                L7_3 = 0.0
                L8_3 = 0.0
                L9_3 = 0.0
                L10_3 = false
                L11_3 = false
                L12_3 = false
                L13_3 = false
                L14_3 = 2
                L15_3 = true
                L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
              end
            end
          end
        end
      end
      L0_3 = Wait
      L1_3 = 250
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L0_1.maintainState = L5_1
L6_1 = L0_1
L5_1 = L0_1.new
L5_1 = L5_1(L6_1)
function L6_1()
  local L0_2, L1_2
end
StartMugshotRegister = L6_1
L6_1 = AddEventHandler
L7_1 = "onResourceStop"
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L5_1
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
end
L6_1(L7_1, L8_1)
