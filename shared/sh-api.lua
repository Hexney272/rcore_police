local L0_1, L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = AddEventHandler
  L4_2 = "__cfx_export_%s_%s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = L2_2
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_3
    L2_3 = A1_2
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2)
end
registerExport = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = registerExport
    L8_2 = L6_2.name
    L9_2 = L6_2.func
    L7_2(L8_2, L9_2)
    L7_2 = dbg
    L7_2 = L7_2.debugAPI
    L8_2 = "Registered export: %s"
    L9_2 = L6_2.name
    L7_2(L8_2, L9_2)
  end
end
registerExports = L0_1
L0_1 = IsDuplicityVersion
L0_1 = L0_1()
if L0_1 then
  function L0_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = "%s:%s:%s"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = GetCurrentResourceName
    L4_2 = L4_2()
    L5_2 = "server"
    L6_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L3_2 = AddEventHandler
      L4_2 = A0_2
      function L5_2(...)
        local L0_3, L1_3
        L0_3 = A1_2
        L1_3 = ...
        L0_3(L1_3)
      end
      L3_2(L4_2, L5_2)
    end
  end
  RegisterLocalServerEvent = L0_1
  function L0_1(A0_2, ...)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = "%s:%s:%s"
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "server"
    L5_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L2_2 = TriggerEvent
      L3_2 = A0_2
      L4_2, L5_2 = ...
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  TriggerLocalServerEvent = L0_1
else
  function L0_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = "%s:%s:%s"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = GetCurrentResourceName
    L4_2 = L4_2()
    L5_2 = "client"
    L6_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L3_2 = AddEventHandler
      L4_2 = A0_2
      function L5_2(...)
        local L0_3, L1_3
        L0_3 = A1_2
        L1_3 = ...
        L0_3(L1_3)
      end
      L3_2(L4_2, L5_2)
    end
  end
  RegisterLocalClientEvent = L0_1
  function L0_1(A0_2, ...)
    local L1_2, L2_2, L3_2, L4_2, L5_2
    L1_2 = "%s:%s:%s"
    L2_2 = L1_2
    L1_2 = L1_2.format
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "client"
    L5_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
    if L1_2 then
      L2_2 = TriggerEvent
      L3_2 = A0_2
      L4_2, L5_2 = ...
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  TriggerLocalClientEvent = L0_1
end
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = IsDuplicityVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = {}
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "JailPlayer"
    L3_2 = ActionService
    L3_2 = L3_2.JailPlayer
    L2_2.func = L3_2
    L3_2 = {}
    L3_2.name = "SearchPlayer"
    L4_2 = ActionService
    L4_2 = L4_2.SearchPlayer
    L3_2.func = L4_2
    L4_2 = {}
    L4_2.name = "Escort"
    L5_2 = ActionService
    L5_2 = L5_2.Escort
    L4_2.func = L5_2
    L5_2 = {}
    L5_2.name = "Zipties"
    L6_2 = ActionService
    L6_2 = L6_2.ZipTies
    L5_2.func = L6_2
    L6_2 = {}
    L6_2.name = "Handcuff"
    L7_2 = ActionService
    L7_2 = L7_2.Handcuff
    L6_2.func = L7_2
    L7_2 = {}
    L7_2.name = "PutPlayerInVehicle"
    L8_2 = ActionService
    L8_2 = L8_2.PutPlayerInVehicle
    L7_2.func = L8_2
    L8_2 = {}
    L8_2.name = "TakePlayerFromVehicle"
    L9_2 = ActionService
    L9_2 = L9_2.TakePlayerFromVehicle
    L8_2.func = L9_2
    L9_2 = {}
    L9_2.name = "RemoveHandcuff"
    L10_2 = ActionService
    L10_2 = L10_2.RemoveHandcuff
    L9_2.func = L10_2
    L10_2 = {}
    L10_2.name = "ForceUncuff"
    L11_2 = ActionService
    L11_2 = L11_2.ForceUncuff
    L10_2.func = L11_2
    L11_2 = {}
    L11_2.name = "Paperbag"
    L12_2 = ActionService
    L12_2 = L12_2.RequestHeadBag
    L11_2.func = L12_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L1_2[5] = L6_2
    L1_2[6] = L7_2
    L1_2[7] = L8_2
    L1_2[8] = L9_2
    L1_2[9] = L10_2
    L1_2[10] = L11_2
    L0_2.Actions = L1_2
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "IsPlayerCuffed"
    L3_2 = InteractionService
    L3_2 = L3_2.isCuffed
    L2_2.func = L3_2
    L3_2 = {}
    L3_2.name = "IsPlayerEscorted"
    L4_2 = InteractionService
    L4_2 = L4_2.isEscorted
    L3_2.func = L4_2
    L4_2 = {}
    L4_2.name = "IsPlayerHeadBagged"
    L5_2 = InteractionService
    L5_2 = L5_2.isHeadBagged
    L4_2.func = L5_2
    L5_2 = {}
    L5_2.name = "IsPlayerZiptied"
    L6_2 = InteractionService
    L6_2 = L6_2.isPlayerZiptied
    L5_2.func = L6_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L0_2.PlayerStates = L1_2
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "GetPoliceOnline"
    L3_2 = GroupsService
    L3_2 = L3_2.GetAllDeparmentsCount
    L2_2.func = L3_2
    L1_2[1] = L2_2
    L0_2.Miscellaneous = L1_2
    L1_2 = pairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = registerExports
      L8_2 = L6_2
      L7_2(L8_2)
    end
  else
    L0_2 = {}
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "IsPlayerCuffed"
    L3_2 = InteractionService
    L3_2 = L3_2.isCuffed
    L2_2.func = L3_2
    L3_2 = {}
    L3_2.name = "IsPlayerEscorted"
    L4_2 = InteractionService
    L4_2 = L4_2.isEscorted
    L3_2.func = L4_2
    L4_2 = {}
    L4_2.name = "IsPlayerHeadBagged"
    L5_2 = InteractionService
    L5_2 = L5_2.isHeadBagged
    L4_2.func = L5_2
    L5_2 = {}
    L5_2.name = "IsPlayerZiptied"
    L6_2 = InteractionService
    L6_2 = L6_2.isPlayerZiptied
    L5_2.func = L6_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L0_2.PlayerStates = L1_2
    L1_2 = {}
    L2_2 = {}
    L2_2.name = "GetPoliceOnline"
    L3_2 = GroupsService
    L3_2 = L3_2.GetAllDeparmentsCount
    L2_2.func = L3_2
    L3_2 = {}
    L3_2.name = "PlaceWheelClamp"
    L4_2 = Props
    L4_2 = L4_2.RequestWheelClamp
    L3_2.func = L4_2
    L4_2 = {}
    L4_2.name = "RemoveWheelClamp"
    L5_2 = RemoveWheelClamp
    L4_2.func = L5_2
    L5_2 = {}
    L5_2.name = "DoesVehicleHaveWheelClamp"
    L6_2 = DoesVehicleHaveWheelClamp
    L5_2.func = L6_2
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    L1_2[3] = L4_2
    L1_2[4] = L5_2
    L0_2.Miscellaneous = L1_2
    L1_2 = pairs
    L2_2 = L0_2
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = registerExports
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
end
L0_1(L1_1)
