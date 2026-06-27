local L0_1, L1_1, L2_1, L3_1
L0_1 = "amb@prop_human_bum_bin@idle_b"
L1_1 = "idle_d"
L2_1 = Props
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.Props
  L3_2 = L3_2.ModelDataByPropType
  L4_2 = PROP_TYPES
  L4_2 = L4_2.SPIKES
  L3_2 = L3_2[L4_2]
  L4_2 = GetEntityForwardVector
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * 2
  L5_2 = L2_2 + L5_2
  L6_2 = ObjectPlacer
  L6_2 = L6_2.startPlace
  L7_2 = A0_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    if not A0_3 then
      IsPropSessionActive = false
      return
    end
    if not A2_3 then
      IsPropSessionActive = false
      return
    end
    L3_3 = IsPropSessionActive
    if not L3_3 then
      return
    end
    L3_3 = Config
    L3_3 = L3_3.Props
    L3_3 = L3_3.PG
    L3_3 = L3_3.EnableWhenDeploying
    if L3_3 then
      L3_3 = CancellableProgress
      L4_3 = Config
      L4_3 = L4_3.Props
      L4_3 = L4_3.PG
      L4_3 = L4_3.Time
      L4_3 = L4_3 * 1000
      L5_3 = _U
      L6_3 = "PROPS.PLACING_OBJECT"
      L7_3 = L3_2.label
      if not L7_3 then
        L7_3 = ""
      end
      L5_3 = L5_3(L6_3, L7_3)
      L6_3 = L0_1
      L7_3 = L1_1
      L8_3 = 1
      function L9_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = TriggerServerEvent
        L1_4 = "rcore_police:server:deployProp"
        L2_4 = {}
        L3_4 = A2_3
        L2_4.heading = L3_4
        L3_4 = A0_3
        L2_4.pos = L3_4
        L3_4 = PROP_TYPES
        L3_4 = L3_4.SPIKES
        L2_4.type = L3_4
        L0_4(L1_4, L2_4)
        L0_4 = ClearPedTasksImmediately
        L1_4 = L1_2
        L0_4(L1_4)
        IsPropSessionActive = false
      end
      function L10_3()
        local L0_4, L1_4
        L0_4 = TriggerServerEvent
        L1_4 = "rcore_police:server:unregisterDeploy"
        L0_4(L1_4)
        IsPropSessionActive = false
      end
      L11_3 = {}
      L11_3.previewObject = true
      L12_3 = {}
      L13_3 = A0_2
      L12_3.model = L13_3
      L12_3.pos = A0_3
      L12_3.heading = A2_3
      L12_3.fadeType = "fadeIn"
      L11_3.previewSettings = L12_3
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    else
      L3_3 = UtilsService
      L3_3 = L3_3.LoadAnimationDict
      L4_3 = L0_1
      L3_3(L4_3)
      L3_3 = TaskPlayAnim
      L4_3 = L1_2
      L5_3 = L0_1
      L6_3 = L1_1
      L7_3 = 8.0
      L8_3 = -8.0
      L9_3 = -1
      L10_3 = 49
      L11_3 = 0
      L12_3 = false
      L13_3 = false
      L14_3 = false
      L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L3_3 = Wait
      L4_3 = 1000
      L3_3(L4_3)
      L3_3 = ClearPedTasksImmediately
      L4_3 = L1_2
      L3_3(L4_3)
      L3_3 = TriggerServerEvent
      L4_3 = "rcore_police:server:deployProp"
      L5_3 = {}
      L5_3.heading = A2_3
      L5_3.pos = A0_3
      L6_3 = PROP_TYPES
      L6_3 = L6_3.SPIKES
      L5_3.type = L6_3
      L3_3(L4_3, L5_3)
      IsPropSessionActive = false
    end
  end
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    IsPropSessionActive = false
    L0_3 = TriggerServerEvent
    L1_3 = "rcore_police:server:unregisterDeploy"
    L0_3(L1_3)
    L0_3 = Framework
    L0_3 = L0_3.sendNotification
    L1_3 = _U
    L2_3 = "PROPS.CANCELING_PLACING"
    L3_3 = L3_2.label
    if not L3_3 then
      L3_3 = ""
    end
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = "success"
    L0_3(L1_3, L2_3)
  end
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    IsPropSessionActive = false
    L1_3 = TriggerServerEvent
    L2_3 = "rcore_police:server:unregisterDeploy"
    L1_3(L2_3)
    L1_3 = Framework
    L1_3 = L1_3.sendNotification
    L2_3 = _U
    L3_3 = "PROPS.FAILED_PLACING"
    L4_3 = L3_2.label
    if not L4_3 then
      L4_3 = ""
    end
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = "error"
    L1_3(L2_3, L3_3)
  end
  L11_2 = true
  L12_2 = nil
  L13_2 = {}
  L13_2.coords = L5_2
  L14_2 = Config
  L14_2 = L14_2.Props
  L14_2 = L14_2.PlaceEditorCheckDistance
  L13_2.distance = L14_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
end
L2_1.RequestSpikes = L3_1
