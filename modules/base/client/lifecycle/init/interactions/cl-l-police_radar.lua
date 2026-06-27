local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = Config
L0_1 = L0_1.PoliceRadar
L0_1 = L0_1.CheckDistance
if not L0_1 then
  L0_1 = 10.0
end
L1_1 = Config
L1_1 = L1_1.PoliceRadar
L1_1 = L1_1.CheckRadius
if not L1_1 then
  L1_1 = 5.0
end
L2_1 = false
L3_1 = Config
L3_1 = L3_1.PoliceRadar
L3_1 = L3_1.FastLockSpeed
if not L3_1 then
  L3_1 = 10
end
L4_1 = {}
L5_1 = {}
L6_1 = false
L7_1 = false
L8_1 = {}
L8_1.HasChanged = false
L8_1.PatrolSpeed = 0
L9_1 = {}
L9_1.Plate = nil
L9_1.Speed = 0
L10_1 = {}
L10_1.Plate = false
L10_1.Speed = false
L9_1.Lock = L10_1
L8_1.Front = L9_1
L9_1 = {}
L9_1.Plate = nil
L9_1.Speed = 0
L10_1 = {}
L10_1.Plate = false
L10_1.Speed = false
L9_1.Lock = L10_1
L8_1.Rear = L9_1
Radar = L8_1
L8_1 = RegisterNuiCallback
L9_1 = NUI_EVENTS
L9_1 = L9_1.HANDLE_FOCUS
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IsUsingRadar
  if not L2_2 then
    return
  end
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Radar: Handling draggable focus to state: %s"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = ToggleFocus
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "OK"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNuiCallback
L9_1 = NUI_EVENTS
L9_1 = L9_1.SHOW_RADAR
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  IsUsingRadar = A0_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Police radar: Use state set to %s"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNuiCallback
L9_1 = NUI_EVENTS
L9_1 = L9_1.SET_FAST_LIMIT_RADAR
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_1 = A0_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Police radar: Updating fast lock limit for vehicle to: %s"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNuiCallback
L9_1 = NUI_EVENTS
L9_1 = L9_1.RESET_RADAR
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L2_2.HasChanged = false
  L2_2.PatrolSpeed = 0
  L3_2 = {}
  L3_2.Plate = nil
  L3_2.Speed = 0
  L4_2 = {}
  L4_2.Plate = false
  L4_2.Speed = false
  L3_2.Lock = L4_2
  L2_2.Front = L3_2
  L3_2 = {}
  L3_2.Plate = nil
  L3_2.Speed = 0
  L4_2 = {}
  L4_2.Plate = false
  L4_2.Speed = false
  L3_2.Lock = L4_2
  L2_2.Rear = L3_2
  Radar = L2_2
  L2_2 = UpdateRadar
  L3_2 = nil
  L4_2 = nil
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L8_1(L9_1, L10_1)
L8_1 = CreateThread
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  while true do
    L0_2 = Wait
    L1_2 = 100
    L0_2(L1_2)
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if 0 ~= L1_2 then
      L2_2 = IsUsingRadar
      if L2_2 then
        L2_2 = GetEntityCoords
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        L3_2 = GetEntityForwardVector
        L4_2 = L1_2
        L3_2 = L3_2(L4_2)
        L4_2 = L0_1
        L4_2 = L3_2 * L4_2
        L4_2 = L2_2 + L4_2
        L5_2 = GetVehicleAtEndCoords
        L6_2 = L4_2
        L7_2 = L1_1
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = Radar
        L6_2.HasChanged = false
        if 0 ~= L5_2 then
          L6_2 = GetVehicleNumberPlateText
          L7_2 = L5_2
          L6_2 = L6_2(L7_2)
          if L6_2 then
            L7_2 = Radar
            L7_2 = L7_2.Front
            L7_2 = L7_2.Plate
            if L6_2 ~= L7_2 then
              L7_2 = Radar
              L7_2 = L7_2.Front
              L7_2 = L7_2.Locked
              if not L7_2 then
                L7_2 = Radar
                L7_2 = L7_2.Front
                L7_2.Plate = L6_2
                L7_2 = Radar
                L7_2.HasChanged = true
              end
            end
          end
        end
        L6_2 = L0_1
        L6_2 = L3_2 * L6_2
        L6_2 = L2_2 - L6_2
        L7_2 = GetVehicleAtEndCoords
        L8_2 = L6_2
        L9_2 = L1_1
        L7_2 = L7_2(L8_2, L9_2)
        if 0 ~= L7_2 then
          L8_2 = GetVehicleNumberPlateText
          L9_2 = L7_2
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L9_2 = Radar
            L9_2 = L9_2.Rear
            L9_2 = L9_2.Plate
            if L8_2 ~= L9_2 then
              L9_2 = Radar
              L9_2 = L9_2.Rear
              L9_2 = L9_2.Locked
              if not L9_2 then
                L9_2 = Radar
                L9_2 = L9_2.Rear
                L9_2.Plate = L8_2
                L9_2 = Radar
                L9_2.HasChanged = true
              end
            end
          end
        end
        L8_2 = GetEntitySpeed
        L9_2 = L1_2
        L8_2 = L8_2(L9_2)
        L9_2 = Radar
        L9_2 = L9_2.PatrolSpeed
        if L8_2 ~= L9_2 then
          L9_2 = Radar
          L10_2 = math
          L10_2 = L10_2.floor
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          L9_2.PatrolSpeed = L10_2
          L9_2 = UpdateRadar
          L10_2 = L5_2
          L11_2 = L7_2
          L12_2 = true
          L9_2(L10_2, L11_2, L12_2)
        end
        L9_2 = L2_1
        if L9_2 then
          L9_2 = DrawDebugLine
          L10_2 = L2_2
          L11_2 = L4_2
          L12_2 = L1_1
          L9_2(L10_2, L11_2, L12_2)
          L9_2 = DrawDebugLine
          L10_2 = L2_2
          L11_2 = L6_2
          L12_2 = L1_1
          L9_2(L10_2, L11_2, L12_2)
        end
        L9_2 = Radar
        L9_2 = L9_2.HasChanged
        if L9_2 then
          L9_2 = L6_1
          if not L9_2 then
            L9_2 = UpdateRadar
            L10_2 = L5_2
            L11_2 = L7_2
            L12_2 = true
            L9_2(L10_2, L11_2, L12_2)
            L9_2 = Config
            L9_2 = L9_2.PoliceRadar
            L9_2 = L9_2.Beep
            L9_2 = L9_2.Play
            if L9_2 then
              L9_2 = IsUsingRadar
              if L9_2 then
                L9_2 = GetSoundId
                L9_2 = L9_2()
                if L9_2 then
                  L10_2 = PlaySoundFrontend
                  L11_2 = L9_2
                  L12_2 = Config
                  L12_2 = L12_2.PoliceRadar
                  L12_2 = L12_2.Beep
                  L12_2 = L12_2.AudioName
                  if not L12_2 then
                    L12_2 = "5_SEC_WARNING"
                  end
                  L13_2 = Config
                  L13_2 = L13_2.PoliceRadar
                  L13_2 = L13_2.Beep
                  L13_2 = L13_2.AudioRef
                  if not L13_2 then
                    L13_2 = "HUD_MINI_GAME_SOUNDSET"
                  end
                  L14_2 = true
                  L10_2(L11_2, L12_2, L13_2, L14_2)
                end
              end
            end
          end
        end
    end
    else
      L2_2 = IsUsingRadar
      if L2_2 then
        IsUsingRadar = false
        L2_2 = UI
        L2_2 = L2_2.PoliceRadar
        L3_2 = IsLoadedRadarSettings
        L2_2(L3_2)
      end
    end
  end
end
L8_1(L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetEntityModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetDisplayNameFromVehicleModel
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetLabelText
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  return L3_2
end
GetVehicleLabelFromEntity = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.PoliceRadar
  L1_2 = L1_2.SpeedType
  L2_2 = L1_2
  L1_2 = L1_2.upper
  L1_2 = L1_2(L2_2)
  if "MPH" == L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Using radar speed conversion via MPH"
    L2_2(L3_2)
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2 * 2.236936
    return L2_2(L3_2)
  elseif "KMH" == L1_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Using radar speed conversion via KM/H"
    L2_2(L3_2)
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2 * 3.6
    return L2_2(L3_2)
  else
    L2_2 = math
    L2_2 = L2_2.floor
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
GetRadarSpeed = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetVehicleNumberPlateText
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    return
  end
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Police radar: Registering vehicle with plate: %s into memory sessions!"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L5_1
  L5_2 = {}
  L5_2.plate = L2_2
  L6_2 = GetVehicleLabelFromEntity
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.speed = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  L3_2[L2_2] = true
end
RegisterSessionForPlate = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L6_1
  if L3_2 then
    return
  end
  if A0_2 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = GetEntitySpeed
    L5_2 = A0_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if 0 ~= L3_2 then
      L4_2 = Radar
      L4_2 = L4_2.Front
      L4_2 = L4_2.Speed
      if L3_2 ~= L4_2 then
        L4_2 = Radar
        L4_2 = L4_2.Front
        L5_2 = GetRadarSpeed
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L4_2.Speed = L5_2
      end
    end
    L4_2 = Config
    L4_2 = L4_2.PoliceRadar
    L4_2 = L4_2.RecentSessions
    if L4_2 then
      L4_2 = Config
      L4_2 = L4_2.PoliceRadar
      L4_2 = L4_2.RecentSessionsTrackVehicleWithSpeed
      if L3_2 >= L4_2 then
        L4_2 = RegisterSessionForPlate
        L5_2 = A0_2
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      end
    end
    L4_2 = L3_1
    if L3_2 >= L4_2 then
      L4_2 = Radar
      L4_2 = L4_2.Front
      L4_2 = L4_2.Lock
      L4_2 = L4_2.Speed
      if not L4_2 then
        L4_2 = Config
        L4_2 = L4_2.PoliceRadar
        L4_2 = L4_2.FastLock
        if L4_2 then
          L4_2 = Radar
          L4_2 = L4_2.Front
          L4_2 = L4_2.Lock
          L4_2.Speed = true
          L4_2 = Radar
          L4_2 = L4_2.Front
          L4_2 = L4_2.Lock
          L4_2.Plate = true
          L4_2 = Radar
          L4_2 = L4_2.Front
          L5_2 = GetRadarSpeed
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          L4_2.LockSpeed = L5_2
          L4_2 = dbg
          L4_2 = L4_2.debug
          L5_2 = "Fast Lock: Front vehicle locked at %s"
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          L4_2 = SetTimeout
          L5_2 = 4000
          function L6_2()
            local L0_3, L1_3
            L0_3 = Radar
            L0_3 = L0_3.Front
            L0_3 = L0_3.Lock
            L0_3.Speed = false
          end
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  if A1_2 then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = GetEntitySpeed
    L5_2 = A1_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if 0 ~= L3_2 then
      L4_2 = Radar
      L4_2 = L4_2.Rear
      L4_2 = L4_2.Speed
      if L3_2 ~= L4_2 then
        L4_2 = Radar
        L4_2 = L4_2.Rear
        L5_2 = GetRadarSpeed
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L4_2.Speed = L5_2
      end
    end
    L4_2 = L3_1
    if L3_2 >= L4_2 then
      L4_2 = Radar
      L4_2 = L4_2.Rear
      L4_2 = L4_2.Lock
      L4_2 = L4_2.Speed
      if not L4_2 then
        L4_2 = Config
        L4_2 = L4_2.PoliceRadar
        L4_2 = L4_2.FastLock
        if L4_2 then
          L4_2 = Radar
          L4_2 = L4_2.Rear
          L4_2 = L4_2.Lock
          L4_2.Speed = true
          L4_2 = Radar
          L4_2 = L4_2.Rear
          L4_2 = L4_2.Lock
          L4_2.Plate = true
          L4_2 = Radar
          L4_2 = L4_2.Rear
          L5_2 = GetRadarSpeed
          L6_2 = L3_2
          L5_2 = L5_2(L6_2)
          L4_2.LockSpeed = L5_2
          L4_2 = dbg
          L4_2 = L4_2.debug
          L5_2 = "Fast Lock: Rear vehicle locked at %s"
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          L4_2 = SetTimeout
          L5_2 = 4000
          function L6_2()
            local L0_3, L1_3
            L0_3 = Radar
            L0_3 = L0_3.Rear
            L0_3 = L0_3.Lock
            L0_3.Speed = false
          end
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
  if not A2_2 then
    L3_2 = Radar
    L3_2 = L3_2.Rear
    L3_2 = L3_2.Speed
    if not (L3_2 <= 0) then
      L3_2 = Radar
      L3_2 = L3_2.Front
      L3_2 = L3_2.Speed
      if not (L3_2 <= 0) then
        goto lbl_148
      end
    end
    return
  end
  ::lbl_148::
  L3_2 = Config
  L3_2 = L3_2.PoliceRadar
  L3_2 = L3_2.RecentSessions
  if L3_2 and A1_2 then
    L3_2 = Radar
    L3_2 = L3_2.Rear
    L3_2 = L3_2.Speed
    L4_2 = Config
    L4_2 = L4_2.PoliceRadar
    L4_2 = L4_2.RecentSessionsTrackVehicleWithSpeed
    if L3_2 >= L4_2 then
      L3_2 = RegisterSessionForPlate
      L4_2 = A1_2
      L5_2 = Radar
      L5_2 = L5_2.Rear
      L5_2 = L5_2.Speed
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = Config
  L3_2 = L3_2.PoliceRadar
  L3_2 = L3_2.RecentSessions
  if L3_2 and A0_2 then
    L3_2 = Radar
    L3_2 = L3_2.Front
    L3_2 = L3_2.Speed
    L4_2 = Config
    L4_2 = L4_2.PoliceRadar
    L4_2 = L4_2.RecentSessionsTrackVehicleWithSpeed
    if L3_2 >= L4_2 then
      L3_2 = RegisterSessionForPlate
      L4_2 = A0_2
      L5_2 = Radar
      L5_2 = L5_2.Front
      L5_2 = L5_2.Speed
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.UPDATE_RADAR
  L5_2 = {}
  L6_2 = {}
  L7_2 = Radar
  L7_2 = L7_2.Front
  L7_2 = L7_2.Plate
  L6_2.Plate = L7_2
  L7_2 = Radar
  L7_2 = L7_2.Front
  L7_2 = L7_2.Speed
  L6_2.Speed = L7_2
  L7_2 = Radar
  L7_2 = L7_2.Front
  L7_2 = L7_2.LockSpeed
  if not L7_2 then
    L7_2 = 0
  end
  L6_2.LockSpeed = L7_2
  L7_2 = Radar
  L7_2 = L7_2.Front
  L7_2 = L7_2.Lock
  L6_2.Lock = L7_2
  L5_2.Front = L6_2
  L6_2 = {}
  L7_2 = Radar
  L7_2 = L7_2.Rear
  L7_2 = L7_2.Plate
  L6_2.Plate = L7_2
  L7_2 = Radar
  L7_2 = L7_2.Rear
  L7_2 = L7_2.Speed
  L6_2.Speed = L7_2
  L7_2 = Radar
  L7_2 = L7_2.Rear
  L7_2 = L7_2.LockSpeed
  if not L7_2 then
    L7_2 = 0
  end
  L6_2.LockSpeed = L7_2
  L7_2 = Radar
  L7_2 = L7_2.Rear
  L7_2 = L7_2.Lock
  L6_2.Lock = L7_2
  L5_2.Rear = L6_2
  L6_2 = GetRadarSpeed
  L7_2 = Radar
  L7_2 = L7_2.PatrolSpeed
  L6_2 = L6_2(L7_2)
  L5_2.PatrolSpeed = L6_2
  L6_2 = L5_1
  L5_2.Recent = L6_2
  L3_2(L4_2, L5_2)
end
UpdateRadar = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L3_2 = DrawLine
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L7_2 = A1_2.x
  L8_2 = A1_2.y
  L9_2 = A1_2.z
  L10_2 = 255
  L11_2 = 0
  L12_2 = 0
  L13_2 = 255
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L3_2 = DrawMarker
  L4_2 = 1
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0.2
  L15_2 = 0.2
  L16_2 = 0.2
  L17_2 = 0
  L18_2 = 255
  L19_2 = 0
  L20_2 = 255
  L21_2 = false
  L22_2 = true
  L23_2 = 2
  L24_2 = nil
  L25_2 = nil
  L26_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L3_2 = DrawMarker
  L4_2 = 28
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L8_2 = 0
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 0
  L14_2 = A2_2
  L15_2 = A2_2
  L16_2 = A2_2
  L17_2 = 0
  L18_2 = 0
  L19_2 = 255
  L20_2 = 100
  L21_2 = false
  L22_2 = true
  L23_2 = 2
  L24_2 = nil
  L25_2 = nil
  L26_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
end
DrawDebugLine = L8_1
L8_1 = UI
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = SetNuiFocus
    L2_2 = true
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = Radar
  L1_2 = L1_2.Front
  L1_2 = L1_2.Plate
  if not L1_2 then
    L1_2 = Radar
    L1_2 = L1_2.Front
    L1_2.Plate = "XXX-XXX"
  end
  L1_2 = Radar
  L1_2 = L1_2.Rear
  L1_2 = L1_2.Plate
  if not L1_2 then
    L1_2 = Radar
    L1_2 = L1_2.Rear
    L1_2.Plate = "XXX-XXX"
  end
  L1_2 = {}
  L2_2 = L7_1
  L1_2.moveState = L2_2
  L2_2 = L3_1
  L1_2.FastLockSpeed = L2_2
  L2_2 = L5_1
  L1_2.recent = L2_2
  L1_2.showState = A0_2
  L2_2 = IsUsingRadar
  L1_2.radarState = L2_2
  L2_2 = {}
  L3_2 = Radar
  L3_2 = L3_2.Front
  L2_2.Front = L3_2
  L3_2 = Radar
  L3_2 = L3_2.Rear
  L2_2.Rear = L3_2
  L3_2 = Radar
  L3_2 = L3_2.PatrolSpeed
  L2_2.PatrolSpeed = L3_2
  L1_2.radar = L2_2
  L2_2 = UI
  L2_2 = L2_2.SendReactMessage
  L3_2 = NUI_EVENTS
  L3_2 = L3_2.SET_VISIBLE
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = UI
  L2_2 = L2_2.SendReactMessage
  L3_2 = NUI_EVENTS
  L3_2 = L3_2.POLICE_RADAR
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L8_1.PoliceRadar = L9_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L7_1
  L7_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = A0_2
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
ToggleFocus = L8_1
L8_1 = AddEventHandler
L9_1 = "rcore_police:client:openPoliceRadar"
function L10_1()
  local L0_2, L1_2
  L0_2 = OpenRadar
  L0_2()
end
L8_1(L9_1, L10_1)
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Police radar: Failed to open radar, since player is not in vehicle."
    return L2_2(L3_2)
  end
  L2_2 = Config
  L2_2 = L2_2.PoliceRadar
  L2_2 = L2_2.Enable
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Police radar: Is not enabled for use, see config.lua"
    return L2_2(L3_2)
  end
  L2_2 = Framework
  L2_2 = L2_2.job
  if L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.job
    L2_2 = L2_2.name
    L3_2 = L2_2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_2)
    L3_2 = Config
    L3_2 = L3_2.JobGroups
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = SEAT_INDEXES
      if L3_2 then
        L3_2 = SEAT_INDEXES
        L3_2 = L3_2.DRIVER_SEAT
        if L3_2 then
          goto lbl_49
        end
      end
      L3_2 = -1
      ::lbl_49::
      L4_2 = GetPedInVehicleSeat
      L5_2 = L1_2
      L6_2 = L3_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = GetVehicleClass
      L6_2 = L1_2
      L5_2 = L5_2(L6_2)
      L6_2 = GetEntityArchetypeName
      L7_2 = L1_2
      L6_2 = L6_2(L7_2)
      L7_2 = Config
      L7_2 = L7_2.PoliceRadar
      L7_2 = L7_2.WhitelistedVehicles
      if not L7_2 then
        L7_2 = {}
      end
      if 18 ~= L5_2 then
        L8_2 = L7_2[L6_2]
        if not L8_2 then
          L8_2 = dbg
          L8_2 = L8_2.debug
          L9_2 = "Police radar: Vehicle is not emergency, not going to open it."
          return L8_2(L9_2)
        end
      end
      L8_2 = Config
      L8_2 = L8_2.PoliceRadar
      L8_2 = L8_2.RestrictOnlyForDriver
      if L8_2 and L4_2 ~= L0_2 then
        L8_2 = dbg
        L8_2 = L8_2.debug
        L9_2 = "Police radar: Radar can be used only from driver seat"
        return L8_2(L9_2)
      end
      L8_2 = dbg
      L8_2 = L8_2.debug
      L9_2 = "Police radar: Has valid job group, granting access to radar."
      L8_2(L9_2)
      L8_2 = IsLoadedRadarSettings
      L8_2 = not L8_2
      IsLoadedRadarSettings = L8_2
      L8_2 = IsLoadedRadarSettings
      if not L8_2 then
        L8_2 = L7_1
        if not L8_2 then
          IsLoadedRadarSettings = true
        end
      end
      L8_2 = UI
      L8_2 = L8_2.PoliceRadar
      L9_2 = IsLoadedRadarSettings
      L8_2(L9_2)
    else
      L3_2 = dbg
      L3_2 = L3_2.debug
      L4_2 = "Police radar: Your job named %s is not allowed to access radar!"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
OpenRadar = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = IsUsingRadar
  if not L0_2 then
    return
  end
  L0_2 = L6_1
  L0_2 = not L0_2
  L6_1 = L0_2
  L0_2 = _U
  L1_2 = "RADAR.LOCK_TOGGLE_OFF"
  L0_2 = L0_2(L1_2)
  L1_2 = L6_1
  if L1_2 then
    L1_2 = _U
    L2_2 = "RADAR.LOCK_TOGGLE_ON"
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
  end
  L1_2 = Framework
  L1_2 = L1_2.sendNotification
  L2_2 = L0_2
  L3_2 = "success"
  L1_2(L2_2, L3_2)
end
LockRadarToggle = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = nil
  L3_2 = false
  L4_2 = "unk"
  L5_2 = GetClosestVehicle
  L6_2 = A0_2.x
  L7_2 = A0_2.y
  L8_2 = A0_2.z
  L9_2 = A1_2 or L9_2
  if not A1_2 or not A1_2 then
    L9_2 = 2.0
  end
  L10_2 = 0
  L11_2 = 2175
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if 0 ~= L5_2 then
    L3_2 = true
    L4_2 = "found_vehicle"
    L5_2 = GetClosestVehicle
    L6_2 = A0_2.x
    L7_2 = A0_2.y
    L8_2 = A0_2.z
    L9_2 = A1_2 or L9_2
    if not A1_2 or not A1_2 then
      L9_2 = 2.0
    end
    L10_2 = 0
    L11_2 = 2175
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L5_2
  end
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = L4_2
  return L5_2, L6_2, L7_2
end
GetVehicleAtEndCoords = L8_1
L8_1 = RegisterKey
L9_1 = OpenRadar
L10_1 = "RCORE_POLICE_RADAR"
L11_1 = "RCORE_POLICE_RADAR"
L12_1 = Config
L12_1 = L12_1.PoliceRadar
L12_1 = L12_1.OpenKey
if not L12_1 then
  L12_1 = "N"
end
L13_1 = nil
L14_1 = {}
L14_1.state = true
L14_1.cooldown = 250
L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1)
L8_1 = RegisterKey
L9_1 = LockRadarToggle
L10_1 = "RCORE_POLICE_RADAR"
L11_1 = "RCORE_POLICE_RADAR"
L12_1 = Config
L12_1 = L12_1.PoliceRadar
L12_1 = L12_1.LockRadarKey
if not L12_1 then
  L12_1 = "B"
end
L13_1 = nil
L14_1 = {}
L14_1.state = true
L14_1.cooldown = 250
L8_1(L9_1, L10_1, L11_1, L12_1, L13_1, L14_1)
