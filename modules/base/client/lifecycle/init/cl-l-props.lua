local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = "amb@prop_human_bum_bin@idle_b"
L1_1 = "idle_d"
L2_1 = NetworkService
L2_1 = L2_1.RegisterNetEvent
L3_1 = "spawnProp"
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A0_2 then
    L4_2 = IsPropSessionActive
    if L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.sendNotification
      L5_2 = _U
      L6_2 = "YOU_ARE_AREADY_IN_PLACING_MODE"
      L7_2 = "error"
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2, L7_2)
      return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    IsPropSessionActive = true
    L4_2 = PROP_TYPES
    L4_2 = L4_2.BARRICADE
    if A2_2 == L4_2 then
      L4_2 = Props
      L4_2 = L4_2.RequestBarricade
      L5_2 = A1_2
      L4_2(L5_2)
    else
      L4_2 = PROP_TYPES
      L4_2 = L4_2.SPIKES
      if A2_2 == L4_2 then
        L4_2 = Props
        L4_2 = L4_2.RequestSpikes
        L5_2 = A1_2
        L4_2(L5_2)
      else
        L4_2 = PROP_TYPES
        L4_2 = L4_2.MEGA_PHONE
        if A2_2 == L4_2 then
          L4_2 = Props
          L4_2 = L4_2.RequestMegaPhone
          L5_2 = A1_2
          L4_2(L5_2)
        else
          L4_2 = PROP_TYPES
          L4_2 = L4_2.PAPER_BAG
          if A2_2 == L4_2 then
            L4_2 = Props
            L4_2 = L4_2.RequestPaperBag
            L5_2 = A1_2
            L4_2(L5_2)
          else
            L4_2 = PROP_TYPES
            L4_2 = L4_2.WHEEL_CLAMP
            if A2_2 == L4_2 then
              L4_2 = Props
              L4_2 = L4_2.RequestWheelClamp
              L5_2 = A1_2
              L4_2(L5_2)
            else
              L4_2 = PlayerPedId
              L4_2 = L4_2()
              L5_2 = GetEntityCoords
              L6_2 = L4_2
              L5_2 = L5_2(L6_2)
              L6_2 = Config
              L6_2 = L6_2.Props
              L6_2 = L6_2.ModelDataByPropType
              L6_2 = L6_2[A2_2]
              L7_2 = GetEntityForwardVector
              L8_2 = L4_2
              L7_2 = L7_2(L8_2)
              L8_2 = L7_2 * 2
              L8_2 = L5_2 + L8_2
              L9_2 = ObjectPlacer
              L9_2 = L9_2.startPlace
              L10_2 = A1_2
              function L11_2(A0_3, A1_3, A2_3, A3_3)
                local L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
                if not A0_3 then
                  IsPropSessionActive = false
                  return
                end
                if not A2_3 then
                  IsPropSessionActive = false
                  return
                end
                L4_3 = IsPropSessionActive
                if not L4_3 then
                  return
                end
                L4_3 = {}
                L4_3.heading = A2_3
                L4_3.pos = A0_3
                L5_3 = A2_2
                L4_3.type = L5_3
                L5_3 = A2_2
                L6_3 = PROP_TYPES
                L6_3 = L6_3.SPEED_RADAR
                if L5_3 == L6_3 then
                  L5_3 = vec3
                  L6_3 = A0_3.x
                  L7_3 = A0_3.y
                  L8_3 = A0_3.z
                  L8_3 = L8_3 - 0.8
                  L5_3 = L5_3(L6_3, L7_3, L8_3)
                  A0_3 = L5_3
                  L5_3 = {}
                  L6_3 = {}
                  L7_3 = _U
                  L8_3 = "CAMERA_SPEED_RADAR.INPUT_SPEED_LABEL"
                  L9_3 = Config
                  L9_3 = L9_3.Props
                  L9_3 = L9_3.SpeedCamera
                  L9_3 = L9_3.SpeedType
                  L7_3 = L7_3(L8_3, L9_3)
                  L6_3.label = L7_3
                  L7_3 = _U
                  L8_3 = "CAMERA_SPEED_RADAR.INPUT_SPEED_PLACEHOLDER"
                  L7_3 = L7_3(L8_3)
                  L6_3.placeholder = L7_3
                  L6_3.type = "number"
                  L6_3.required = true
                  L7_3 = {}
                  L8_3 = _U
                  L9_3 = "CAMERA_SPEED_RADAR.INPUT_FINE_LABEL"
                  L8_3 = L8_3(L9_3)
                  L7_3.label = L8_3
                  L8_3 = _U
                  L9_3 = "CAMERA_SPEED_RADAR.INPUT_FINE_PLACEHOLDER"
                  L8_3 = L8_3(L9_3)
                  L7_3.placeholder = L8_3
                  L7_3.type = "number"
                  L7_3.required = true
                  L5_3[1] = L6_3
                  L5_3[2] = L7_3
                  L6_3 = Config
                  L6_3 = L6_3.Props
                  L6_3 = L6_3.SpeedCamera
                  L6_3 = L6_3.BlipOption
                  if L6_3 then
                    L6_3 = table
                    L6_3 = L6_3.insert
                    L7_3 = L5_3
                    L8_3 = {}
                    L9_3 = _U
                    L10_3 = "CAMERA_SPEED_RADAR.INPUT_BLIP_LABEL"
                    L9_3 = L9_3(L10_3)
                    L8_3.label = L9_3
                    L8_3.placeholder = "-"
                    L8_3.type = "checkbox"
                    L8_3.required = true
                    L6_3(L7_3, L8_3)
                  end
                  L6_3 = UI
                  L6_3 = L6_3.Input
                  L7_3 = _U
                  L8_3 = "CAMERA_SPEED_RADAR.TITLE"
                  L7_3 = L7_3(L8_3)
                  L8_3 = L5_3
                  L6_3 = L6_3(L7_3, L8_3)
                  if not L6_3 then
                    return
                  end
                  L7_3 = tostring
                  L8_3 = 0
                  L7_3 = L7_3(L8_3)
                  L7_3 = L6_3[L7_3]
                  L8_3 = tostring
                  L9_3 = 1
                  L8_3 = L8_3(L9_3)
                  L8_3 = L6_3[L8_3]
                  L9_3 = tostring
                  L10_3 = 2
                  L9_3 = L9_3(L10_3)
                  L9_3 = L6_3[L9_3]
                  L10_3 = tonumber
                  L11_3 = L7_3
                  L10_3 = L10_3(L11_3)
                  L4_3.maxSpeedZone = L10_3
                  L10_3 = tonumber
                  L11_3 = L8_3
                  L10_3 = L10_3(L11_3)
                  L4_3.fine = L10_3
                  L4_3.blip = L9_3
                end
                L5_3 = Config
                L5_3 = L5_3.Props
                L5_3 = L5_3.PG
                L5_3 = L5_3.EnableWhenDeploying
                if L5_3 then
                  L5_3 = CancellableProgress
                  L6_3 = Config
                  L6_3 = L6_3.Props
                  L6_3 = L6_3.PG
                  L6_3 = L6_3.Time
                  L6_3 = L6_3 * 1000
                  L7_3 = _U
                  L8_3 = "PROPS.PLACING_OBJECT"
                  L9_3 = L6_2
                  if L9_3 then
                    L9_3 = L6_2.label
                    if L9_3 then
                      goto lbl_135
                    end
                  end
                  L9_3 = ""
                  ::lbl_135::
                  L7_3 = L7_3(L8_3, L9_3)
                  L8_3 = L0_1
                  L9_3 = L1_1
                  L10_3 = 1
                  function L11_3()
                    local L0_4, L1_4, L2_4
                    L0_4 = TriggerServerEvent
                    L1_4 = "rcore_police:server:deployProp"
                    L2_4 = L4_3
                    L0_4(L1_4, L2_4)
                    L0_4 = ClearPedTasksImmediately
                    L1_4 = L4_2
                    L0_4(L1_4)
                    IsPropSessionActive = false
                  end
                  function L12_3()
                    local L0_4, L1_4
                    L0_4 = TriggerServerEvent
                    L1_4 = "rcore_police:server:unregisterDeploy"
                    L0_4(L1_4)
                    IsPropSessionActive = false
                  end
                  L13_3 = {}
                  L13_3.previewObject = true
                  L14_3 = {}
                  L15_3 = A1_2
                  L14_3.model = L15_3
                  L14_3.pos = A0_3
                  L14_3.heading = A2_3
                  L14_3.fadeType = "fadeIn"
                  L13_3.previewSettings = L14_3
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
                else
                  L5_3 = UtilsService
                  L5_3 = L5_3.LoadAnimationDict
                  L6_3 = L0_1
                  L5_3(L6_3)
                  L5_3 = TaskPlayAnim
                  L6_3 = L4_2
                  L7_3 = L0_1
                  L8_3 = L1_1
                  L9_3 = 8.0
                  L10_3 = -8.0
                  L11_3 = -1
                  L12_3 = 49
                  L13_3 = 0
                  L14_3 = false
                  L15_3 = false
                  L16_3 = false
                  L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
                  L5_3 = Wait
                  L6_3 = 1000
                  L5_3(L6_3)
                  L5_3 = ClearPedTasksImmediately
                  L6_3 = L4_2
                  L5_3(L6_3)
                  L5_3 = TriggerServerEvent
                  L6_3 = "rcore_police:server:deployProp"
                  L7_3 = L4_3
                  L5_3(L6_3, L7_3)
                  IsPropSessionActive = false
                end
              end
              function L12_2()
                local L0_3, L1_3, L2_3, L3_3
                IsPropSessionActive = false
                L0_3 = TriggerServerEvent
                L1_3 = "rcore_police:server:unregisterDeploy"
                L0_3(L1_3)
                L0_3 = Framework
                L0_3 = L0_3.sendNotification
                L1_3 = _U
                L2_3 = "PROPS.CANCELING_PLACING"
                L3_3 = L6_2
                if L3_3 then
                  L3_3 = L6_2.label
                  if L3_3 then
                    goto lbl_16
                  end
                end
                L3_3 = ""
                ::lbl_16::
                L1_3 = L1_3(L2_3, L3_3)
                L2_3 = "success"
                L0_3(L1_3, L2_3)
              end
              function L13_2(A0_3)
                local L1_3, L2_3, L3_3, L4_3
                IsPropSessionActive = false
                L1_3 = TriggerServerEvent
                L2_3 = "rcore_police:server:unregisterDeploy"
                L1_3(L2_3)
                L1_3 = Framework
                L1_3 = L1_3.sendNotification
                L2_3 = _U
                L3_3 = "PROPS.FAILED_PLACING"
                L4_3 = L6_2
                if L4_3 then
                  L4_3 = L6_2.label
                  if L4_3 then
                    goto lbl_16
                  end
                end
                L4_3 = ""
                ::lbl_16::
                L2_3 = L2_3(L3_3, L4_3)
                L3_3 = "error"
                L1_3(L2_3, L3_3)
              end
              L14_2 = true
              L15_2 = nil
              L16_2 = {}
              L16_2.coords = L8_2
              L17_2 = Config
              L17_2 = L17_2.Props
              L17_2 = L17_2.PlaceEditorCheckDistance
              L16_2.distance = L17_2
              L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
            end
          end
        end
      end
    end
  end
end
L2_1(L3_1, L4_1)
