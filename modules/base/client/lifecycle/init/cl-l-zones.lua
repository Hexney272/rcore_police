local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L1_1 = {}
L1_1.WRITE_REPORT = true
L1_1.REPORTS = true
L0_1.DATABASE = L1_1
L1_1 = {}
L2_1 = ZONE_TYPE
L2_1 = L2_1.WEAPON_SHOP
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.ItemShop
L4_1 = L4_1.Enable
L3_1.state = L4_1
L1_1[L2_1] = L3_1
L2_1 = ZONE_TYPE
L2_1 = L2_1.GARAGE_VEHICLE
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.Garage
L4_1 = L4_1.Enable
L3_1.state = L4_1
L1_1[L2_1] = L3_1
L2_1 = ZONE_TYPE
L2_1 = L2_1.DUTY
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.DutySystemState
L3_1.state = L4_1
L1_1[L2_1] = L3_1
L2_1 = ZONE_TYPE
L2_1 = L2_1.BOSS_MENU
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.BossMenu
L4_1 = L4_1.Enable
L3_1.state = L4_1
L1_1[L2_1] = L3_1
L2_1 = ZONE_TYPE
L2_1 = L2_1.CLOTHING_ROOM
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.Outfits
L4_1 = L4_1.Enable
L3_1.state = L4_1
L1_1[L2_1] = L3_1
L2_1 = ZONE_TYPE
L2_1 = L2_1.GARAGE_AIR
L3_1 = {}
L4_1 = Config
L4_1 = L4_1.Garage
L4_1 = L4_1.Enable
L3_1.state = L4_1
L1_1[L2_1] = L3_1
L0_1.INTERACT = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = nil
L6_1 = true
L7_1 = {}
ValidMapData = L7_1
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2
  L0_2 = TextService
  L0_2 = L0_2.Hide
  L0_2()
  L0_2 = HandleRegistrationZoneBlock
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.debug
    L1_2 = "Zones: Disabled registration on init, awaiting player be fully loaded"
    L0_2(L1_2)
    return
  end
  L0_2 = InitRegisterZones
  L0_2()
end
L7_1(L8_1)
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = Config
  L0_2 = L0_2.UseTargetForZones
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Zones
    L0_2.Style = "Target"
  end
  L0_2 = pairs
  L1_2 = Maps
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L5_2.MapLocation
    L7_2 = L5_2.Resource
    if L6_2 then
      L8_2 = "UNLOADED"
      L9_2 = MAPS
      L9_2 = L9_2.STANDALONE
      if L7_2 ~= L9_2 then
        L9_2 = isResourcePresentProvideless
        L10_2 = L7_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L8_2 = "LOADED"
          L9_2 = false
          L6_1 = L9_2
        end
      else
        L9_2 = {}
        L9_2.mapName = L4_2
        L9_2.mapLocation = L6_2
        L9_2.mapState = "LOADED"
        L5_1 = L9_2
      end
      if "LOADED" == L8_2 then
        L9_2 = L2_1
        L9_2 = L9_2[L6_2]
        if L9_2 then
          L9_2 = L2_1
          L9_2 = L9_2[L6_2]
          L9_2 = L9_2.mapState
        end
        if "UNLOADED" == L9_2 then
          L9_2 = L2_1
          L10_2 = {}
          L10_2.mapName = L4_2
          L10_2.mapLocation = L6_2
          L10_2.mapState = L8_2
          L9_2[L6_2] = L10_2
        end
      elseif "UNLOADED" == L8_2 then
        L9_2 = L2_1
        L9_2 = L9_2[L6_2]
        if not L9_2 then
          L9_2 = L2_1
          L10_2 = {}
          L10_2.mapName = L4_2
          L10_2.mapLocation = L6_2
          L10_2.mapState = L8_2
          L9_2[L6_2] = L10_2
        end
      end
    end
  end
  L0_2 = L6_1
  if L0_2 then
    L0_2 = L5_1
    if L0_2 then
      L1_2 = L5_1.mapLocation
      L0_2 = L2_1
      L2_2 = L5_1
      L0_2[L1_2] = L2_2
    end
  end
  L0_2 = pairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L6_2 = #L6_2
    L7_2 = L6_2 + 1
    L6_2 = L1_1
    L6_2[L7_2] = L5_2
  end
  L0_2 = table
  L0_2 = L0_2.sort
  L1_2 = L1_1
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.mapLocation
    L3_3 = A1_3.mapLocation
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L0_2(L1_2, L2_2)
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
        L6_2 = L5_2.mapName
        L7_2 = L5_2.mapState
        L8_2 = Maps
        L8_2 = L8_2[L6_2]
        if L8_2 and "LOADED" == L7_2 then
          L8_2 = Maps
          L8_2 = L8_2[L6_2]
          L9_2 = L8_2.Zones
          L10_2 = L8_2.Jobs
          L11_2 = L8_2.Pos
          L12_2 = L8_2.Blip
          L13_2 = ValidMapData
          L14_2 = {}
          L15_2 = L8_2.Resource
          L14_2.resource = L15_2
          L15_2 = L8_2.MapLocation
          L14_2.location = L15_2
          L14_2.coords = L11_2
          L14_2.owner = L10_2
          L13_2[L6_2] = L14_2
          if L12_2 then
            L13_2 = L12_2.enable
            if L13_2 then
              L13_2 = Utils
              L13_2 = L13_2.CreateBlipAtCoords
              L14_2 = {}
              L15_2 = L12_2.sprite
              if not L15_2 then
                L15_2 = 0
              end
              L14_2.sprite = L15_2
              L15_2 = L12_2.display
              if not L15_2 then
                L15_2 = 1
              end
              L14_2.display = L15_2
              L15_2 = L12_2.color
              if not L15_2 then
                L15_2 = 0
              end
              L14_2.color = L15_2
              L15_2 = L12_2.scale
              if not L15_2 then
                L15_2 = 1.0
              end
              L14_2.scale = L15_2
              L15_2 = L12_2.shortRange
              if not L15_2 then
                L15_2 = false
              end
              L14_2.shortRange = L15_2
              L15_2 = L12_2.name
              if not L15_2 then
                L15_2 = ""
              end
              L14_2.name = L15_2
              L14_2.pos = L11_2
              L13_2(L14_2)
            end
          end
          L13_2 = dbg
          L13_2 = L13_2.debug
          L14_2 = "Registering zones for map preset named %s"
          L15_2 = L6_2
          L13_2(L14_2, L15_2)
          if L11_2 then
            L13_2 = BlockEnviroment
            L14_2 = L11_2
            L13_2(L14_2)
          end
          if L9_2 then
            L13_2 = next
            L14_2 = L9_2
            L13_2 = L13_2(L14_2)
            if L13_2 then
              L13_2 = DefineZones
              L14_2 = L9_2
              L15_2 = L6_2
              L16_2 = L10_2
              L13_2(L14_2, L15_2, L16_2)
              L13_2 = L3_1
              L13_2 = #L13_2
              L14_2 = L13_2 + 1
              L13_2 = L3_1
              L15_2 = {}
              L15_2.zones = L9_2
              L15_2.mapKey = L6_2
              L15_2.owner = L10_2
              L13_2[L14_2] = L15_2
            end
          end
        end
      end
    end
  end
end
InitRegisterZones = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.UseTargetForZones
  if L4_2 then
    L4_2 = Config
    L4_2 = L4_2.Zones
    L4_2.Style = "Target"
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Switching zones to use target instead of markers!"
    L4_2(L5_2)
  end
  if not A0_2 then
    return
  end
  L4_2 = pairs
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L9_2.skipRender = false
    L10_2 = Config
    L10_2 = L10_2.Database
    L11_2 = Database
    L11_2 = L11_2.NONE
    if L10_2 == L11_2 then
      L10_2 = L0_1.DATABASE
      L11_2 = L9_2.type
      L10_2 = L10_2[L11_2]
      if L10_2 then
        L9_2.skipRender = true
      end
    end
    L10_2 = L0_1.INTERACT
    L11_2 = L9_2.type
    L10_2 = L10_2[L11_2]
    if L10_2 then
      L10_2 = L0_1.INTERACT
      L11_2 = L9_2.type
      L10_2 = L10_2[L11_2]
      L10_2 = L10_2.state
      if not L10_2 then
        L10_2 = dbg
        L10_2 = L10_2.debug
        L11_2 = "Zone interact: Removing this zone type %s due to disabled state"
        L12_2 = L9_2.type
        L10_2(L11_2, L12_2)
        L9_2.skipRender = true
      end
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = Wait
  L5_2 = 0
  L4_2(L5_2)
  L4_2 = ipairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.coords
    L11_2 = L9_2.type
    L12_2 = createMarker
    L12_2 = L12_2()
    L13_2 = "%s_%s"
    L14_2 = L13_2
    L13_2 = L13_2.format
    L15_2 = A1_2
    L16_2 = L8_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    L14_2 = L12_2.setPosition
    L15_2 = vec3
    L16_2 = L10_2.x
    L17_2 = L10_2.y
    L18_2 = L10_2.z
    L18_2 = L18_2 - 1
    L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L15_2(L16_2, L17_2, L18_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
    L14_2 = L12_2.setRenderDistance
    L15_2 = Config
    L15_2 = L15_2.Zones
    L15_2 = L15_2.RenderDistanceNPC
    L14_2(L15_2)
    L14_2 = L12_2.setDepartmentOwner
    L15_2 = A2_2
    L14_2(L15_2)
    L14_2 = L12_2.setZoneType
    L15_2 = L11_2
    L14_2(L15_2)
    L14_2 = L12_2.setJobState
    L15_2 = L9_2.no_job_zone
    if L15_2 then
      L15_2 = L9_2.no_job_zone
      if L15_2 then
        goto lbl_103
      end
    end
    L15_2 = false
    ::lbl_103::
    L14_2(L15_2)
    L14_2 = L12_2.setZoneDutyState
    L15_2 = L9_2.require_duty
    L14_2(L15_2)
    L14_2 = L12_2.setKeys
    L15_2 = {}
    L16_2 = 38
    L15_2[1] = L16_2
    L14_2(L15_2)
    L14_2 = L9_2.label
    L15_2 = Config
    L15_2 = L15_2.Zones
    L15_2 = L15_2.Style
    if "3D" ~= L15_2 then
      L15_2 = Config
      L15_2 = L15_2.Zones
      L15_2 = L15_2.Style
      if "DrawText" ~= L15_2 then
        L15_2 = Config
        L15_2 = L15_2.Zones
        L15_2 = L15_2.Style
        if "Marker" ~= L15_2 then
          goto lbl_135
        end
      end
    end
    L15_2 = "%s %s"
    L16_2 = L15_2
    L15_2 = L15_2.format
    L17_2 = L9_2.label
    L18_2 = "[E]"
    L15_2 = L15_2(L16_2, L17_2, L18_2)
    L14_2 = L15_2
    ::lbl_135::
    L15_2 = Config
    L15_2 = L15_2.Zones
    L15_2 = L15_2.Style
    if "Marker" == L15_2 then
      L15_2 = L12_2.setRenderDistance
      L16_2 = Config
      L16_2 = L16_2.Zones
      L16_2 = L16_2.ZoneRenderDistance
      L15_2(L16_2)
    end
    L15_2 = L12_2.setZoneLabel
    L16_2 = L14_2
    L15_2(L16_2)
    L15_2 = L12_2.setAlpha
    L16_2 = Config
    L16_2 = L16_2.Marker
    L16_2 = L16_2.Alpha
    L15_2(L16_2)
    L15_2 = L12_2.setRotation
    L16_2 = Config
    L16_2 = L16_2.Marker
    L16_2 = L16_2.Rotation
    L15_2(L16_2)
    L15_2 = L9_2.marker
    if L15_2 then
      L15_2 = L12_2.setType
      L16_2 = L9_2.marker
      L16_2 = L16_2.type
      L15_2(L16_2)
    end
    L15_2 = L9_2.npc
    if L15_2 then
      L15_2 = L9_2.skipRender
      if not L15_2 then
        L15_2 = L12_2.setNPCModel
        L16_2 = L9_2.npc
        L16_2 = L16_2.model
        L15_2(L16_2)
        L15_2 = L12_2.setNPCHeading
        L16_2 = L9_2.npc
        L16_2 = L16_2.heading
        L15_2(L16_2)
        L15_2 = L12_2.setNPCRenderDistance
        L16_2 = Config
        L16_2 = L16_2.Zones
        L16_2 = L16_2.RenderDistanceNPC
        L15_2(L16_2)
      end
    end
    L15_2 = Config
    L15_2 = L15_2.Zones
    L15_2 = L15_2.Style
    if "Target" == L15_2 then
      L15_2 = L9_2.skipRender
      if not L15_2 then
        L15_2 = {}
        L15_2.num = 1
        L15_2.type = "client"
        L15_2.event = "rcore_police:client:zoneInteract"
        L16_2 = L9_2.icon
        if not L16_2 then
          L16_2 = ""
        end
        L15_2.icon = L16_2
        L15_2.label = L14_2
        L16_2 = L9_2.icon
        if not L16_2 then
          L16_2 = ""
        end
        L15_2.targeticon = L16_2
        function L16_2(A0_3, A1_3, A2_3)
          local L3_3
          L3_3 = true
          return L3_3
        end
        L15_2.canInteract = L16_2
        L16_2 = {}
        L17_2 = 255
        L18_2 = 255
        L19_2 = 255
        L20_2 = 255
        L16_2[1] = L17_2
        L16_2[2] = L18_2
        L16_2[3] = L19_2
        L16_2[4] = L20_2
        L15_2.drawColor = L16_2
        L16_2 = {}
        L17_2 = 30
        L18_2 = 144
        L19_2 = 255
        L20_2 = 255
        L16_2[1] = L17_2
        L16_2[2] = L18_2
        L16_2[3] = L19_2
        L16_2[4] = L20_2
        L15_2.successDrawColor = L16_2
        L16_2 = Config
        L16_2 = L16_2.InteractionsTarget
        L17_2 = InteractionsTarget
        L17_2 = L17_2.OX
        if L16_2 ~= L17_2 then
          L16_2 = isResourcePresentProvideless
          L17_2 = "crm-target"
          L16_2 = L16_2(L17_2)
          if not L16_2 then
            goto lbl_240
          end
        end
        function L16_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = TriggerEvent
          L1_3 = "rcore_police:client:zoneInteract"
          L2_3 = {}
          L3_3 = L12_2
          L2_3.zone = L3_3
          L0_3(L1_3, L2_3)
        end
        L15_2.onSelect = L16_2
        goto lbl_241
        ::lbl_240::
        L15_2.zone = L12_2
        ::lbl_241::
        L16_2 = CreateTargetZone
        L17_2 = L10_2
        L18_2 = 1.5
        L19_2 = 3.0
        L20_2 = 35.0
        L21_2 = {}
        L22_2 = L15_2
        L21_2[1] = L22_2
        L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
      end
    end
    L15_2 = L12_2.setZoneData
    L16_2 = {}
    L16_2.preset = A1_2
    L16_2.index = L8_2
    L15_2(L16_2)
    L15_2 = L12_2.setId
    L16_2 = L13_2
    L15_2(L16_2)
    L15_2 = L9_2.skipRender
    if L15_2 then
      L15_2 = L12_2.stopRender
      L15_2()
    else
      L15_2 = L12_2.render
      L15_2()
    end
    function L15_2()
      local L0_3, L1_3
      L0_3 = OnZoneEnter
      L1_3 = L12_2
      L0_3(L1_3)
    end
    L12_2.onEnter = L15_2
    function L15_2()
      local L0_3, L1_3
      L0_3 = OnZoneLeave
      L1_3 = L12_2
      L0_3(L1_3)
    end
    L12_2.onLeave = L15_2
    L15_2 = Config
    L15_2 = L15_2.Zones
    L15_2 = L15_2.Style
    if "Target" ~= L15_2 then
      L15_2 = L12_2.registerKey
      function L16_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3
        L1_3 = pcall
        L2_3 = L12_2.onKey
        L3_3 = A0_3
        L1_3, L2_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          L3_3 = dbg
          L3_3 = L3_3.debug
          L4_3 = "Error in onKey: %s"
          L5_3 = L2_3
          L3_3(L4_3, L5_3)
        end
      end
      L17_2 = L13_2
      L18_2 = "Activate Marker"
      L19_2 = "E"
      L20_2 = nil
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
      function L15_2()
        local L0_3, L1_3
        L0_3 = OnZoneKeypress
        L1_3 = L12_2
        L0_3(L1_3)
      end
      L12_2.onKey = L15_2
    end
    L15_2 = L9_2.points
    if L15_2 then
      L15_2 = RegisterPoints
      L16_2 = L9_2.points
      L17_2 = A1_2
      L18_2 = L8_2
      L19_2 = A2_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
  end
end
DefineZones = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A0_2 then
    L4_2 = next
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = ipairs
      L5_2 = A0_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = createMarker
        L10_2 = L10_2()
        L11_2 = "%s_%s_%s"
        L12_2 = L11_2
        L11_2 = L11_2.format
        L13_2 = A1_2
        L14_2 = ZONE_TYPE
        L14_2 = L14_2.VEHICLE_SPAWNPOINT
        L15_2 = tostring
        L16_2 = L8_2
        L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        L12_2 = ""
        L13_2 = 15
        L14_2 = Config
        L14_2 = L14_2.Zones
        L14_2 = L14_2.Style
        if "3D" ~= L14_2 then
          L14_2 = Config
          L14_2 = L14_2.Zones
          L14_2 = L14_2.Style
          if "DrawText" ~= L14_2 then
            L14_2 = Config
            L14_2 = L14_2.Zones
            L14_2 = L14_2.Style
            if "Marker" ~= L14_2 then
              goto lbl_54
            end
          end
        end
        L14_2 = "%s %s"
        L15_2 = L14_2
        L14_2 = L14_2.format
        L16_2 = _U
        L17_2 = "POINTS.STORE_VEHICLE"
        L16_2 = L16_2(L17_2)
        L17_2 = "[E]"
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L12_2 = L14_2
        L14_2 = Config
        L14_2 = L14_2.Garage
        L14_2 = L14_2.MarkerRenderDistance
        L13_2 = L14_2 or L13_2
        if not L14_2 then
          L13_2 = 10
        end
        ::lbl_54::
        L14_2 = L10_2.setZoneLabel
        L15_2 = L12_2
        L14_2(L15_2)
        L14_2 = L10_2.setPosition
        L15_2 = vec3
        L16_2 = L9_2.coords
        L16_2 = L16_2.x
        L17_2 = L9_2.coords
        L17_2 = L17_2.y
        L18_2 = L9_2.coords
        L18_2 = L18_2.z
        L15_2, L16_2, L17_2, L18_2, L19_2 = L15_2(L16_2, L17_2, L18_2)
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        L14_2 = L10_2.setRenderDistance
        L15_2 = L13_2
        L14_2(L15_2)
        L14_2 = L10_2.setZoneType
        L15_2 = ZONE_TYPE
        L15_2 = L15_2.VEHICLE_SPAWNPOINT
        L14_2(L15_2)
        L14_2 = L10_2.setDepartmentOwner
        L15_2 = A3_2
        L14_2(L15_2)
        L14_2 = L10_2.setZoneDutyState
        L15_2 = false
        L14_2(L15_2)
        L14_2 = L10_2.setKeys
        L15_2 = {}
        L16_2 = 38
        L15_2[1] = L16_2
        L14_2(L15_2)
        L14_2 = L10_2.setRotation
        L15_2 = Config
        L15_2 = L15_2.Marker
        L15_2 = L15_2.Rotation
        L14_2(L15_2)
        L14_2 = L10_2.setId
        L15_2 = L11_2
        L14_2(L15_2)
        L14_2 = L10_2.setZoneData
        L15_2 = {}
        L15_2.preset = A1_2
        L15_2.index = A2_2
        L15_2.spawnPointId = L8_2
        L14_2(L15_2)
        L14_2 = L10_2.setAlpha
        L15_2 = Config
        L15_2 = L15_2.Marker
        L15_2 = L15_2.Alpha
        L14_2(L15_2)
        L14_2 = L10_2.render
        L14_2()
        function L14_2()
          local L0_3, L1_3
          L0_3 = L11_2
          GlobalZoneId = L0_3
          L0_3 = OnZoneEnter
          L1_3 = L10_2
          L0_3(L1_3)
        end
        L10_2.onEnter = L14_2
        function L14_2()
          local L0_3, L1_3
          GlobalZoneId = nil
          L0_3 = OnZoneLeave
          L1_3 = L10_2
          L0_3(L1_3)
        end
        L10_2.onLeave = L14_2
        L14_2 = L10_2.registerKey
        function L15_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3
          L1_3 = pcall
          L2_3 = L10_2.onKey
          L3_3 = A0_3
          L1_3, L2_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L3_3 = dbg
            L3_3 = L3_3.debug
            L4_3 = "Error in onKey: %s"
            L5_3 = L2_3
            L3_3(L4_3, L5_3)
          end
        end
        L16_2 = L11_2
        L17_2 = "Activate Marker"
        L18_2 = "E"
        L19_2 = nil
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        function L14_2()
          local L0_3, L1_3
          L0_3 = OnZoneKeypress
          L1_3 = L10_2
          L0_3(L1_3)
        end
        L10_2.onKey = L14_2
      end
    end
  end
end
RegisterPoints = L7_1
