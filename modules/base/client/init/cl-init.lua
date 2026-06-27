local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
UI = L0_1
L0_1 = {}
Props = L0_1
L0_1 = {}
GarageService = L0_1
L0_1 = {}
TextService = L0_1
L0_1 = {}
GroupsService = L0_1
L0_1 = {}
Reports = L0_1
L0_1 = {}
BodyCams = L0_1
L0_1 = {}
Sounds = L0_1
L0_1 = {}
DeathPlayers = L0_1
IsPropSessionActive = false
CurrentZone = nil
L0_1 = GetPlayerServerId
L1_1 = PlayerId
L1_1, L2_1, L3_1, L4_1, L5_1 = L1_1()
L0_1 = L0_1(L1_1, L2_1, L3_1, L4_1, L5_1)
MyServerId = L0_1
L0_1 = {}
Utils = L0_1
GlobalZoneId = nil
currentSeat = nil
L0_1 = {}
keyCache = L0_1
escortHelpKeys = false
blockAction = false
isOpenMenu = false
BodyCamState = false
IsLoadedRadarSettings = false
IsUsingRadar = false
IsBusy = false
L0_1 = {}
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = DetachEntity
  L2_2 = L0_2
  L3_2 = true
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SetEnableHandcuffs
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = RemoveAttachedEntities
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = FreezeEntityPosition
  L2_2 = L0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ClearTimecycleModifier
  L1_2()
  L1_2 = DoesEntityExist
  L2_2 = GetVehiclePedIsIn
  L3_2 = L0_2
  L4_2 = false
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L1_2 = ClearPedTasksImmediately
    L2_2 = L0_2
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetGamePool
  L2_2 = "CObject"
  L1_2 = L1_2(L2_2)
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = IsEntityAttachedToEntity
      L9_2 = L7_2
      L10_2 = A0_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = DetachEntity
        L9_2 = L7_2
        L10_2 = true
        L11_2 = true
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = DeleteEntity
        L9_2 = L7_2
        L8_2(L9_2)
      end
    end
  end
end
RemoveAttachedEntities = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = keyCache
  L1_2 = GlobalZoneId
  L0_2 = L0_2[L1_2]
  if L0_2 then
    L0_2 = GetGameTimer
    L0_2 = L0_2()
    L2_2 = GlobalZoneId
    L1_2 = L0_1
    L4_2 = GlobalZoneId
    L3_2 = L0_1
    L3_2 = L3_2[L4_2]
    if not L3_2 then
      L3_2 = 0
    end
    L1_2[L2_2] = L3_2
    L2_2 = GlobalZoneId
    L1_2 = L0_1
    L1_2 = L1_2[L2_2]
    if L0_2 >= L1_2 then
      L1_2 = keyCache
      L2_2 = GlobalZoneId
      L1_2 = L1_2[L2_2]
      L2_2 = L1_2
      L2_2()
      L3_2 = GlobalZoneId
      L2_2 = L0_1
      L4_2 = L0_2 + 1000
      L2_2[L3_2] = L4_2
    end
  end
end
TriggerKeyAction = L1_1
L1_1 = RegisterKey
L2_1 = TriggerKeyAction
L3_1 = "RCORE_POLICE_INTERACT"
L4_1 = _U
L5_1 = "KEY_MAPPING.INTERACT_ZONE"
L4_1 = L4_1(L5_1)
L5_1 = Config
L5_1 = L5_1.InteractZone
if not L5_1 then
  L5_1 = "E"
end
L1_1(L2_1, L3_1, L4_1, L5_1)
L1_1 = RegisterCommand
L2_1 = "rcore_police_help_boss_setup"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = Framework
  L0_2 = L0_2.job
  if L0_2 then
    L0_2 = type
    L1_2 = Framework
    L1_2 = L1_2.job
    L0_2 = L0_2(L1_2)
    if "table" == L0_2 then
      L0_2 = Framework
      L0_2 = L0_2.job
      L0_2 = L0_2.gradeName
      if not L0_2 then
        L0_2 = Framework
        L0_2 = L0_2.job
        L0_2 = L0_2.grade_name
      end
      if L0_2 then
        L1_2 = print
        L2_2 = [[

========================================================]]
        L1_2(L2_2)
        L1_2 = print
        L2_2 = " RCORE POLICE - BOSS RANK SETUP HELP"
        L1_2(L2_2)
        L1_2 = print
        L2_2 = "========================================================"
        L1_2(L2_2)
        L1_2 = print
        L2_2 = "- Path: config.lua"
        L1_2(L2_2)
        L1_2 = print
        L2_2 = "- Your current gradeName: "
        L3_2 = L0_2
        L2_2 = L2_2 .. L3_2
        L1_2(L2_2)
        L1_2 = print
        L2_2 = [[

- Want to make this grade a boss?]]
        L1_2(L2_2)
        L1_2 = print
        L2_2 = "- See Config.RanksAsBossList and add your grade ["
        L3_2 = L0_2
        L4_2 = "] as shown bellow."
        L2_2 = L2_2 .. L3_2 .. L4_2
        L1_2(L2_2)
        L1_2 = print
        L2_2 = "--------------------------------------------------------\n"
        L1_2(L2_2)
        L1_2 = print
        L2_2 = "Config.RanksAsBossList = {"
        L1_2(L2_2)
        L1_2 = pairs
        L2_2 = Config
        L2_2 = L2_2.RanksAsBossList
        L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
        for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
          L7_2 = print
          L8_2 = "    ['%s'] = true,"
          L9_2 = L8_2
          L8_2 = L8_2.format
          L10_2 = L5_2
          L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
          L7_2(L8_2, L9_2, L10_2)
        end
        L1_2 = print
        L2_2 = "    ['%s'] = true,  <-- Add your new boss grade here"
        L3_2 = L2_2
        L2_2 = L2_2.format
        L4_2 = L0_2
        L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2, L4_2)
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        L1_2 = print
        L2_2 = "}\n"
        L1_2(L2_2)
      else
        L1_2 = dbg
        L1_2 = L1_2.info
        L2_2 = "\226\154\160 No gradeName found in Framework.job"
        L1_2(L2_2)
      end
    end
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterCommand
L2_1 = "rcore_police_debug_access"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = Framework
  L0_2 = L0_2.job
  if L0_2 then
    L1_2 = type
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if "table" == L1_2 then
      L1_2 = L0_2.name
      L2_2 = CurrentZone
      if L2_2 then
        L2_2 = CurrentZone
        L2_2 = L2_2.getZoneType
        L2_2 = L2_2()
        L3_2 = CurrentZone
        L3_2 = L3_2.getDepartmentOwner
        L3_2 = L3_2()
        L4_2 = CurrentZone
        L4_2 = L4_2.getZoneDutyState
        L4_2 = L4_2()
        L5_2 = CurrentZone
        L5_2 = L5_2.getZoneLabel
        L5_2 = L5_2()
        L6_2 = CurrentZone
        L6_2 = L6_2.getJobState
        L6_2 = L6_2()
        L7_2 = false
        L8_2 = type
        L9_2 = L3_2
        L8_2 = L8_2(L9_2)
        if "table" == L8_2 then
          L8_2 = ipairs
          L9_2 = L3_2
          L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
          for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
            if L13_2 == L1_2 then
              L7_2 = true
              break
            end
          end
        else
          L8_2 = type
          L9_2 = L3_2
          L8_2 = L8_2(L9_2)
          if "string" == L8_2 then
            L7_2 = L1_2 == L3_2
          end
        end
        L8_2 = Utils
        L8_2 = L8_2.HasZoneAccess
        L9_2 = L0_2
        L10_2 = L4_2
        L11_2 = L2_2
        L12_2 = L6_2
        L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        L10_2 = print
        L11_2 = "====== Zone debug ======"
        L10_2(L11_2)
        L10_2 = print
        L11_2 = "Player Job:       %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = L1_2 or L13_2
        if not L1_2 then
          L13_2 = "N/A"
        end
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Zone Label:       %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = L5_2 or L13_2
        if not L5_2 then
          L13_2 = "N/A"
        end
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Zone Type:        %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = L2_2 or L13_2
        if not L2_2 then
          L13_2 = "N/A"
        end
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Zone Duty State:  %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        if nil ~= L4_2 then
          L13_2 = tostring
          L14_2 = L4_2
          L13_2 = L13_2(L14_2)
          if L13_2 then
            goto lbl_101
          end
        end
        L13_2 = "N/A"
        ::lbl_101::
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Zone Job Owner:   %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = type
        L14_2 = L3_2
        L13_2 = L13_2(L14_2)
        if "table" == L13_2 then
          L13_2 = table
          L13_2 = L13_2.concat
          L14_2 = L3_2
          L15_2 = ", "
          L13_2 = L13_2(L14_2, L15_2)
        end
        L13_2 = L3_2 or L13_2
        if not L13_2 and not L3_2 then
          L13_2 = "N/A"
        end
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Job State:        %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        if nil ~= L6_2 then
          L13_2 = tostring
          L14_2 = L6_2
          L13_2 = L13_2(L14_2)
          if L13_2 then
            goto lbl_134
          end
        end
        L13_2 = "N/A"
        ::lbl_134::
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Is Job Allowed:   %s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = tostring
        L14_2 = L7_2
        L13_2, L14_2, L15_2 = L13_2(L14_2)
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "Has Zone Access:  %s (Status: %s)"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = tostring
        L14_2 = L8_2
        L13_2 = L13_2(L14_2)
        L14_2 = tostring
        L15_2 = L9_2
        L14_2, L15_2 = L14_2(L15_2)
        L11_2, L12_2, L13_2, L14_2, L15_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L10_2 = print
        L11_2 = "================================"
        L10_2(L11_2)
      else
        L2_2 = print
        L3_2 = "[DEBUG] No CurrentZone available."
        L2_2(L3_2)
      end
  end
  else
    L1_2 = print
    L2_2 = "[DEBUG] No job data available."
    L1_2(L2_2)
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
