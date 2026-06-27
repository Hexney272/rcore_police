local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L1_1 = {}
L1_1.rcore_prison_assets = true
L1_1.rcore_police_assets = true
L1_1.rcore_banners_assets = true
L1_1.rcore_police_assets_bodycam = true
L1_1["cfx-gabz-mapdata"] = true
L1_1["qb-interior"] = true
L1_1.luky3d_lifeinvader = true
L2_1 = nil
L3_1 = {}
L4_1 = {}
L5_1 = {}
L4_1.POINTS = L5_1
L5_1 = {}
L4_1.GARAGE_SPAWN_POINTS = L5_1
L5_1 = 250
L6_1 = 0
L7_1 = 0
MapOwner = nil
MapResource = nil
L8_1 = {}
Interval = L8_1
L8_1 = Interval
L9_1 = {}
L8_1.Pool = L9_1
L8_1 = Interval
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 0
  L1_2 = Interval
  L1_2 = L1_2.Pool
  if L1_2 then
    L1_2 = next
    L2_2 = Interval
    L2_2 = L2_2.Pool
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = pairs
      L2_2 = Interval
      L2_2 = L2_2.Pool
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = L6_2.state
        if L7_2 then
          L0_2 = L0_2 + 1
        end
      end
    end
  end
  return L0_2
end
L8_1.GetActiveThreads = L9_1
L8_1 = Interval
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Interval: Registering interval named: %s"
  L5_2 = A0_2
  L3_2(L4_2, L5_2)
  L3_2 = Interval
  L3_2 = L3_2.Pool
  L4_2 = {}
  L4_2.time = A1_2
  L4_2.nextTime = A1_2
  L4_2.state = false
  L4_2.callback = A2_2
  L3_2[A0_2] = L4_2
end
L8_1.setInterval = L9_1
L8_1 = Interval
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Interval
  L2_2 = L2_2.Pool
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = Interval
    L2_2 = L2_2.Pool
    L2_2 = L2_2[A0_2]
    L2_2.state = A1_2
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Interval: Updating interval %s to state %s"
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L8_1.updateIntervalState = L9_1
L8_1 = Interval
function L9_1(A0_2)
  local L1_2
  L1_2 = Interval
  L1_2 = L1_2.Pool
  L1_2 = L1_2[A0_2]
  return L1_2
end
L8_1.getInterval = L9_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = math
  L1_2 = L1_2.rad
  L2_2 = A0_2.x
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.rad
  L3_2 = A0_2.z
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 * L4_2
  L4_2 = math
  L4_2 = L4_2.cos
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 * L5_2
  L5_2 = math
  L5_2 = L5_2.sin
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = vector3
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  return L6_2(L7_2, L8_2, L9_2)
end
RotToDir = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = dbg
  L0_2 = L0_2.debug
  L1_2 = "Preset creator: Starting session."
  L0_2(L1_2)
  L0_2 = 0
  L7_1 = L0_2
  L0_2 = GetMapPresetAtLocation
  L0_2, L1_2 = L0_2()
  if L0_2 then
    L2_2 = StartInformationGather
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = StartInformationGather
    L3_2 = L0_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
HandlePresetCreator = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = next
    L1_2 = L0_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = L0_1
      return L0_2
    end
  end
  L0_2 = GetNumResources
  L0_2 = L0_2()
  L1_2 = 0
  L2_2 = L0_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = GetResourceByFindIndex
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetResourceMetadata
    L7_2 = L5_2
    L8_2 = "this_is_a_map"
    L9_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 then
      L7_2 = isResourcePresentProvideless
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L5_2
        L7_2 = L5_2.lower
        L7_2 = L7_2(L8_2)
        L8_2 = L1_1
        L7_2 = L8_2[L7_2]
        if not L7_2 then
          L7_2 = L0_1
          L7_2 = #L7_2
          L8_2 = L7_2 + 1
          L7_2 = L0_1
          L9_2 = {}
          L9_2.value = L5_2
          L7_2[L8_2] = L9_2
        end
      end
    end
  end
  L1_2 = L0_1
  return L1_2
end
GetAllServerMaps = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = {}
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.GARAGE_AIR
  L3_2[L4_2] = "fa-solid fa-helicopter"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.PERSONAL_LOCKER
  L3_2[L4_2] = "fa-solid fa-lock"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.EVIDENCE_STASH
  L3_2[L4_2] = "fa-solid fa-lock"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.JOB_STASH
  L3_2[L4_2] = "fa-solid fa-lock"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.CLOTHING_ROOM
  L3_2[L4_2] = "fa-solid fa-shirt"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.WEAPON_SHOP
  L3_2[L4_2] = "fa-solid fa-lock"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.GARAGE_VEHICLE
  L3_2[L4_2] = "fas fa-car"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.BOSS_MENU
  L3_2[L4_2] = "fa-solid fa-business-time"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.WRITE_REPORT
  L3_2[L4_2] = "fa-solid fa-clock"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.REPORTS
  L3_2[L4_2] = "fa-solid fa-clock"
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.DUTY
  L3_2[L4_2] = "fa-solid fa-clock"
  L4_2 = {}
  L5_2 = ZONE_TYPE
  L5_2 = L5_2.CLOTHING_ROOM
  L4_2[L5_2] = "OUTFIT_ROOM"
  L5_2 = ZONE_TYPE
  L5_2 = L5_2.GARAGE_AIR
  L4_2[L5_2] = "GARAGE_VEHICLE"
  L5_2 = L4_2[A1_2]
  if not L5_2 then
    L5_2 = A1_2
  end
  L6_2 = {}
  L7_2 = "ZONES_LABELS."
  L8_2 = L5_2
  L7_2 = L7_2 .. L8_2
  L6_2.label = L7_2
  L7_2 = A2_2 or L7_2
  if not A2_2 then
    L7_2 = vec3
    L8_2 = 0
    L9_2 = 0
    L10_2 = 0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
  end
  L6_2.coords = L7_2
  L7_2 = ZONE_TYPE
  L7_2 = L7_2[A1_2]
  L6_2.type = L7_2
  L7_2 = A0_2.icon
  if not L7_2 then
    L7_2 = L3_2[A1_2]
    if not L7_2 then
      L7_2 = ""
    end
  end
  L6_2.icon = L7_2
  L7_2 = A0_2.require_duty
  if not L7_2 then
    L7_2 = false
  end
  L6_2.require_duty = L7_2
  L7_2 = A0_2.no_job_zone
  if not L7_2 then
    L7_2 = false
  end
  L6_2.no_job_zone = L7_2
  return L6_2
end
TransformKeyToZone = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.JobGroups
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = #L0_2
    L7_2 = L7_2 + 1
    L8_2 = {}
    L8_2.value = L5_2
    L0_2[L7_2] = L8_2
  end
  return L0_2
end
FormatedJobGroupsSelect = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "You are at preset named %s with resource %s"
    L5_2 = A0_2.location
    L6_2 = A0_2.resource
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = GetAllServerMaps
  L3_2 = L3_2()
  L4_2 = FormatedJobGroupsSelect
  L4_2 = L4_2()
  L5_2 = UI
  L5_2 = L5_2.Input
  L6_2 = _U
  L7_2 = "PRESET_CREATOR.DIALOG_PRESET_TOOL_TITLE"
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L8_2 = {}
  L9_2 = _U
  L10_2 = "PRESET_CREATOR.DIALOG_RESOURCE_TITLE"
  L9_2 = L9_2(L10_2)
  L8_2.label = L9_2
  L8_2.type = "select"
  L8_2.options = L3_2
  L8_2.required = true
  L9_2 = {}
  L10_2 = _U
  L11_2 = "PRESET_CREATOR.DIALOG_ZONE_OWNER"
  L10_2 = L10_2(L11_2)
  L9_2.label = L10_2
  L9_2.type = "select"
  L9_2.options = L4_2
  L9_2.required = true
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2["0"]
  MapResource = L6_2
  L6_2 = L5_2["1"]
  MapOwner = L6_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    L2_3 = Maps
    L2_3 = L2_3.BROFX_VSPD
    if not L2_3 then
      L2_3 = {}
    end
    L3_3 = {}
    L4_3 = {}
    L4_3.VEHICLE_SPAWNPOINT = true
    L4_3.GARAGE_VEHICLE = true
    L4_3.GARAGE_AIR = true
    L5_3 = pairs
    L6_3 = A1_3
    L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
    for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
      L11_3 = L4_3[L9_3]
      if not L11_3 then
        L11_3 = TransformKeyToZone
        L12_3 = L10_3
        L13_3 = L9_3
        L14_3 = L10_3.coords
        L11_3 = L11_3(L12_3, L13_3, L14_3)
        if L2_3 then
          L12_3 = L2_3.Zones
          if L12_3 then
            L12_3 = pairs
            L13_3 = L2_3.Zones
            L12_3, L13_3, L14_3, L15_3 = L12_3(L13_3)
            for L16_3, L17_3 in L12_3, L13_3, L14_3, L15_3 do
              L18_3 = type
              L19_3 = L17_3.type
              L18_3 = L18_3(L19_3)
              if "string" == L18_3 then
                L18_3 = L17_3.type
                L19_3 = L18_3
                L18_3 = L18_3.match
                L20_3 = "ZONE_TYPE%.(.+)"
                L18_3 = L18_3(L19_3, L20_3)
                if L18_3 then
                  goto lbl_47
                end
              end
              L18_3 = L17_3.type
              ::lbl_47::
              if L18_3 == L9_3 then
                L19_3 = pairs
                L20_3 = L17_3
                L19_3, L20_3, L21_3, L22_3 = L19_3(L20_3)
                for L23_3, L24_3 in L19_3, L20_3, L21_3, L22_3 do
                  L25_3 = L11_3[L23_3]
                  if nil == L25_3 then
                    L11_3[L23_3] = L24_3
                  end
                end
                break
              end
            end
          end
        end
        L12_3 = L10_3.require_duty
        if not L12_3 then
          L12_3 = false
        end
        L11_3.require_duty = L12_3
        L12_3 = L10_3.no_job_zone
        if not L12_3 then
          L12_3 = false
        end
        L11_3.no_job_zone = L12_3
        L12_3 = #L3_3
        L12_3 = L12_3 + 1
        L3_3[L12_3] = L11_3
      end
    end
    L5_3 = PlayerPedId
    L5_3 = L5_3()
    L6_3 = GetEntityCoords
    L7_3 = L5_3
    L6_3 = L6_3(L7_3)
    L7_3 = GetStreetHashLocationFromCoords
    L8_3 = L6_3
    L7_3 = L7_3(L8_3)
    L8_3 = {}
    L9_3 = MapOwner
    L8_3.Jobs = L9_3
    L9_3 = MapResource
    L8_3.Resource = L9_3
    L8_3.MapLocation = L7_3
    L8_3.Pos = L6_3
    L8_3.Zones = L3_3
    L9_3 = {}
    L10_3 = MapOwner
    if L10_3 then
      L10_3 = MapOwner
      L11_3 = L10_3
      L10_3 = L10_3.upper
      L10_3 = L10_3(L11_3)
      if L10_3 then
        goto lbl_109
      end
    end
    L10_3 = "UNKNOWN"
    ::lbl_109::
    L9_3.name = L10_3
    L9_3.enable = true
    L9_3.sprite = 60
    L9_3.display = 4
    L9_3.scale = 1.0
    L9_3.color = 29
    L8_3.Blip = L9_3
    L9_3 = UI
    L9_3 = L9_3.HelpKeys
    L10_3 = nil
    L11_3 = false
    L9_3(L10_3, L11_3)
    L9_3 = {}
    L3_1 = L9_3
    L9_3 = TriggerServerEvent
    L10_3 = "rcore_police:server:requestPresetCreation"
    L11_3 = MapResource
    L12_3 = L8_3
    L9_3(L10_3, L11_3, L12_3)
  end
  L7_2 = DefinePoints
  L8_2 = L6_2
  L7_2(L8_2)
end
StartInformationGather = L8_1
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ValidMapData
  if L2_2 then
    L2_2 = next
    L3_2 = ValidMapData
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = nil
      L3_2 = nil
      L4_2 = 50.0
      L5_2 = pairs
      L6_2 = ValidMapData
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = L10_2.coords
        L11_2 = L11_2 - L1_2
        L11_2 = #L11_2
        if L4_2 > L11_2 then
          L3_2 = L11_2
          L2_2 = L10_2
        end
      end
      L5_2 = L2_2
      L6_2 = L3_2
      return L5_2, L6_2
    end
  end
  L2_2 = nil
  L3_2 = nil
  return L2_2, L3_2
end
GetMapPresetAtLocation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = pairs
  L3_2 = ZONE_TYPE
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = InsertPointByLocationType
    L9_2 = "POINTS"
    L10_2 = {}
    L10_2.name = L6_2
    L10_2.key = L6_2
    L10_2.offset = nil
    L8_2(L9_2, L10_2)
  end
  L2_2 = Interval
  L2_2 = L2_2.updateIntervalState
  L3_2 = "POINTS"
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L4_1.POINTS
  L3_2 = #L2_2
  L7_1 = L3_2
  L3_2 = StartNextTask
  L4_2 = A0_2
  L3_2(L4_2)
end
DefinePoints = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.upper
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = L4_1
    L3_2 = L3_2[L2_2]
    L4_2 = L4_1
    L4_2 = L4_2[L2_2]
    L4_2 = #L4_2
    L4_2 = L4_2 + 1
    L3_2[L4_2] = A1_2
  end
end
InsertPointByLocationType = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L4_1.POINTS
  L1_2 = #L1_2
  L2_2 = L4_1.GARAGE_SPAWN_POINTS
  L2_2 = #L2_2
  if 0 == L1_2 and 0 == L2_2 then
    InsideFinished = false
    if A0_2 then
      L3_2 = ClearAllHelpMessages
      L3_2()
      L3_2 = UnregisterAllDynamicActions
      L3_2()
      L3_2 = Interval
      L3_2 = L3_2.updateIntervalState
      L4_2 = "POINTS"
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2
      L4_2 = "points"
      L5_2 = L3_1
      L3_2(L4_2, L5_2)
    end
    return
  end
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Map creator - points: Outside count: %s | Inside count: %s"
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = table
    L2_3 = L2_3.remove
    L3_3 = L4_1
    L3_3 = L3_3[A0_3]
    L4_3 = 1
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = dbg
    L3_3 = L3_3.debug
    L4_3 = "Map creator - points: Handling %s interactions."
    L5_3 = A1_3
    L3_3(L4_3, L5_3)
    L3_3 = StartTask
    L4_3 = L2_3.name
    L5_3 = L2_3.key
    L6_3 = nil
    L7_3 = nil
    L8_3 = A0_3
    function L9_3()
      local L0_4, L1_4
      L0_4 = StartNextTask
      L1_4 = A0_2
      L0_4(L1_4)
    end
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  if L2_2 <= 0 and L1_2 > 0 then
    L4_2 = L3_2
    L5_2 = "POINTS"
    L6_2 = "points"
    L4_2(L5_2, L6_2)
  elseif L2_2 > 0 then
    L4_2 = L3_2
    L5_2 = "GARAGE_SPAWN_POINTS"
    L6_2 = "garage_spawn_points"
    L4_2(L5_2, L6_2)
  end
end
StartNextTask = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = GetStreetNameAtCoord
  L2_2 = A0_2.x
  L3_2 = A0_2.y
  L4_2 = A0_2.z
  L1_2, L2_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = GetStreetNameFromHashKey
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetStreetNameFromHashKey
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "" == L3_2 and "" == L4_2 then
    L5_2 = nil
    return L5_2
  end
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%s_%s"
  L7_2 = L3_2 or L7_2
  if "" == L3_2 or not L3_2 then
    L7_2 = "none"
  end
  L8_2 = L4_2 or L8_2
  if "" == L4_2 or not L4_2 then
    L8_2 = "none"
  end
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.gsub
  L8_2 = "%s+"
  L9_2 = ""
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L6_2
  L6_2 = L6_2.upper
  L6_2 = L6_2(L7_2)
  L5_2 = L6_2
  return L5_2
end
GetStreetHashLocationFromCoords = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L7_2 = A0_2
  L6_2 = A0_2.upper
  L6_2 = L6_2(L7_2)
  CurrentTask = L6_2
  L6_2 = ClearAllHelpMessages
  L6_2()
  L6_2 = L4_1
  L6_2 = L6_2[A4_2]
  if L6_2 then
    L6_2 = ipairs
    L7_2 = L4_1
    L7_2 = L7_2[A4_2]
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = L11_2.key
      if L12_2 == A1_2 then
        L6_1 = L10_2
        break
      end
    end
  end
  L6_2 = L6_1
  L6_2 = L6_2 + 1
  L6_1 = L6_2
  L6_2 = UI
  L6_2 = L6_2.HelpKeys
  L7_2 = {}
  L8_2 = {}
  L9_2 = {}
  L9_2.key = ""
  L10_2 = _U
  L11_2 = "PRESET_CREATOR.HELP_KEY_TITLE"
  L10_2 = L10_2(L11_2)
  L9_2.label = L10_2
  L10_2 = {}
  L10_2.key = ""
  L11_2 = "%s: (%s / %s)"
  L12_2 = L11_2
  L11_2 = L11_2.format
  L13_2 = _U
  L14_2 = "PRESET_CREATOR.HELP_KEY_REMAINING_COUNT"
  L13_2 = L13_2(L14_2)
  L14_2 = L6_1
  L15_2 = L7_1
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L10_2.label = L11_2
  L11_2 = {}
  L11_2.key = ""
  L12_2 = "%s: %s"
  L13_2 = L12_2
  L12_2 = L12_2.format
  L14_2 = _U
  L15_2 = "PRESET_CREATOR.HELP_KEY_TASK"
  L14_2 = L14_2(L15_2)
  L15_2 = CurrentTask
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L11_2.label = L12_2
  L12_2 = {}
  L12_2.key = ""
  L13_2 = "%s: %s"
  L14_2 = L13_2
  L13_2 = L13_2.format
  L15_2 = _U
  L16_2 = "PRESET_CREATOR.HELP_KEY_ZONE_OWNER"
  L15_2 = L15_2(L16_2)
  L16_2 = MapOwner
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L12_2.label = L13_2
  L13_2 = {}
  L13_2.key = ""
  L14_2 = "%s: %s"
  L15_2 = L14_2
  L14_2 = L14_2.format
  L16_2 = _U
  L17_2 = "PRESET_CREATOR.HELP_KEY_RESOURCE"
  L16_2 = L16_2(L17_2)
  L17_2 = MapResource
  L14_2 = L14_2(L15_2, L16_2, L17_2)
  L13_2.label = L14_2
  L14_2 = {}
  L14_2.key = "Enter"
  L15_2 = _U
  L16_2 = "PRESET_CREATOR.HELP_KEY_SAVE_POINT"
  L15_2 = L15_2(L16_2)
  L14_2.label = L15_2
  L15_2 = {}
  L15_2.key = "BACKSPACE"
  L16_2 = _U
  L17_2 = "PRESET_CREATOR.HELP_KEY_EXIT"
  L16_2 = L16_2(L17_2)
  L15_2.label = L16_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L8_2[3] = L11_2
  L8_2[4] = L12_2
  L8_2[5] = L13_2
  L8_2[6] = L14_2
  L8_2[7] = L15_2
  L7_2.keys = L8_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = nil
  L2_1 = L6_2
  L6_2 = RegisterDynamicAction
  L7_2 = "Backspace"
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = UI
    L0_3 = L0_3.HelpKeys
    L1_3 = nil
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = ClearAllHelpMessages
    L0_3()
    L0_3 = UnregisterAllDynamicActions
    L0_3()
    L0_3 = Interval
    L0_3 = L0_3.updateIntervalState
    L1_3 = "POINTS"
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L6_2(L7_2, L8_2)
  L6_2 = RegisterDynamicAction
  L7_2 = "Select"
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = L2_1
    if not L0_3 then
      return
    end
    L0_3 = Config
    L0_3 = L0_3.PresetCreator
    L0_3 = L0_3.DisableDistanceCheck
    if not L0_3 then
      L0_3 = pairs
      L1_3 = L3_1
      L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
      for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
        L6_3 = L5_3.coords
        L7_3 = L2_1
        L6_3 = L6_3 - L7_3
        L6_3 = #L6_3
        L7_3 = Config
        L7_3 = L7_3.PresetCreator
        L7_3 = L7_3.PointCheckDist
        if L6_3 <= L7_3 then
          L7_3 = Framework
          L7_3 = L7_3.sendNotification
          L8_3 = _U
          L9_3 = "PRESET_CREATOR.CLOSE_POINT"
          L10_3 = "error"
          L8_3, L9_3, L10_3 = L8_3(L9_3, L10_3)
          return L7_3(L8_3, L9_3, L10_3)
        end
      end
    end
    L0_3 = Config
    L0_3 = L0_3.PresetCreator
    L0_3 = L0_3.SkipPointConfirmation
    if not L0_3 then
      L0_3 = UI
      L0_3 = L0_3.Input
      L1_3 = _U
      L2_3 = "PRESET_CREATOR.DIALOG_CONFIRM_TITLE"
      L1_3 = L1_3(L2_3)
      L2_3 = {}
      L3_3 = {}
      L4_3 = _U
      L5_3 = "PRESET_CREATOR.DIALOG_CONFIRM_DESC"
      L4_3 = L4_3(L5_3)
      L3_3.label = L4_3
      L3_3.type = "checkbox"
      L3_3.required = true
      L2_3[1] = L3_3
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        return
      end
    end
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetEntityCoords
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L3_3 = A1_2
    L2_3 = L3_1
    L4_3 = {}
    L5_3 = vec3
    L6_3 = L2_1.x
    L7_3 = L2_1.y
    L8_3 = L1_3.z
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L4_3.coords = L5_3
    L2_3[L3_3] = L4_3
    L2_3 = A5_2
    L2_3()
  end
  L6_2(L7_2, L8_2)
end
StartTask = L8_1
L8_1 = Interval
L8_1 = L8_1.setInterval
L9_1 = "POINTS"
L10_1 = 0
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2
  L0_2 = GetRaycastPoint
  L1_2 = 1
  L0_2, L1_2 = L0_2(L1_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_1
  if L4_2 then
    L4_2 = next
    L5_2 = L3_1
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = pairs
      L5_2 = L3_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = DrawMarker
        L11_2 = 1
        L12_2 = L9_2.coords
        L12_2 = L12_2.x
        L13_2 = L9_2.coords
        L13_2 = L13_2.y
        L14_2 = L9_2.coords
        L14_2 = L14_2.z
        L15_2 = 0
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0.3
        L22_2 = 0.3
        L23_2 = 0.3
        L24_2 = 255
        L25_2 = 0
        L26_2 = 0
        L27_2 = 50
        L28_2 = false
        L29_2 = false
        L30_2 = 2
        L31_2 = nil
        L32_2 = nil
        L33_2 = false
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
      end
    end
  end
  if L0_2 then
    L2_1 = L0_2
    L4_2 = DrawMarker
    L5_2 = 1
    L6_2 = L0_2.x
    L7_2 = L0_2.y
    L8_2 = L3_2.z
    L9_2 = 0
    L10_2 = 0
    L11_2 = 0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L15_2 = 0.3
    L16_2 = 0.3
    L17_2 = 0.3
    L18_2 = 255
    L19_2 = 0
    L20_2 = 0
    L21_2 = 50
    L22_2 = false
    L23_2 = false
    L24_2 = 2
    L25_2 = nil
    L26_2 = nil
    L27_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  end
end
L8_1(L9_1, L10_1, L11_1)
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = BeginTextCommandDisplayHelp
  L6_2 = "THREESTRINGS"
  L5_2(L6_2)
  L5_2 = AddTextComponentSubstringPlayerName
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = AddTextComponentSubstringPlayerName
  L6_2 = A1_2 or L6_2
  if not A1_2 then
    L6_2 = ""
  end
  L5_2(L6_2)
  L5_2 = AddTextComponentSubstringPlayerName
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = ""
  end
  L5_2(L6_2)
  L5_2 = EndTextCommandDisplayHelp
  L6_2 = 0
  L7_2 = true
  L8_2 = false
  L9_2 = A4_2 or L9_2
  if not A4_2 then
    L9_2 = -1
  end
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
RenderHelpText = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetGameplayCamCoord
  L2_2 = L2_2()
  L3_2 = GetGameplayCamRot
  L4_2 = 2
  L3_2 = L3_2(L4_2)
  L4_2 = RotToDir
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * 50.0
  L5_2 = L2_2 + L5_2
  L6_2 = StartShapeTestRay
  L7_2 = L2_2
  L8_2 = L5_2
  L9_2 = A0_2 or L9_2
  if not A0_2 then
    L9_2 = 1
  end
  L10_2 = L1_2
  L11_2 = 0
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = GetShapeTestResult
  L8_2 = L6_2
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  if 1 == L8_2 then
    L12_2 = L9_2
    L13_2 = L11_2
    return L12_2, L13_2
  end
  L12_2 = nil
  return L12_2
end
GetRaycastPoint = L8_1
L8_1 = {}
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L8_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L8_1
    L3_2 = {}
    L3_2.callback = A1_2
    L2_2[A0_2] = L3_2
  else
    L2_2 = L8_1
    L2_2 = L2_2[A0_2]
    L2_2.callback = A1_2
  end
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Registering keys for %s"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
RegisterDynamicAction = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = dbg
  L0_2 = L0_2.debug
  L1_2 = "Unregistering all dynamic actions!"
  L0_2(L1_2)
  L0_2 = {}
  L8_1 = L0_2
end
UnregisterAllDynamicActions = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L8_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L8_1
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.callback
    if L1_2 then
      L1_2 = L8_1
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.callback
      L1_2()
  end
  else
    L1_2 = dbg
    L1_2 = L1_2.debug
    L2_2 = "No action registered for %s"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  end
end
TriggerDynamicAction = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = TriggerDynamicAction
  L1_2 = "Select"
  L0_2(L1_2)
end
PressKeySelect = L9_1
function L9_1()
  local L0_2, L1_2
  L0_2 = TriggerDynamicAction
  L1_2 = "Backspace"
  L0_2(L1_2)
end
PressKeyExit = L9_1
L9_1 = RegisterKey
L10_1 = PressKeySelect
L11_1 = "RETURN"
L12_1 = _U
L13_1 = "DYNAMIC_ACTION.SELECT_KEY"
L12_1 = L12_1(L13_1)
L13_1 = "RETURN"
L9_1(L10_1, L11_1, L12_1, L13_1)
L9_1 = RegisterKey
L10_1 = PressKeyExit
L11_1 = "BACK"
L12_1 = _U
L13_1 = "DYNAMIC_ACTION.EXIT_KEY"
L12_1 = L12_1(L13_1)
L13_1 = "BACK"
L9_1(L10_1, L11_1, L12_1, L13_1)
L9_1 = CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Wait
    L1_2 = L5_1
    L0_2(L1_2)
    L0_2 = GetGameTimer
    L0_2 = L0_2()
    L1_2 = pairs
    L2_2 = Interval
    L2_2 = L2_2.Pool
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2.state
      if L7_2 then
        L7_2 = L6_2.nextTime
        if L0_2 > L7_2 then
          L7_2 = 0
          L5_1 = L7_2
          L7_2 = L6_2.time
          L7_2 = L0_2 + L7_2
          L6_2.nextTime = L7_2
          L7_2 = L6_2.callback
          L7_2()
        end
      end
      L7_2 = Interval
      L7_2 = L7_2.GetActiveThreads
      L7_2 = L7_2()
      if L7_2 <= 0 then
        L8_2 = 250
        L5_1 = L8_2
      end
    end
  end
end
L9_1(L10_1)
