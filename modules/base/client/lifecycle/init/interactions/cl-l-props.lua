local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
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
          L7_2 = L0_1
          L7_2 = L7_2[L5_2]
          L7_2 = L7_2.zone
          L8_2 = L7_2.speedRoadNode
          if L8_2 then
            L8_2 = RemoveSpeedZone
            L9_2 = L7_2.speedRoadNode
            L8_2(L9_2)
          end
          if L7_2 then
            L8_2 = L7_2.getPosition
            L8_2 = L8_2()
            L9_2 = PlayerPedId
            L9_2 = L9_2()
            L10_2 = GetEntityCoords
            L11_2 = L9_2
            L10_2 = L10_2(L11_2)
            L11_2 = L8_2 - L10_2
            L11_2 = #L11_2
            if L11_2 <= 10.0 then
              L12_2 = UI
              L12_2 = L12_2.HelpKeys
              L13_2 = nil
              L14_2 = false
              L12_2(L13_2, L14_2)
            end
          end
          L8_2 = L7_2.collisionEntity
          if L8_2 then
            L8_2 = DoesEntityExist
            L9_2 = L7_2.collisionEntity
            L8_2 = L8_2(L9_2)
            if L8_2 then
              L8_2 = DeleteEntity
              L9_2 = L7_2.collisionEntity
              L8_2(L9_2)
              L7_2.collisionEntity = nil
            end
          end
          L8_2 = L7_2.getPropZoneData
          L8_2 = L8_2()
          if L8_2 then
            L9_2 = L8_2.type
            L10_2 = PROP_TYPES
            L10_2 = L10_2.WHEEL_CLAMP
            if L9_2 == L10_2 then
              L9_2 = NetToVeh
              L10_2 = L8_2.vehNetId
              L9_2 = L9_2(L10_2)
              L10_2 = DoesEntityExist
              L11_2 = L9_2
              L10_2 = L10_2(L11_2)
              if L10_2 then
                L10_2 = WheelClampDespawn
                L11_2 = L9_2
                L10_2(L11_2)
              end
            end
          end
          L9_2 = L0_1
          L9_2 = L9_2[L5_2]
          L9_2 = L9_2.zone
          L9_2 = L9_2.destroy
          L9_2()
          L9_2 = L0_1
          L9_2 = L9_2[L5_2]
          L9_2 = L9_2.zone
          L9_2 = L9_2.unloadObject
          L9_2()
          L9_2 = L0_1
          L9_2 = L9_2[L5_2]
          L9_2 = L9_2.blip
          if L9_2 then
            L9_2 = DoesBlipExist
            L10_2 = L0_1
            L10_2 = L10_2[L5_2]
            L10_2 = L10_2.blip
            L9_2 = L9_2(L10_2)
            if L9_2 then
              L9_2 = RemoveBlip
              L10_2 = L0_1
              L10_2 = L10_2[L5_2]
              L10_2 = L10_2.blip
              L9_2(L10_2)
            end
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:client:syncObjectPool"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = RegisterPropIntoDynamicPool
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif not A1_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = L0_1
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.zone
      if L2_2 then
        L3_2 = L2_2.getPosition
        L3_2 = L3_2()
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = GetEntityCoords
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L6_2 = L3_2 - L5_2
        L6_2 = #L6_2
        if L6_2 <= 10.0 then
          L7_2 = UI
          L7_2 = L7_2.HelpKeys
          L8_2 = nil
          L9_2 = false
          L7_2(L8_2, L9_2)
        end
      end
      L3_2 = L2_2.collisionEntity
      if L3_2 then
        L3_2 = DoesEntityExist
        L4_2 = L2_2.collisionEntity
        L3_2 = L3_2(L4_2)
        if L3_2 then
          L3_2 = DeleteEntity
          L4_2 = L2_2.collisionEntity
          L3_2(L4_2)
          L2_2.collisionEntity = nil
        end
      end
      L3_2 = L2_2.speedRoadNode
      if L3_2 then
        L3_2 = RemoveSpeedZone
        L4_2 = L2_2.speedRoadNode
        L3_2(L4_2)
      end
      L3_2 = L2_2.getPropZoneData
      L3_2 = L3_2()
      if L3_2 then
        L4_2 = L3_2.type
        L5_2 = PROP_TYPES
        L5_2 = L5_2.WHEEL_CLAMP
        if L4_2 == L5_2 then
          L4_2 = NetToVeh
          L5_2 = L3_2.vehNetId
          L4_2 = L4_2(L5_2)
          L5_2 = DoesEntityExist
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if L5_2 then
            L5_2 = WheelClampDespawn
            L6_2 = L4_2
            L5_2(L6_2)
          end
        end
      end
      L4_2 = L0_1
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.zone
      L4_2 = L4_2.destroy
      L4_2()
      L4_2 = L0_1
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.zone
      L4_2 = L4_2.unloadObject
      L4_2()
      L4_2 = L0_1
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.blip
      if L4_2 then
        L4_2 = DoesBlipExist
        L5_2 = L0_1
        L5_2 = L5_2[A0_2]
        L5_2 = L5_2.blip
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = RemoveBlip
          L5_2 = L0_1
          L5_2 = L5_2[A0_2]
          L5_2 = L5_2.blip
          L4_2(L5_2)
        end
      end
      L4_2 = table
      L4_2 = L4_2.remove
      L5_2 = L0_1
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = NetworkService
L1_1 = L1_1.RegisterNetEvent
L2_1 = "RenderVehicleFlash"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 then
    L2_2 = L0_1
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L3_2 = L2_2.zone
      if not L3_2 then
        return
      end
      L4_2 = L3_2.getPosition
      L4_2 = L4_2()
      L5_2 = L3_2.getCameraForwardVector
      L5_2 = L5_2()
      L6_2 = Sounds
      L6_2 = L6_2.PlaySpeedCamera
      L6_2()
      L6_2 = fadeInFlashlight
      L7_2 = L4_2
      L8_2 = L5_2
      L9_2 = 0.5
      L6_2(L7_2, L8_2, L9_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = NetworkService
L1_1 = L1_1.RegisterNetEvent
L2_1 = "SyncObjectPoolForUser"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    if not A1_2 then
      return
    end
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Syncing object pool, since new user loaded."
    L2_2(L3_2)
    L2_2 = pairs
    L3_2 = A1_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = RegisterPropIntoDynamicPool
      L9_2 = L6_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = NetworkService
L1_1 = L1_1.RegisterNetEvent
L2_1 = "StartRemovingPropTask"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if A0_2 then
    L3_2 = L0_1
    L3_2 = L3_2[A1_2]
    L4_2 = Config
    L4_2 = L4_2.Props
    L4_2 = L4_2.ModelDataByPropType
    L4_2 = L4_2[A2_2]
    L5_2 = "amb@prop_human_bum_bin@idle_b"
    L6_2 = "idle_d"
    L7_2 = PROP_TYPES
    L7_2 = L7_2.WHEEL_CLAMP
    if A2_2 == L7_2 then
      L5_2 = "weapon@w_sp_jerrycan"
      L6_2 = "discard_crouch"
    end
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = MakePedIgnoreHitFromOtherPlayer
    L9_2 = L7_2
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = Config
    L8_2 = L8_2.Props
    L8_2 = L8_2.PG
    L8_2 = L8_2.EnableWhenPicking
    if L8_2 then
      L8_2 = CancellableProgress
      L9_2 = Config
      L9_2 = L9_2.Props
      L9_2 = L9_2.PG
      L9_2 = L9_2.Time
      L9_2 = L9_2 * 1000
      L10_2 = _U
      L11_2 = "PROPS.PICKING_UP_PROP"
      L12_2 = L4_2.label
      if not L12_2 then
        L12_2 = ""
      end
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L5_2
      L12_2 = L6_2
      L13_2 = 1
      function L14_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = MakePedIgnoreHitFromOtherPlayer
        L1_3 = L7_2
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = TriggerServerEvent
        L1_3 = "rcore_police:server:removePropDeploy"
        L2_3 = A1_2
        L3_3 = A2_2
        L0_3(L1_3, L2_3, L3_3)
      end
      function L15_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = MakePedIgnoreHitFromOtherPlayer
        L1_3 = L7_2
        L2_3 = false
        L0_3(L1_3, L2_3)
        L0_3 = TriggerServerEvent
        L1_3 = "rcore_police:server:resetPropDeployState"
        L2_3 = A1_2
        L0_3(L1_3, L2_3)
        L0_3 = L3_2.zone
        L0_3 = L0_3.entity
        if L0_3 then
          L0_3 = DoesEntityExist
          L1_3 = L3_2.zone
          L1_3 = L1_3.entity
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = UtilsService
            L0_3 = L0_3.StopCurrentFade
            L0_3()
            L0_3 = SetEntityAlpha
            L1_3 = L3_2.zone
            L1_3 = L1_3.entity
            L2_3 = 255
            L3_3 = false
            L0_3(L1_3, L2_3, L3_3)
          end
        end
      end
      L16_2 = {}
      L16_2.previewObject = true
      L17_2 = {}
      L18_2 = L3_2.zone
      L18_2 = L18_2.entity
      L17_2.entity = L18_2
      L17_2.fadeType = "fadeOut"
      L16_2.previewSettings = L17_2
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    else
      L8_2 = MakePedIgnoreHitFromOtherPlayer
      L9_2 = L7_2
      L10_2 = false
      L8_2(L9_2, L10_2)
      L8_2 = TriggerServerEvent
      L9_2 = "rcore_police:server:removePropDeploy"
      L10_2 = A1_2
      L11_2 = A2_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = A1_2.type
  L3_2 = A1_2.heading
  L4_2 = A1_2.blip
  L5_2 = A1_2.maxSpeedZone
  if not L5_2 then
    L5_2 = Config
    L5_2 = L5_2.Props
    L5_2 = L5_2.SpeedCamera
    L5_2 = L5_2.DefaultMaxSpeed
  end
  L6_2 = Config
  L6_2 = L6_2.Props
  L6_2 = L6_2.ModelDataByPropType
  L6_2 = L6_2[L2_2]
  if not L6_2 then
    L7_2 = dbg
    L7_2 = L7_2.info
    L8_2 = "Failure"
    return L7_2(L8_2)
  end
  L7_2 = L6_2.prop
  L8_2 = L6_2.action
  if not L7_2 then
    return
  end
  L9_2 = vec3
  L10_2 = A1_2.pos
  L10_2 = L10_2.x
  L11_2 = A1_2.pos
  L11_2 = L11_2.y
  L12_2 = A1_2.pos
  L12_2 = L12_2.z
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L10_2 = "%s_%s"
  L11_2 = L10_2
  L10_2 = L10_2.format
  L12_2 = L2_2
  L13_2 = A0_2
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = createMarker
  L11_2 = L11_2()
  L12_2 = L0_1
  L13_2 = {}
  L13_2.zone = L11_2
  L13_2.data = A1_2
  L12_2[A0_2] = L13_2
  L12_2 = Framework
  L12_2 = L12_2.job
  if L12_2 then
    L13_2 = next
    L14_2 = L12_2
    L13_2 = L13_2(L14_2)
    if L13_2 then
      L13_2 = L12_2.name
      if L13_2 then
        L13_2 = L11_2.setDepartmentOwner
        L14_2 = L12_2.name
        L13_2(L14_2)
      end
    end
  end
  L13_2 = L11_2.setPosition
  L14_2 = L9_2
  L13_2(L14_2)
  L13_2 = L11_2.setPropZone
  L14_2 = true
  L13_2(L14_2)
  L13_2 = L11_2.setPropLodDistance
  L14_2 = Config
  L14_2 = L14_2.Props
  L14_2 = L14_2.LodDistance
  L13_2(L14_2)
  L13_2 = L11_2.setPropZoneData
  L14_2 = {}
  L14_2.model = L7_2
  L14_2.heading = L3_2
  L14_2.id = L10_2
  L14_2.type = L2_2
  L15_2 = A1_2 or L15_2
  if A1_2 then
    L15_2 = A1_2.wheelBone
  end
  L14_2.wheelBone = L15_2
  L15_2 = A1_2 or L15_2
  if A1_2 then
    L15_2 = A1_2.vehNetId
  end
  L14_2.vehNetId = L15_2
  L13_2(L14_2)
  L13_2 = L11_2.registerKey
  function L14_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L1_3 = L0_1
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      return
    end
    L1_3 = pcall
    L2_3 = L11_2.onKey
    L3_3 = A0_3
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    if not L1_3 then
      L3_3 = dbg
      L3_3 = L3_3.debug
      L4_3 = "Error in onKey: %s"
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
  end
  L15_2 = L10_2
  L16_2 = "Activate Marker"
  L17_2 = "E"
  L18_2 = nil
  L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = true
    L1_3 = Config
    L1_3 = L1_3.Props
    L1_3 = L1_3.DespawnOnlyForDepartmentGroups
    if L1_3 then
      L1_3 = Framework
      L1_3 = L1_3.job
      if L1_3 then
        L2_3 = Config
        L2_3 = L2_3.JobGroups
        L3_3 = L1_3.name
        L4_3 = L3_3
        L3_3 = L3_3.lower
        L3_3 = L3_3(L4_3)
        L2_3 = L2_3[L3_3]
        if L2_3 then
          L0_3 = false
        end
      end
    else
      L0_3 = false
    end
    if L0_3 then
      return
    end
    L1_3 = UI
    L1_3 = L1_3.HelpKeys
    L2_3 = nil
    L3_3 = false
    L1_3(L2_3, L3_3)
    L1_3 = TriggerServerEvent
    L2_3 = "rcore_police:server:requestRemoveProp"
    L3_3 = A0_2
    L4_3 = L2_2
    L1_3(L2_3, L3_3, L4_3)
  end
  L11_2.onKey = L13_2
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L11_2.getId
    L0_3 = L0_3()
    GlobalZoneId = L0_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = true
    L2_3 = Config
    L2_3 = L2_3.Props
    L2_3 = L2_3.DespawnOnlyForDepartmentGroups
    if L2_3 then
      L2_3 = Framework
      L2_3 = L2_3.job
      if L2_3 then
        L3_3 = Config
        L3_3 = L3_3.JobGroups
        L4_3 = L2_3.name
        L5_3 = L4_3
        L4_3 = L4_3.lower
        L4_3 = L4_3(L5_3)
        L3_3 = L3_3[L4_3]
        if L3_3 then
          L1_3 = false
        end
      end
    else
      L1_3 = false
    end
    L2_3 = IsPedInAnyVehicle
    L3_3 = L0_3
    L4_3 = false
    L2_3 = L2_3(L3_3, L4_3)
    if not L2_3 and not L1_3 then
      L2_3 = UI
      L2_3 = L2_3.HelpKeys
      L3_3 = {}
      L4_3 = {}
      L5_3 = {}
      L6_3 = Config
      L6_3 = L6_3.InteractZone
      L5_3.key = L6_3
      L6_3 = _U
      L7_3 = "PROPS.HELP_TEXT"
      L6_3 = L6_3(L7_3)
      L5_3.label = L6_3
      L4_3[1] = L5_3
      L3_3.keys = L4_3
      L4_3 = true
      L2_3(L3_3, L4_3)
    end
    L2_3 = L8_2
    if L2_3 then
      L2_3 = L8_2
      L3_3 = ZONE_ACTIONS
      L3_3 = L3_3.DESTROY_VEHICLE_TYRES
      if L2_3 == L3_3 then
        L2_3 = IsPedInAnyVehicle
        L3_3 = L0_3
        L4_3 = false
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L2_3 = GetVehiclePedIsIn
          L3_3 = L0_3
          L4_3 = false
          L2_3 = L2_3(L3_3, L4_3)
          L3_3 = DoesEntityExist
          L4_3 = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L3_3 = dbg
            L3_3 = L3_3.debug
            L4_3 = "Destroying vehicle tyres"
            L3_3(L4_3)
            L3_3 = 0
            L4_3 = 7
            L5_3 = 1
            for L6_3 = L3_3, L4_3, L5_3 do
              L7_3 = IsVehicleTyreBurst
              L8_3 = L2_3
              L9_3 = L6_3
              L10_3 = true
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              if not L7_3 then
                L7_3 = SetVehicleTyreBurst
                L8_3 = L2_3
                L9_3 = L6_3
                L10_3 = true
                L11_3 = 1000
                L7_3(L8_3, L9_3, L10_3, L11_3)
              end
            end
          end
        end
      end
    end
  end
  L11_2.onEnter = L13_2
  function L13_2()
    local L0_3, L1_3, L2_3
    GlobalZoneId = nil
    L0_3 = UI
    L0_3 = L0_3.HelpKeys
    L1_3 = nil
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L11_2.onLeave = L13_2
  if L8_2 then
    L13_2 = ZONE_ACTIONS
    L13_2 = L13_2.DESTROY_VEHICLE_TYRES
    if L8_2 == L13_2 then
      L13_2 = dbg
      L13_2 = L13_2.debug
      L14_2 = "Props: Setting zone radius for spikes, adjusted range."
      L13_2(L14_2)
      L13_2 = L11_2.setInRadius
      L14_2 = Config
      L14_2 = L14_2.Props
      L14_2 = L14_2.SpikesRange
      if not L14_2 then
        L14_2 = 1.5
      end
      L13_2(L14_2)
    end
  end
  if L8_2 then
    L13_2 = ZONE_ACTIONS
    L13_2 = L13_2.BLOCK_VEHICLE_MOVEMENT
    if L8_2 == L13_2 then
      L13_2 = L11_2.setInRadius
      L14_2 = Config
      L14_2 = L14_2.Props
      L14_2 = L14_2.DistanceBetweenWheelClamp
      if not L14_2 then
        L14_2 = 1.0
      end
      L13_2(L14_2)
    end
  end
  L13_2 = ZONE_ACTIONS
  L13_2 = L13_2.CHECK_VEHICLE_SPEED
  if L8_2 == L13_2 then
    L13_2 = L11_2.setCameraZone
    L14_2 = L3_2
    L15_2 = L5_2
    L13_2(L14_2, L15_2)
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L0_3 = GetVehiclePedIsIn
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = false
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = GetEntitySpeed
      L2_3 = L0_3
      L1_3 = L1_3(L2_3)
      L2_3 = getVehicleSpeed
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = L11_2.getCameraZoneSpeed
      L3_3 = L3_3()
      if L2_3 >= L3_3 then
        L4_3 = TriggerServerEvent
        L5_3 = "rcore_police:server:requestSpeedCameraFine"
        L6_3 = A0_2
        L7_3 = VehToNet
        L8_3 = L0_3
        L7_3, L8_3 = L7_3(L8_3)
        L4_3(L5_3, L6_3, L7_3, L8_3)
      end
    end
    L11_2.onEnterSpeedCamera = L13_2
    function L13_2()
      local L0_3, L1_3
    end
    L11_2.onLeaveSpeedCamera = L13_2
  end
  if L4_2 then
    L13_2 = dbg
    L13_2 = L13_2.debug
    L14_2 = "Creating blip for camera at vec3 -> %s %s %s"
    L15_2 = L9_2.x
    L16_2 = L9_2.y
    L17_2 = L9_2.z
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L13_2 = L0_1
    L13_2 = L13_2[A0_2]
    L13_2.createBlip = true
    L13_2 = L0_1
    L13_2 = L13_2[A0_2]
    L14_2 = Utils
    L14_2 = L14_2.CreateBlipAtCoords
    L15_2 = {}
    L16_2 = Config
    L16_2 = L16_2.Props
    L16_2 = L16_2.SpeedCamera
    L16_2 = L16_2.Blip
    L16_2 = L16_2.Sprite
    L15_2.sprite = L16_2
    L16_2 = Config
    L16_2 = L16_2.Props
    L16_2 = L16_2.SpeedCamera
    L16_2 = L16_2.Blip
    L16_2 = L16_2.Color
    if not L16_2 then
      L16_2 = 1
    end
    L15_2.color = L16_2
    L15_2.display = 4
    L16_2 = Config
    L16_2 = L16_2.Props
    L16_2 = L16_2.SpeedCamera
    L16_2 = L16_2.Blip
    L16_2 = L16_2.Scale
    L15_2.scale = L16_2
    L15_2.shortRange = false
    L16_2 = Config
    L16_2 = L16_2.Props
    L16_2 = L16_2.SpeedCamera
    L16_2 = L16_2.Blip
    L16_2 = L16_2.Label
    L15_2.name = L16_2
    L15_2.pos = L9_2
    L14_2 = L14_2(L15_2)
    L13_2.blip = L14_2
  end
  L13_2 = L11_2.setId
  L14_2 = L10_2
  L13_2(L14_2)
  L13_2 = L11_2.render
  L13_2()
end
RegisterPropIntoDynamicPool = L1_1
