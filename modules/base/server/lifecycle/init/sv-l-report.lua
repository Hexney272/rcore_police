local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L1_1 = {}
L2_1 = AddEventHandler
L3_1 = "rcore_police:server:databaseReady"
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = db
  L0_2 = L0_2.GetAllReports
  L0_2 = L0_2()
  L0_1 = L0_2
  L0_2 = dbg
  L0_2 = L0_2.debug
  L1_2 = "Loaded total reports: %s"
  L2_2 = table
  L2_2 = L2_2.size
  L3_2 = L0_1
  L2_2, L3_2 = L2_2(L3_2)
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L0_1
  if L0_2 then
    L0_2 = next
    L1_2 = L0_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = StartClient
      L1_2 = -1
      L2_2 = "SyncReportsForUser"
      L3_2 = L0_1
      L0_2(L1_2, L2_2, L3_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "rcore_police:server:playerLoaded"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L1_2 = L0_1
  if L1_2 then
    L1_2 = next
    L2_2 = L0_1
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = StartClient
      L2_2 = A0_2
      L3_2 = "SyncReportsForUser"
      L4_2 = L0_1
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = AddEventHandler
L3_1 = "rcore_police:server:playerUnloaded"
function L4_1(A0_2)
  local L1_2
  if not A0_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L1_1
    L1_2[A0_2] = nil
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:requestDeleteReport"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.sendNotification
    L5_2 = L1_2
    L6_2 = _U
    L7_2 = "REPORTS.PLAYER_DELETED_REPORT"
    L6_2 = L6_2(L7_2)
    L7_2 = "success"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = table
    L4_2 = L4_2.remove
    L5_2 = L0_1
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = db
    L4_2 = L4_2.DeleteReport
    L5_2 = A0_2
    L4_2(L5_2)
    L4_2 = SetTimeout
    L5_2 = 500
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = StartClient
      L1_3 = -1
      L2_3 = "removeReport"
      L3_3 = A0_2
      L0_3(L1_3, L2_3, L3_3)
    end
    L4_2(L5_2, L6_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:requestSaveReport"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = A0_2.reportId
  L5_2 = A0_2.status
  L6_2 = A0_2.note
  L7_2 = L0_1
  L7_2 = L7_2[L4_2]
  if L7_2 then
    L7_2 = L0_1
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.note
    if L7_2 == L6_2 then
      return
    end
    L7_2 = L0_1
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.status
    if L7_2 == L5_2 then
      return
    end
    L7_2 = L0_1
    L7_2 = L7_2[L4_2]
    L7_2.note = L6_2
    L7_2 = L0_1
    L7_2 = L7_2[L4_2]
    L7_2.status = L5_2
    L7_2 = db
    L7_2 = L7_2.UpdateReportNote
    L8_2 = L4_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = db
    L7_2 = L7_2.UpdateReportStatus
    L8_2 = L4_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    if L3_2 then
      L7_2 = Config
      L7_2 = L7_2.Reports
      L8_2 = "NotifyAllDepartmentOfficersWhenUpdatedReport"
      L7_2 = L7_2[L8_2]
      if L7_2 then
        L7_2 = GroupsService
        L7_2 = L7_2.GetGroupByName
        L8_2 = L3_2.group
        L7_2 = L7_2(L8_2)
        L8_2 = Framework
        L8_2 = L8_2.getCharacterShortName
        L9_2 = L1_2
        L8_2 = L8_2(L9_2)
        L9_2 = _U
        L10_2 = "REPORTS.OFFICER_UPDATED_REPORT_STATUS"
        L11_2 = L4_2
        L12_2 = L5_2
        L13_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
        if L7_2 then
          L11_2 = L7_2
          L10_2 = L7_2.Notify
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
        end
      end
    end
    L7_2 = StartClient
    L8_2 = -1
    L9_2 = "updateReport"
    L10_2 = L4_2
    L11_2 = L0_1
    L11_2 = L11_2[L4_2]
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "rcore_police:server:sendReport"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = source
  L3_2 = UtilsService
  L3_2 = L3_2.IsPlayerAtInteract
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  if not A1_2 then
    return
  end
  L3_2 = Config
  L3_2 = L3_2.Reports
  L3_2 = L3_2.Enable
  if not L3_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = L2_2
    L5_2 = _U
    L6_2 = "REPORTS.PLAYER_REACHED_MAXIMUM_OPEN_REPORT"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = A1_2.status
  if not L3_2 then
    L3_2 = REPORT_STATES
    L3_2 = L3_2.NEW_REPORT
    A1_2.status = L3_2
  end
  L3_2 = Config
  L3_2 = L3_2.Reports
  L3_2 = L3_2.LimitReportsPerPlayer
  if L3_2 then
    L3_2 = L1_1
    L3_2[L2_2] = true
    L3_2 = SetTimeout
    L4_2 = Config
    L4_2 = L4_2.Reports
    L4_2 = L4_2.CooldownResetPerPlayer
    L4_2 = L4_2 * 60
    L4_2 = L4_2 * 1000
    function L5_2()
      local L0_3, L1_3
      L1_3 = L2_2
      L0_3 = L1_1
      L0_3[L1_3] = nil
    end
    L3_2(L4_2, L5_2)
  end
  L3_2 = UtilsService
  L3_2 = L3_2.GetZoneJob
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = type
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = pairs
    L6_2 = L3_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      if L4_2 then
        L11_2 = L4_2.name
        if L11_2 == L10_2 then
          L4_2 = L10_2
        end
      end
    end
  elseif L4_2 then
    L5_2 = L4_2.name
    if L5_2 == L3_2 then
      L4_2 = L4_2.name
    end
  end
  L5_2 = GroupsService
  L5_2 = L5_2.GetGroupByName
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = _U
  L7_2 = "REPORTS.RECEIVED_NEW_REPORT_OFFICERS"
  L6_2 = L6_2(L7_2)
  if L5_2 then
    L7_2 = Config
    L7_2 = L7_2.Reports
    L7_2 = L7_2.NotifyAllDepartmentOfficersWhenNewReport
    if L7_2 then
      L8_2 = L5_2
      L7_2 = L5_2.Notify
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L7_2 = L0_1
  L7_2 = #L7_2
  L8_2 = L7_2 + 1
  L7_2 = L0_1
  L7_2[L8_2] = A1_2
  L7_2 = db
  L7_2 = L7_2.InsertReport
  L8_2 = A1_2.status
  L9_2 = A1_2.message
  L10_2 = A1_2.player
  L11_2 = A1_2.phone
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = Framework
  L7_2 = L7_2.sendNotification
  L8_2 = L2_2
  L9_2 = _U
  L10_2 = "REPORTS.PLAYER_SUBMITTED_REPORT"
  L9_2 = L9_2(L10_2)
  L10_2 = "success"
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = StartClient
  L8_2 = -1
  L9_2 = "createReport"
  L10_2 = A1_2
  L7_2(L8_2, L9_2, L10_2)
end
L2_1(L3_1, L4_1)
