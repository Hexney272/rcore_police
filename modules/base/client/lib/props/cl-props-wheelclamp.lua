local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = Config
L0_1 = L0_1.Props
L0_1 = L0_1.ModelDataByPropType
L0_1 = L0_1.WHEEL_CLAMP
L0_1 = L0_1.prop
L1_1 = {}
L2_1 = "veh@common@motorbike@high@ds"
L3_1 = "pickup"
L4_1 = Config
L4_1 = L4_1.WheelClamp
L4_1 = L4_1.Bones
if not L4_1 then
  L4_1 = {}
  L5_1 = "wheel_lf"
  L6_1 = "wheel_rf"
  L7_1 = "wheel_lr"
  L8_1 = "wheel_rr"
  L9_1 = "wheel_lm1"
  L10_1 = "wheel_rm1"
  L11_1 = "wheel_lm2"
  L12_1 = "wheel_rm2"
  L13_1 = "wheel_lm3"
  L14_1 = "wheel_rm3"
  L4_1[1] = L5_1
  L4_1[2] = L6_1
  L4_1[3] = L7_1
  L4_1[4] = L8_1
  L4_1[5] = L9_1
  L4_1[6] = L10_1
  L4_1[7] = L11_1
  L4_1[8] = L12_1
  L4_1[9] = L13_1
  L4_1[10] = L14_1
end
L5_1 = NetworkService
L5_1 = L5_1.RegisterNetEvent
L6_1 = "RemoveWheelClamp"
function L7_1(A0_2)
  local L1_2
  if A0_2 then
    L1_2 = RemoveWheelClamp
    L1_2()
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.find
  L3_2 = "_l"
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = "left"
    return L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2.find
    L3_2 = "_r"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = "right"
      return L1_2
    end
  end
  L1_2 = "unknown"
  return L1_2
end
GetWheelSide = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetNearbyVehicle
  L3_2 = L1_2
  L4_2 = 5.0
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L4_2 = L1_1
    L4_2 = L4_2[L3_2]
    if L4_2 then
      L5_2 = next
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = nil
        L6_2 = nil
        L7_2 = nil
        L8_2 = pairs
        L9_2 = L4_2
        L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
        for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
          L14_2 = vector3
          L15_2 = L13_2.coords
          L15_2 = L15_2.x
          L16_2 = L13_2.coords
          L16_2 = L16_2.y
          L17_2 = L13_2.coords
          L17_2 = L17_2.z
          L14_2 = L14_2(L15_2, L16_2, L17_2)
          L15_2 = L1_2 - L14_2
          L15_2 = #L15_2
          if not L6_2 or L6_2 > L15_2 then
            L6_2 = L15_2
            L5_2 = L13_2
            L7_2 = L13_2.id
          end
        end
        if L7_2 then
          L8_2 = Config
          L8_2 = L8_2.WheelClamp
          L8_2 = L8_2.DistanceToBoneToRemove
          if L6_2 <= L8_2 then
            L8_2 = TriggerServerEvent
            L9_2 = "rcore_police:server:requestRemoveProp"
            L10_2 = L7_2
            L11_2 = PROP_TYPES
            L11_2 = L11_2.WHEEL_CLAMP
            L8_2(L9_2, L10_2, L11_2)
          end
        end
    end
    else
      L5_2 = Framework
      L5_2 = L5_2.sendNotification
      L6_2 = _U
      L7_2 = "WHEEL_CLAMP.NOT_ANY_WHEEL_CLAMP_ON_THIS_VEHICLE"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L5_2(L6_2, L7_2)
    end
  else
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = _U
    L6_2 = "WHEEL_CLAMP.NOT_CLOSE_TO_VEHICLE"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    L4_2(L5_2, L6_2)
  end
end
RemoveWheelClamp = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = GetEntityCoords
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = math
  L4_2 = L4_2.huge
  L5_2 = ipairs
  L6_2 = L4_1
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetEntityBoneIndexByName
    L12_2 = A0_2
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    if -1 ~= L11_2 then
      L12_2 = GetWorldPositionOfEntityBone
      L13_2 = A0_2
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = L1_2 - L12_2
      L13_2 = #L13_2
      if L4_2 > L13_2 then
        L14_2 = 1.5
        if L13_2 <= L14_2 then
          L4_2 = L13_2
          L2_2 = L10_2
          L3_2 = L12_2
        end
      end
    end
  end
  L5_2 = L2_2
  L6_2 = L3_2
  return L5_2, L6_2
end
GetClosestWheelBone = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetAnimDuration
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 <= 0.0 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = 0.0
  L4_2 = 1.0
  L4_2 = L4_2 - L3_2
  L4_2 = L2_2 * L4_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2 * 1000
  return L5_2(L6_2)
end
GetCurrentAnimationTime = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = GetClosestVehicle
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L7_2 = A1_2 or L7_2
  if not A1_2 or not A1_2 then
    L7_2 = 2.0
  end
  L8_2 = 0
  L9_2 = 7
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if 0 ~= L3_2 then
    L2_2 = true
    L4_2 = GetClosestVehicle
    L5_2 = A0_2.x
    L6_2 = A0_2.y
    L7_2 = A0_2.z
    L8_2 = A1_2 or L8_2
    if not A1_2 or not A1_2 then
      L8_2 = 2.0
    end
    L9_2 = 0
    L10_2 = 7
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L4_2
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
GetNearbyVehicle = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "WHEEL_CLAMP_(%d+)"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = tonumber
  L3_2 = L1_2
  return L2_2(L3_2)
end
getClampNumber = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2.object
  L3_2 = NetToVeh
  L4_2 = L2_2.vehNetId
  L3_2 = L3_2(L4_2)
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = SetEntityCollision
  L5_2 = A0_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityDynamic
  L5_2 = A0_2
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = SetEntityAlwaysPrerender
  L5_2 = A0_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = PlaceObjectOnGroundProperly
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = GetEntityBoneIndexByName
  L5_2 = L3_2
  L6_2 = L2_2.wheelBone
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = GetWheelSide
  L6_2 = L2_2.wheelBone
  L5_2 = L5_2(L6_2)
  if -1 ~= L4_2 then
    L6_2 = GetWorldPositionOfEntityBone
    L7_2 = L3_2
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = vec3
    L8_2 = L6_2.x
    L9_2 = L6_2.y
    L10_2 = L6_2.z
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L8_2 = GetEntityRotation
    L9_2 = L3_2
    L10_2 = 2
    L8_2 = L8_2(L9_2, L10_2)
    if "left" == L5_2 then
      L9_2 = vec3
      L10_2 = L7_2.x
      L11_2 = L7_2.y
      L11_2 = L11_2 - 0.5
      L12_2 = L7_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L6_2 = L9_2
    else
      L9_2 = vec3
      L10_2 = L7_2.x
      L11_2 = L7_2.y
      L11_2 = L11_2 + 0.5
      L12_2 = L7_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L6_2 = L9_2
    end
    L9_2 = SetEntityCoords
    L10_2 = A0_2
    L11_2 = L7_2.x
    L12_2 = L7_2.y
    L13_2 = L7_2.z
    L13_2 = L13_2 - 0.1
    L14_2 = false
    L15_2 = false
    L16_2 = false
    L17_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = SetEntityRotation
    L10_2 = A0_2
    L11_2 = L8_2.x
    L12_2 = L8_2.y
    L13_2 = L8_2.z
    L14_2 = 2
    L15_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L6_2 = A1_2.id
  L7_2 = L1_1
  L7_2 = L7_2[L3_2]
  if not L7_2 then
    L7_2 = L1_1
    L8_2 = {}
    L7_2[L3_2] = L8_2
  end
  L7_2 = L1_1
  L7_2 = L7_2[L3_2]
  L8_2 = {}
  L9_2 = getClampNumber
  L10_2 = A1_2.id
  L9_2 = L9_2(L10_2)
  L8_2.id = L9_2
  L9_2 = L2_2.wheelBone
  L8_2.bone = L9_2
  L9_2 = GetEntityCoords
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  L8_2.coords = L9_2
  L7_2[L6_2] = L8_2
end
WheelClampSpawn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L1_1
    L1_2[A0_2] = nil
    L1_2 = SetVehicleHandbrake
    L2_2 = A0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetVehicleBrake
    L2_2 = A0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = dbg
    L1_2 = L1_2.debug
    L2_2 = "Wheel clamp: Enabling movement of vehicle named %s"
    L3_2 = GetEntityArchetypeName
    L4_2 = A0_2
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
WheelClampDespawn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L1_1
      L3_2 = L3_2[A0_2]
      if L3_2 then
        L3_2 = true
        L4_2 = "HAS_CLAMP_ON_VEHICLE"
        return L3_2, L4_2
      end
    end
  end
  L3_2 = GetNearbyVehicle
  L4_2 = L2_2
  L5_2 = 5.0
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L1_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = true
      L6_2 = "HAS_CLAMP_ON_VEHICLE"
      return L5_2, L6_2
    end
  end
  L5_2 = false
  L6_2 = "NOT_CLAMP_ON_VEHICLE"
  return L5_2, L6_2
end
DoesVehicleHaveWheelClamp = L5_1
L5_1 = Props
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetNearbyVehicle
  L4_2 = L2_2
  L5_2 = 5.0
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = GetClosestWheelBone
    L6_2 = L4_2
    L5_2, L6_2 = L5_2(L6_2)
    L7_2 = GetCurrentAnimationTime
    L8_2 = L2_1
    L9_2 = L3_1
    L7_2 = L7_2(L8_2, L9_2)
    if not L5_2 then
      L8_2 = Framework
      L8_2 = L8_2.sendNotification
      L9_2 = _U
      L10_2 = "WHEEL_CLAMP.NOT_CLOSE_TO_WHEEL"
      L9_2 = L9_2(L10_2)
      L10_2 = "error"
      L8_2(L9_2, L10_2)
      L8_2 = TriggerServerEvent
      L9_2 = "rcore_police:server:unregisterDeploy"
      L8_2(L9_2)
      IsPropSessionActive = false
      return
    end
    if not L7_2 then
      L7_2 = 1700
    end
    L8_2 = CancellableProgress
    L9_2 = L7_2 - 700
    L10_2 = _U
    L11_2 = "PROPS.PLACING_OBJECT"
    L12_2 = _U
    L13_2 = "WHEEL_CLAMP.PG_TITLE"
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L11_2 = L2_1
    L12_2 = L3_1
    L13_2 = 1
    function L14_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = TriggerServerEvent
      L1_3 = "rcore_police:server:deployProp"
      L2_3 = {}
      L3_3 = PROP_TYPES
      L3_3 = L3_3.WHEEL_CLAMP
      L2_3.type = L3_3
      L3_3 = L6_2
      L2_3.pos = L3_3
      L3_3 = L5_2
      L2_3.wheelBone = L3_3
      L3_3 = VehToNet
      L4_3 = L4_2
      L3_3 = L3_3(L4_3)
      L2_3.vehNetId = L3_3
      L0_3(L1_3, L2_3)
      L0_3 = ClearPedTasksImmediately
      L1_3 = L1_2
      L0_3(L1_3)
      IsPropSessionActive = false
      L0_3 = Framework
      L0_3 = L0_3.sendNotification
      L1_3 = _U
      L2_3 = "WHEEL_CLAMP.PLACED"
      L1_3 = L1_3(L2_3)
      L2_3 = "success"
      L0_3(L1_3, L2_3)
    end
    function L15_2()
      local L0_3, L1_3
      L0_3 = TriggerServerEvent
      L1_3 = "rcore_police:server:unregisterDeploy"
      L0_3(L1_3)
      IsPropSessionActive = false
    end
    L16_2 = {}
    L16_2.previewObject = false
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  else
    L5_2 = TriggerServerEvent
    L6_2 = "rcore_police:server:unregisterDeploy"
    L5_2(L6_2)
    IsPropSessionActive = false
    L5_2 = Framework
    L5_2 = L5_2.sendNotification
    L6_2 = _U
    L7_2 = "WHEEL_CLAMP.NOT_CLOSE_TO_VEHICLE"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L5_2(L6_2, L7_2)
  end
end
L5_1.RequestWheelClamp = L6_1
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Config
  L0_2 = L0_2.WheelClamp
  L0_2 = L0_2.Enable
  if not L0_2 then
    return
  end
  while true do
    L0_2 = Wait
    L1_2 = 250
    L0_2(L1_2)
    L0_2 = L1_1
    if L0_2 then
      L0_2 = next
      L1_2 = L1_1
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = pairs
        L1_2 = L1_1
        L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
        for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
          L6_2 = DoesEntityExist
          L7_2 = L4_2
          L6_2 = L6_2(L7_2)
          if L6_2 then
            L6_2 = PlayerPedId
            L6_2 = L6_2()
            L7_2 = GetVehiclePedIsIn
            L8_2 = L6_2
            L9_2 = false
            L7_2 = L7_2(L8_2, L9_2)
            if L7_2 == L4_2 then
              L8_2 = SetVehicleHandbrake
              L9_2 = L4_2
              L10_2 = true
              L8_2(L9_2, L10_2)
              L8_2 = SetVehicleBrake
              L9_2 = L4_2
              L10_2 = true
              L8_2(L9_2, L10_2)
            end
          end
        end
    end
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L5_1(L6_1)
L5_1 = AddEventHandler
L6_1 = "onResourceStart"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L0_1
  L2_2 = GetGamePool
  L3_2 = "CObject"
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = GetEntityArchetypeName
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 == L1_2 then
        L9_2 = NetworkRequestControlOfEntity
        L10_2 = L8_2
        L9_2(L10_2)
        L9_2 = GetGameTimer
        L9_2 = L9_2()
        L9_2 = L9_2 + 2000
        while true do
          L10_2 = NetworkHasControlOfEntity
          L11_2 = L8_2
          L10_2 = L10_2(L11_2)
          if L10_2 then
            break
          end
          L10_2 = GetGameTimer
          L10_2 = L10_2()
          if not (L9_2 > L10_2) then
            break
          end
          L10_2 = Wait
          L11_2 = 0
          L10_2(L11_2)
          L10_2 = NetworkRequestControlOfEntity
          L11_2 = L8_2
          L10_2(L11_2)
        end
        L10_2 = IsEntityAMissionEntity
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if not L10_2 then
          L10_2 = SetEntityAsMissionEntity
          L11_2 = L8_2
          L12_2 = true
          L13_2 = true
          L10_2(L11_2, L12_2, L13_2)
        end
        L10_2 = DeleteEntity
        L11_2 = L8_2
        L10_2(L11_2)
      end
    end
  end
end
L5_1(L6_1, L7_1)
