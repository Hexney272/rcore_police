local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:client:createReport"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = Reports
  L2_2 = Reports
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:client:updateReport"
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = Reports
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = Reports
    L2_2[A0_2] = A1_2
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:client:removeReport"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    return
  end
  L1_2 = Reports
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = Reports
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    L1_2 = UI
    L1_2 = L1_2.SendReactMessage
    L2_2 = NUI_EVENTS
    L2_2 = L2_2.REPORTS_REFRESH
    L3_2 = Reports
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "SyncReportsForUser"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    if not A1_2 then
      return
    end
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Syncing reports, since new user loaded."
    L2_2(L3_2)
    Reports = A1_2
  end
end
L0_1(L1_1, L2_1)
