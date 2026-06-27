local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = "amb@world_human_mobile_film_shocking@female@base"
L1_1 = "base"
L2_1 = {}
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.Megaphone
L4_1 = L4_1.TurnKey
L3_1.key = L4_1
L4_1 = _U
L5_1 = "MEGA_PHONE.TURN_STATE"
L4_1 = L4_1(L5_1)
L3_1.label = L4_1
L4_1 = {}
L5_1 = Config
L5_1 = L5_1.Megaphone
L5_1 = L5_1.ExitKey
L4_1.key = L5_1
L5_1 = _U
L6_1 = "MEGA_PHONE.EXIT"
L5_1 = L5_1(L6_1)
L4_1.label = L5_1
L5_1 = {}
L5_1.key = ""
L6_1 = _U
L7_1 = "MEGA_PHONE.IS_OFF"
L6_1 = L6_1(L7_1)
L5_1.label = L6_1
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = Props
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetVehiclePedIsIn
  L3_2 = L1_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = _U
    L5_2 = "MEGAPHONE_NOT_USEABLE_IN_VEHICLE"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    return L3_2(L4_2, L5_2)
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = L2_1
  MEGAPHONE_KEYS = L4_2
  L4_2 = Interactions
  L4_2 = L4_2.MegaPhone
  L4_2 = L4_2.state
  if L4_2 then
    L4_2 = Interactions
    L4_2 = L4_2.MegaPhone
    L4_2.state = false
    L4_2 = DoesEntityExist
    L5_2 = Interactions
    L5_2 = L5_2.MegaPhone
    L5_2 = L5_2.entity
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = DeleteEntity
      L5_2 = Interactions
      L5_2 = L5_2.MegaPhone
      L5_2 = L5_2.entity
      L4_2(L5_2)
    end
    L4_2 = ClearPedTasksImmediately
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = ClearProximity
    L4_2()
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Removing megaphone from player ped hands!"
    L4_2(L5_2)
    IsPropSessionActive = false
    L4_2 = UI
    L4_2 = L4_2.HelpKeys
    L5_2 = nil
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = TriggerServerEvent
    L5_2 = "rcore_police:server:unregisterDeploy"
    L4_2(L5_2)
    return
  end
  L4_2 = UtilsService
  L4_2 = L4_2.LoadAnimationDict
  L5_2 = L0_1
  L4_2(L5_2)
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityHeading
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2 + 90
  L6_2 = L6_2 % 360
  L7_2 = UtilsService
  L7_2 = L7_2.SpawnObject
  L8_2 = A0_2
  L9_2 = L4_2
  L10_2 = true
  L11_2 = true
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = SetEntityHeading
  L9_2 = L7_2
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L8_2 = AttachEntityToEntity
  L9_2 = L7_2
  L10_2 = L3_2
  L11_2 = GetPedBoneIndex
  L12_2 = L3_2
  L13_2 = 28422
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 80.0
  L18_2 = true
  L19_2 = true
  L20_2 = false
  L21_2 = true
  L22_2 = 1
  L23_2 = true
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L8_2 = TaskPlayAnim
  L9_2 = L3_2
  L10_2 = L0_1
  L11_2 = L1_1
  L12_2 = 8.0
  L13_2 = -8
  L14_2 = -1
  L15_2 = MOVEMENT_FLAG
  L15_2 = L15_2.MOVE_ALL_BODY
  L16_2 = 0
  L17_2 = 0
  L18_2 = 0
  L19_2 = 0
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L8_2 = UI
  L8_2 = L8_2.HelpKeys
  L9_2 = {}
  L10_2 = MEGAPHONE_KEYS
  L9_2.keys = L10_2
  L10_2 = true
  L8_2(L9_2, L10_2)
  IsPropSessionActive = false
  L8_2 = Interactions
  L8_2 = L8_2.MegaPhone
  L8_2.state = true
  L8_2 = Interactions
  L8_2 = L8_2.MegaPhone
  L8_2.entity = L7_2
end
L3_1.RequestMegaPhone = L4_1
