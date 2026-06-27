local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = RegisterNuiCallback
L2_1 = NUI_EVENTS
L2_1 = L2_1.GET_VEHICLE_FROM_DEPARTMENT_GARAGE
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L2_2 = A0_2.index
  L2_2 = L2_2 + 1
  A0_2.index = L2_2
  L3_2 = A0_2.index
  L2_2 = L0_1
  L2_2 = L2_2[L3_2]
  if not L2_2 then
    return
  end
  L3_2 = L2_2.label
  if L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "Get item from store: Selected item: %s"
    L5_2 = L2_2.label
    L3_2(L4_2, L5_2)
  end
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = Wait
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = RequestVehicleFromDepartmentGarage
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = {}
  L0_1 = L3_2
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L0_1 = A0_2
  L1_2 = UI
  L1_2 = L1_2.SendReactMessage
  L2_2 = NUI_EVENTS
  L2_2 = L2_2.OPEN_JOB_GARAGE
  L3_2 = {}
  L3_2.options = A0_2
  L3_2.showState = true
  L1_2(L2_2, L3_2)
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
end
OpenGarage = L1_1
