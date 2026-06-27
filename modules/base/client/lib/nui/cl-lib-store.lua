local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = RegisterNuiCallback
L2_1 = NUI_EVENTS
L2_1 = L2_1.GET_ITEM_FROM_DEPARTMENT_STORE
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
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = Wait
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = RequestGetItemFromStore
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_1 = A0_2
  L1_2 = Framework
  L1_2 = L1_2.job
  L1_2 = L1_2.name
  L2_2 = Config
  L2_2 = L2_2.JobGroups
  L2_2 = L2_2[L1_2]
  L2_2 = L2_2.Store
  L3_2 = STORAGE_MODE
  L3_2 = L3_2.FREE
  if L2_2 then
    L4_2 = L2_2.storageMode
    if L4_2 then
    end
  end
  L4_2 = UI
  L4_2 = L4_2.SendReactMessage
  L5_2 = NUI_EVENTS
  L5_2 = L5_2.OPEN_DEPARTMENT_STORE
  L6_2 = {}
  L6_2.options = A0_2
  L6_2.storageMode = L3_2
  L6_2.showState = true
  L4_2(L5_2, L6_2)
  L4_2 = SetNuiFocus
  L5_2 = true
  L6_2 = true
  L4_2(L5_2, L6_2)
end
OpenDepartmentStore = L1_1
