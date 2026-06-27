local L0_1, L1_1, L2_1
L0_1 = RegisterNuiCallback
L1_1 = NUI_EVENTS
L1_1 = L1_1.BOSS_MENU_REQUEST_ACTION
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_police:server:requestBossMenuAction"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "OK"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNuiCallback
L1_1 = NUI_EVENTS
L1_1 = L1_1.BOSS_MENU_ORDER_VEHICLE
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_police:server:requestBuyGarageVehicle"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "OK"
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = UI
  L1_2 = L1_2.SendReactMessage
  L2_2 = NUI_EVENTS
  L2_2 = L2_2.BOSS_MENU_UPDATE_DATA
  L3_2 = {}
  L3_2.options = A0_2
  L1_2(L2_2, L3_2)
end
UpdateBossMenuData = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Framework
  L1_2 = L1_2.job
  if not L1_2 then
    return
  end
  L1_2 = Framework
  L1_2 = L1_2.job
  L1_2 = L1_2.name
  L2_2 = Framework
  L2_2 = L2_2.job
  L2_2 = L2_2.isBoss
  L3_2 = nil
  if not L2_2 then
    L4_2 = dbg
    L4_2 = L4_2.info
    L5_2 = "Boss menu: You cant access boss menu when not boss %s!"
    L6_2 = L2_2
    return L4_2(L5_2, L6_2)
  end
  if A0_2 then
    L3_2 = A0_2
  else
    L4_2 = GroupsService
    L4_2 = L4_2.GetStorageSpecificById
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  end
  L4_2 = Framework
  L4_2 = L4_2.GetJobGrades
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  if not L3_2 then
    L5_2 = dbg
    L5_2 = L5_2.info
    L6_2 = "Boss menu: Failed to find any job data for job named %s!"
    L7_2 = L1_2
    return L5_2(L6_2, L7_2)
  end
  L5_2 = {}
  L5_2.showState = true
  L6_2 = {}
  L7_2 = L3_2.name
  if not L7_2 then
    L7_2 = ""
  end
  L6_2.label = L7_2
  L7_2 = {}
  L8_2 = Config
  L8_2 = L8_2.Garage
  L8_2 = L8_2.DepartmentsEnableBuyVehicles
  L7_2.stock_mode = L8_2
  L8_2 = L3_2.garageStock
  if not L8_2 then
    L8_2 = 0
  end
  L7_2.stock = L8_2
  L6_2.garage = L7_2
  L7_2 = L3_2.society
  if not L7_2 then
    L7_2 = {}
  end
  L6_2.society = L7_2
  L7_2 = L3_2.members
  if not L7_2 then
    L7_2 = {}
  end
  L6_2.members = L7_2
  L7_2 = L4_2 or L7_2
  if not L4_2 then
    L7_2 = {}
  end
  L6_2.grades = L7_2
  L5_2.options = L6_2
  L6_2 = UI
  L6_2 = L6_2.SendReactMessage
  L7_2 = NUI_EVENTS
  L7_2 = L7_2.OPEN_JOB_BOSS_MENU
  L8_2 = {}
  L9_2 = L5_2.options
  L8_2.options = L9_2
  L9_2 = L5_2.showState
  L8_2.showState = L9_2
  L6_2(L7_2, L8_2)
  L6_2 = SetNuiFocus
  L7_2 = true
  L8_2 = true
  L6_2(L7_2, L8_2)
end
OpenBossMenuCustom = L0_1
