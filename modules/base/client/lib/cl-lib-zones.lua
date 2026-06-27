local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = {}
L2_1 = PlayerPedId
L3_1 = GetEntityCoords
L4_1 = Citizen
L4_1 = L4_1.CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = L2_1
    L0_2 = L0_2()
    L1_2 = L3_1
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = L0_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.position
      L8_2 = L1_2 - L8_2
      L8_2 = #L8_2
      if L8_2 < 100 then
        L10_2 = L7_2.id
        L9_2 = L1_1
        L9_2[L10_2] = L7_2
      else
        L7_2.rendering = false
        L9_2 = L0_1
        L9_2[L6_2] = L7_2
        L10_2 = L7_2.id
        L9_2 = L1_1
        L9_2[L10_2] = nil
      end
    end
  end
end
L4_1(L5_1)
L4_1 = Citizen
L4_1 = L4_1.CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = 500
  while true do
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = L2_1
    L1_2 = L1_2()
    L2_2 = L3_1
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = math
    L3_2 = L3_2.huge
    L4_2 = pairs
    L5_2 = L1_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.position
      L10_2 = L2_2 - L10_2
      L10_2 = #L10_2
      L11_2 = L9_2.npcModel
      if nil ~= L11_2 then
        L11_2 = L9_2.npcRenderDistance
        if L10_2 <= L11_2 then
          L11_2 = L9_2.loadZoneNPC
          L11_2()
      end
      else
        L11_2 = L9_2.unloadZoneNPC
        L11_2()
      end
      L11_2 = L9_2.isPropZone
      if nil ~= L11_2 then
        L11_2 = L9_2.propZoneLodDistance
        if L11_2 then
          L11_2 = L9_2.propZoneLodDistance
          if L10_2 <= L11_2 then
            L11_2 = L9_2.loadObject
            L11_2()
          else
            L11_2 = L9_2.unloadObject
            L11_2()
          end
        end
      end
      L11_2 = L9_2.renderDistance
      if L10_2 <= L11_2 then
        L11_2 = L9_2.destroyed
        if not L11_2 then
          L11_2 = L9_2.stopRendering
          if not L11_2 then
            L9_2.rendering = true
            L11_2 = L9_2.inRadius
            if L10_2 <= L11_2 then
              L11_2 = L9_2.isIn
              if not L11_2 then
                L11_2 = L9_2.onEnter
                if nil ~= L11_2 then
                  L11_2 = pcall
                  L12_2 = L9_2.onEnter
                  L11_2, L12_2 = L11_2(L12_2)
                  if not L11_2 then
                    L13_2 = dbg
                    L13_2 = L13_2.critical
                    L14_2 = "Cannot call onEnter because %s %s"
                    L15_2 = L11_2
                    L16_2 = L12_2
                    L13_2(L14_2, L15_2, L16_2)
                  end
                end
                L9_2.isIn = true
              end
            else
              L11_2 = L9_2.isIn
              if L11_2 then
                L11_2 = L9_2.onLeave
                if nil ~= L11_2 then
                  L11_2 = pcall
                  L12_2 = L9_2.onLeave
                  L11_2, L12_2 = L11_2(L12_2)
                  if not L11_2 then
                    L13_2 = dbg
                    L13_2 = L13_2.critical
                    L14_2 = "Cannot call onLeave because %s %s"
                    L15_2 = L11_2
                    L16_2 = L12_2
                    L13_2(L14_2, L15_2, L16_2)
                  end
                end
                L9_2.isIn = false
              end
            end
            L11_2 = L9_2.coneData
            if L11_2 then
              L11_2 = GetVehiclePedIsIn
              L12_2 = L1_2
              L13_2 = false
              L11_2 = L11_2(L12_2, L13_2)
              if 0 ~= L11_2 then
                L12_2 = DoesEntityExist
                L13_2 = L11_2
                L12_2 = L12_2(L13_2)
                if L12_2 then
                  L12_2 = NetworkGetNetworkIdFromEntity
                  L13_2 = L11_2
                  L12_2 = L12_2(L13_2)
                  L13_2 = GetEntityCoords
                  L14_2 = L11_2
                  L13_2 = L13_2(L14_2)
                  L14_2 = L9_2.getPosition
                  L14_2 = L14_2()
                  L15_2 = L13_2 - L14_2
                  L15_2 = #L15_2
                  L16_2 = IsVehicleInCone
                  L17_2 = L13_2
                  L18_2 = L9_2.position
                  L19_2 = L9_2.coneData
                  L19_2 = L19_2.leftBoundaryEndPoint
                  L20_2 = L9_2.coneData
                  L20_2 = L20_2.rightBoundaryEndPoint
                  L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
                  if L16_2 then
                    L16_2 = L9_2.cachedNetIds
                    L16_2 = L16_2[L12_2]
                    if not L16_2 then
                      L16_2 = L9_2.blockCamera
                      if not L16_2 then
                        L16_2 = L9_2.cachedNetIds
                        L16_2[L12_2] = true
                        L16_2 = L9_2.onEnterSpeedCamera
                        if nil ~= L16_2 then
                          L16_2 = pcall
                          L17_2 = L9_2.onEnterSpeedCamera
                          L16_2, L17_2 = L16_2(L17_2)
                          if not L16_2 then
                            L18_2 = dbg
                            L18_2 = L18_2.critical
                            L19_2 = "Cannot call onEnterSpeedCamera because %s %s"
                            L20_2 = L16_2
                            L21_2 = L17_2
                            L18_2(L19_2, L20_2, L21_2)
                          end
                        end
                    end
                  end
                  elseif L15_2 >= 10.0 then
                    L16_2 = L9_2.blockCamera
                    if not L16_2 then
                      L16_2 = L9_2.cachedNetIds
                      L16_2 = L16_2[L12_2]
                      if L16_2 then
                        L16_2 = L9_2.cachedNetIds
                        L16_2[L12_2] = nil
                        L9_2.blockCamera = true
                        L16_2 = SetTimeout
                        L17_2 = Config
                        L17_2 = L17_2.Props
                        L17_2 = L17_2.SpeedCamera
                        L17_2 = L17_2.CooldownForProcessingSameVehicle
                        L17_2 = L17_2 * 1000
                        function L18_2()
                          local L0_3, L1_3
                          L0_3 = L9_2.blockCamera
                          if L0_3 then
                            L9_2.blockCamera = false
                            L0_3 = dbg
                            L0_3 = L0_3.debug
                            L1_3 = "Camera is able to process vehicle again."
                            L0_3(L1_3)
                          end
                        end
                        L16_2(L17_2, L18_2)
                        L16_2 = L9_2.onLeaveSpeedCamera
                        if nil ~= L16_2 then
                          L16_2 = pcall
                          L17_2 = L9_2.onLeaveSpeedCamera
                          L16_2, L17_2 = L16_2(L17_2)
                          if not L16_2 then
                            L18_2 = dbg
                            L18_2 = L18_2.critical
                            L19_2 = "Cannot call onLeaveSpeedCamera because %s %s"
                            L20_2 = L16_2
                            L21_2 = L17_2
                            L18_2(L19_2, L20_2, L21_2)
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
        end
      end
      else
        L9_2.rendering = false
        L11_2 = L9_2.npcRenderDistance
        if L10_2 >= L11_2 then
          L11_2 = L9_2.unloadZoneNPC
          L11_2()
        end
        L11_2 = L9_2.isPropZone
        if nil ~= L11_2 then
          L11_2 = L9_2.propZoneLodDistance
          if L11_2 then
            L11_2 = L9_2.propZoneLodDistance
            if L10_2 >= L11_2 then
              L11_2 = L9_2.unloadObject
              L11_2()
            end
          end
        end
      end
      if L3_2 > L10_2 then
        L3_2 = L10_2
      end
    end
    if L3_2 < 50 then
      L0_2 = 100
    else
      L0_2 = 500
    end
  end
end
L4_1(L5_1)
L4_1 = Citizen
L4_1 = L4_1.CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L0_2 = 500
  while true do
    L1_2 = false
    L2_2 = pairs
    L3_2 = L1_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.rendering
      if L8_2 then
        L8_2 = L7_2.destroyed
        if not L8_2 then
          L8_2 = L7_2.zoneStyleType
          if "Target" ~= L8_2 then
            L8_2 = L7_2.isPropZone
            if not L8_2 then
              L1_2 = true
              L8_2 = Utils
              L8_2 = L8_2.HasZoneAccess
              L9_2 = L7_2.getDepartmentOwner
              L9_2 = L9_2()
              L10_2 = L7_2.getZoneDutyState
              L10_2 = L10_2()
              L11_2 = L7_2.getZoneType
              L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2 = L11_2()
              L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
              if L8_2 then
                L10_2 = L7_2.zoneStyleType
                if "3D" == L10_2 then
                  L10_2 = Utils
                  L10_2 = L10_2.Draw3DText
                  L11_2 = L7_2.position
                  L11_2 = L11_2.x
                  L12_2 = L7_2.position
                  L12_2 = L12_2.y
                  L13_2 = L7_2.position
                  L13_2 = L13_2.z
                  L14_2 = L7_2.zoneStyleScaleFactor
                  L15_2 = L7_2.zoneLabel
                  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
                else
                  L10_2 = L7_2.zoneStyleType
                  if "Marker" == L10_2 then
                    L10_2 = DrawMarker
                    L11_2 = L7_2.type
                    L12_2 = L7_2.position
                    L12_2 = L12_2.x
                    L13_2 = L7_2.position
                    L13_2 = L13_2.y
                    L14_2 = L7_2.position
                    L14_2 = L14_2.z
                    L15_2 = L7_2.dir
                    L15_2 = L15_2.x
                    L16_2 = L7_2.dir
                    L16_2 = L16_2.y
                    L17_2 = L7_2.dir
                    L17_2 = L17_2.z
                    L18_2 = L7_2.rot
                    L18_2 = L18_2.x
                    L19_2 = L7_2.rot
                    L19_2 = L19_2.y
                    L20_2 = L7_2.rot
                    L20_2 = L20_2.z
                    L21_2 = L7_2.scale
                    L21_2 = L21_2.x
                    L22_2 = L7_2.scale
                    L22_2 = L22_2.y
                    L23_2 = L7_2.scale
                    L23_2 = L23_2.z
                    L24_2 = L7_2.color
                    L24_2 = L24_2.r
                    L25_2 = L7_2.color
                    L25_2 = L25_2.g
                    L26_2 = L7_2.color
                    L26_2 = L26_2.b
                    L27_2 = L7_2.color
                    L27_2 = L27_2.a
                    L28_2 = false
                    L29_2 = false
                    L30_2 = 2
                    L31_2 = L7_2.rotation
                    L32_2 = nil
                    L33_2 = nil
                    L34_2 = false
                    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
                  end
                end
              end
            end
          end
        end
      end
    end
    if L1_2 then
      L0_2 = 0
    else
      L0_2 = 500
    end
    L2_2 = Wait
    L3_2 = L0_2
    L2_2(L3_2)
  end
end
L4_1(L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.size
  L3_2 = L0_1
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  L1_2.id = L2_2
  L2_2 = Config
  L2_2 = L2_2.Marker
  L2_2 = L2_2.Type
  if not L2_2 then
    L2_2 = 1
  end
  L1_2.type = L2_2
  L1_2.firstUpdate = false
  L1_2.zoneType = nil
  L2_2 = Config
  L2_2 = L2_2.Zones
  L2_2 = L2_2.Style
  if not L2_2 then
    L2_2 = "Marker"
  end
  L1_2.zoneStyleType = L2_2
  L2_2 = Config
  L2_2 = L2_2.Zones
  L2_2 = L2_2.ScaleFactor
  if not L2_2 then
    L2_2 = 0.5
  end
  L1_2.zoneStyleScaleFactor = L2_2
  L1_2.zoneLabel = "UNK"
  L1_2.resource = A0_2
  L1_2.renderDistance = 20
  L2_2 = Config
  L2_2 = L2_2.Zones
  L2_2 = L2_2.RenderDistanceNPC
  if not L2_2 then
    L2_2 = 100
  end
  L1_2.npcRenderDistance = L2_2
  L2_2 = vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.position = L2_2
  L2_2 = vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.dir = L2_2
  L2_2 = vector3
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2.rot = L2_2
  L2_2 = Config
  L2_2 = L2_2.Marker
  L2_2 = L2_2.Scale
  if not L2_2 then
    L2_2 = vector3
    L3_2 = 0.5
    L4_2 = 0.5
    L5_2 = 0.5
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  L1_2.scale = L2_2
  L1_2.rotation = false
  L1_2.rendering = false
  L1_2.stopRendering = false
  L1_2.cooldown = 0
  L2_2 = {}
  L1_2.cachedNetIds = L2_2
  L2_2 = {}
  L1_2.keys = L2_2
  L2_2 = {}
  L1_2.propZoneData = L2_2
  function L2_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3)
    local L6_3
    L6_3 = keyCache
    L6_3[A1_3] = A0_3
  end
  L1_2.registerKey = L2_2
  L1_2.onEnter = nil
  L1_2.onLeave = nil
  L1_2.onEnterSpeedCamera = nil
  L1_2.onLeaveSpeedCamera = nil
  L1_2.onKey = nil
  L1_2.zoneDutyState = false
  L1_2.isIn = false
  L1_2.entity = nil
  L1_2.department = nil
  L1_2.zoneData = nil
  L1_2.propZoneLodDistance = nil
  L1_2.isPropZone = false
  L1_2.cameraForwardVector = nil
  L1_2.inRadius = 1.5
  L1_2.maxCameraSpeed = nil
  L2_2 = Config
  L2_2 = L2_2.Marker
  L2_2 = L2_2.Colour
  if not L2_2 then
    L2_2 = {}
    L2_2.r = 255
    L2_2.g = 255
    L2_2.b = 255
    L2_2.a = 255
  end
  L1_2.color = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.id = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setId = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.coneData
    if L0_3 then
      L1_2.coneData = nil
    end
  end
  L1_2.removeCameraZone = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.maxCameraSpeed = A0_3
  end
  L1_2.setCameraZoneSpeed = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.maxCameraSpeed
    return L0_3
  end
  L1_2.getCameraZoneSpeed = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.cameraForwardVector
    return L0_3
  end
  L1_2.getCameraForwardVector = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L2_3 = L1_2.setCameraZoneSpeed
    L3_3 = A1_3
    L2_3(L3_3)
    function L2_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      L1_4 = math
      L1_4 = L1_4.rad
      L2_4 = A0_4
      L1_4 = L1_4(L2_4)
      L2_4 = vector3
      L3_4 = math
      L3_4 = L3_4.cos
      L4_4 = L1_4
      L3_4 = L3_4(L4_4)
      L4_4 = math
      L4_4 = L4_4.sin
      L5_4 = L1_4
      L4_4 = L4_4(L5_4)
      L5_4 = 0.0
      return L2_4(L3_4, L4_4, L5_4)
    end
    L3_3 = A0_3 + 90
    L4_3 = 90.0
    L5_3 = Config
    L5_3 = L5_3.Props
    L5_3 = L5_3.SpeedCamera
    L5_3 = L5_3.CheckDistance
    L6_3 = L2_3
    L7_3 = L3_3
    L6_3 = L6_3(L7_3)
    L7_3 = vector3
    L8_3 = L1_2.position
    L8_3 = L8_3.x
    L9_3 = L6_3.x
    L9_3 = L9_3 * L5_3
    L8_3 = L8_3 + L9_3
    L9_3 = L1_2.position
    L9_3 = L9_3.y
    L10_3 = L6_3.y
    L10_3 = L10_3 * L5_3
    L9_3 = L9_3 + L10_3
    L10_3 = L1_2.position
    L10_3 = L10_3.z
    L7_3 = L7_3(L8_3, L9_3, L10_3)
    L1_2.cameraForwardVector = L7_3
    L8_3 = L4_3 / 2
    L8_3 = L3_3 - L8_3
    L9_3 = L4_3 / 2
    L9_3 = L3_3 + L9_3
    L10_3 = L2_3
    L11_3 = L8_3
    L10_3 = L10_3(L11_3)
    L11_3 = L2_3
    L12_3 = L9_3
    L11_3 = L11_3(L12_3)
    L12_3 = vector3
    L13_3 = L1_2.position
    L13_3 = L13_3.x
    L14_3 = L10_3.x
    L14_3 = L14_3 * L5_3
    L13_3 = L13_3 + L14_3
    L14_3 = L1_2.position
    L14_3 = L14_3.y
    L15_3 = L10_3.y
    L15_3 = L15_3 * L5_3
    L14_3 = L14_3 + L15_3
    L15_3 = L1_2.position
    L15_3 = L15_3.z
    L12_3 = L12_3(L13_3, L14_3, L15_3)
    L13_3 = vector3
    L14_3 = L1_2.position
    L14_3 = L14_3.x
    L15_3 = L11_3.x
    L15_3 = L15_3 * L5_3
    L14_3 = L14_3 + L15_3
    L15_3 = L1_2.position
    L15_3 = L15_3.y
    L16_3 = L11_3.y
    L16_3 = L16_3 * L5_3
    L15_3 = L15_3 + L16_3
    L16_3 = L1_2.position
    L16_3 = L16_3.z
    L13_3 = L13_3(L14_3, L15_3, L16_3)
    L14_3 = {}
    L14_3.centralEndPoint = L7_3
    L14_3.leftBoundaryEndPoint = L12_3
    L14_3.rightBoundaryEndPoint = L13_3
    L1_2.coneData = L14_3
    L14_3 = dbg
    L14_3 = L14_3.debug
    L15_3 = "Camera zone boundaries calculated"
    L14_3(L15_3)
  end
  L1_2.setCameraZone = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.zoneData = A0_3
  end
  L1_2.setZoneData = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.zoneData
    return L0_3
  end
  L1_2.getZoneData = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.propZoneData = A0_3
  end
  L1_2.setPropZoneData = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.propZoneData
    return L0_3
  end
  L1_2.getPropZoneData = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.id
    return L0_3
  end
  L1_2.getId = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.zoneStyleType
    return L0_3
  end
  L1_2.getInteractStyle = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.type = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setType = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.type
    return L0_3
  end
  L1_2.getType = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.isPropZone = A0_3
  end
  L1_2.setPropZone = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.isPropZone
    return L0_3
  end
  L1_2.getPropZone = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.propZoneLodDistance = A0_3
  end
  L1_2.setPropLodDistance = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.propZoneLodDistance
    return L0_3
  end
  L1_2.getPropLodDistance = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = vec3
    L2_3 = A0_3.x
    L3_3 = A0_3.y
    L4_3 = A0_3.z
    L4_3 = L4_3 + 1
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L1_2.position = L1_3
    L1_3 = L1_2.update
    L1_3()
    L1_3 = L1_2
    return L1_3
  end
  L1_2.setPosition = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.zoneLabel = A0_3
  end
  L1_2.setZoneLabel = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.zoneLabel
    return L0_3
  end
  L1_2.getZoneLabel = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.zoneDutyState = A0_3
  end
  L1_2.setZoneDutyState = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.zoneDutyState
    return L0_3
  end
  L1_2.getZoneDutyState = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.zoneType = A0_3
  end
  L1_2.setZoneType = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.zoneJobState = A0_3
  end
  L1_2.setJobState = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.zoneJobState
    return L0_3
  end
  L1_2.getJobState = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.zoneType
    return L0_3
  end
  L1_2.getZoneType = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.position
    return L0_3
  end
  L1_2.getPosition = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.dir = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setDir = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.dir
    return L0_3
  end
  L1_2.getDir = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.rot = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setRot = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.rot
    return L0_3
  end
  L1_2.getRot = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.scale = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setScale = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.scale
    return L0_3
  end
  L1_2.getScale = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.color = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setColor = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.color
    return L0_3
  end
  L1_2.getColor = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.color
    L1_3.a = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setAlpha = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.color
    L0_3 = L0_3.a
    return L0_3
  end
  L1_2.getAlpha = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.color
    L1_3.r = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setRed = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.color
    L0_3 = L0_3.r
    return L0_3
  end
  L1_2.getRed = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.color
    L1_3.g = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setGreen = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.color
    L0_3 = L0_3.g
    return L0_3
  end
  L1_2.getGreen = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = L1_2.color
    L1_3.b = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setBlue = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.color
    L0_3 = L0_3.b
    return L0_3
  end
  L1_2.getBlue = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.npcModel = A0_3
  end
  L1_2.setNPCModel = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.npcHeading = A0_3
  end
  L1_2.setNPCHeading = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.npcRenderDistance = A0_3
    L1_3 = L1_2.update
    L1_3()
    L1_3 = L1_2
    return L1_3
  end
  L1_2.setNPCRenderDistance = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.renderDistance = A0_3
    L1_3 = L1_2.update
    L1_3()
    L1_3 = L1_2
    return L1_3
  end
  L1_2.setRenderDistance = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.department = A0_3
  end
  L1_2.setDepartmentOwner = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.department
    return L0_3
  end
  L1_2.getDepartmentOwner = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.renderDistance
    return L0_3
  end
  L1_2.getRenderDistance = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.rotation = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setRotation = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.rotation
    return L0_3
  end
  L1_2.getRotation = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.inRadius = A0_3
    L1_3 = L1_2.update
    L1_3()
  end
  L1_2.setInRadius = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.inRadius
    return L0_3
  end
  L1_2.getInRadius = L2_2
  function L2_2()
    local L0_3, L1_3
    L1_2.stopRendering = false
    L1_2.rendering = true
    L1_2.firstUpdate = false
    L0_3 = L1_2.update
    L0_3()
    L0_3 = L1_2
    return L0_3
  end
  L1_2.render = L2_2
  function L2_2()
    local L0_3, L1_3
    L1_2.stopRendering = true
    L1_2.rendering = false
    L0_3 = L1_2.update
    L0_3()
  end
  L1_2.stopRender = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L1_2.stopRendering = true
    L1_2.rendering = false
    L1_2.destroyed = true
    L0_3 = L1_2.update
    L1_3 = true
    L0_3(L1_3)
    L0_3 = dbg
    L0_3 = L0_3.debug
    L1_3 = "Deleted zone %s"
    L2_3 = L1_2.getId
    L2_3 = L2_3()
    L0_3(L1_3, L2_3)
  end
  L1_2.destroy = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.rendering
    return L0_3
  end
  L1_2.isRendering = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_2.keys = A0_3
    L1_3 = L1_2.update
    L1_3()
    L1_3 = L1_2
    return L1_3
  end
  L1_2.setKeys = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.keys
    return L0_3
  end
  L1_2.getKeys = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L0_3 = L1_2.isObjectLoaded
    if L0_3 then
      return
    end
    L1_2.isObjectLoaded = true
    L0_3 = L1_2.getPropZoneData
    L0_3 = L0_3()
    if not L0_3 then
      return
    end
    L1_3 = L1_2.getPosition
    L1_3 = L1_3()
    L2_3 = L0_3.model
    L3_3 = L0_3.heading
    L4_3 = L0_3.type
    L5_3 = false
    L6_3 = PROP_TYPES
    L6_3 = L6_3.SPEED_RADAR
    if L4_3 == L6_3 then
      L5_3 = true
    end
    L6_3 = UtilsService
    L6_3 = L6_3.SpawnObject
    L7_3 = L2_3
    L8_3 = L1_3
    L9_3 = false
    L10_3 = false
    L11_3 = L5_3
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L1_2.entity = L6_3
    L6_3 = PROP_TYPES
    L6_3 = L6_3.SPEED_RADAR
    if L4_3 == L6_3 then
      L6_3 = GetGroundZAndNormalFor_3dCoord
      L7_3 = L1_3.x
      L8_3 = L1_3.y
      L9_3 = L1_3.z
      L6_3, L7_3 = L6_3(L7_3, L8_3, L9_3)
      if 1 == L6_3 then
        L8_3 = 0.5
        L9_3 = SetEntityCoords
        L10_3 = L1_2.entity
        L11_3 = L1_3.x
        L12_3 = L1_3.y
        L13_3 = L7_3 + L8_3
        L9_3(L10_3, L11_3, L12_3, L13_3)
        L9_3 = PlaceObjectOnGroundProperly
        L10_3 = L1_2.entity
        L9_3(L10_3)
      end
    end
    if L3_3 then
      L6_3 = PROP_TYPES
      L6_3 = L6_3.WHEEL_CLAMP
      if L4_3 ~= L6_3 then
        L6_3 = SetEntityHeading
        L7_3 = L1_2.entity
        L8_3 = L3_3
        L6_3(L7_3, L8_3)
      end
    end
    L6_3 = FreezeEntityPosition
    L7_3 = L1_2.entity
    L8_3 = true
    L6_3(L7_3, L8_3)
    L6_3 = PROP_TYPES
    L6_3 = L6_3.BARRICADE
    if L4_3 == L6_3 then
      L6_3 = SetCanClimbOnEntity
      L7_3 = L1_2.entity
      L8_3 = false
      L6_3(L7_3, L8_3)
      L6_3 = SetObjectForceVehiclesToAvoid
      L7_3 = L1_2.entity
      L8_3 = true
      L6_3(L7_3, L8_3)
      L6_3 = SetEntityInvincible
      L7_3 = L1_2.entity
      L8_3 = true
      L6_3(L7_3, L8_3)
      L6_3 = FreezeEntityPosition
      L7_3 = L1_2.entity
      L8_3 = true
      L6_3(L7_3, L8_3)
      L6_3 = SetEntityCanBeDamaged
      L7_3 = L1_2.entity
      L8_3 = false
      L6_3(L7_3, L8_3)
      L6_3 = SetEntityCollision
      L7_3 = L1_2.entity
      L8_3 = true
      L9_3 = true
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = SetEntityProofs
      L7_3 = L1_2.entity
      L8_3 = true
      L9_3 = true
      L10_3 = true
      L11_3 = true
      L12_3 = true
      L13_3 = true
      L14_3 = true
      L15_3 = true
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L6_3 = AddSpeedZoneForCoord
      L7_3 = L1_3.x
      L8_3 = L1_3.y
      L9_3 = L1_3.z
      L10_3 = Config
      L10_3 = L10_3.Props
      L10_3 = L10_3.SpeedZoneRange
      if not L10_3 then
        L10_3 = 15.0
      end
      L11_3 = Config
      L11_3 = L11_3.Props
      L11_3 = L11_3.SpeedZoneSpeed
      if not L11_3 then
        L11_3 = 0.0
      end
      L12_3 = false
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
      L1_2.speedRoadNode = L6_3
      L6_3 = UtilsService
      L6_3 = L6_3.SpawnObject
      L7_3 = "v_ret_fh_shelf_02"
      L8_3 = vec3
      L9_3 = L1_3.x
      L10_3 = L1_3.y
      L11_3 = L1_3.z
      L11_3 = L11_3 - 0.8
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L9_3 = false
      L10_3 = false
      L11_3 = L5_3
      L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
      L1_2.collisionEntity = L6_3
      L6_3 = SetEntityHeading
      L7_3 = L1_2.collisionEntity
      L8_3 = GetEntityHeading
      L9_3 = L1_2.entity
      L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3 = L8_3(L9_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3)
      L6_3 = SetEntityAlpha
      L7_3 = L1_2.collisionEntity
      L8_3 = 0
      L9_3 = false
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = SetEntityCollision
      L7_3 = L1_2.collisionEntity
      L8_3 = true
      L9_3 = true
      L6_3(L7_3, L8_3, L9_3)
      L6_3 = FreezeEntityPosition
      L7_3 = L1_2.collisionEntity
      L8_3 = true
      L6_3(L7_3, L8_3)
      L6_3 = SetEntityInvincible
      L7_3 = L1_2.collisionEntity
      L8_3 = true
      L6_3(L7_3, L8_3)
      L6_3 = dbg
      L6_3 = L6_3.debug
      L7_3 = "Setting barricade settings!"
      L6_3(L7_3)
    else
      L6_3 = PROP_TYPES
      L6_3 = L6_3.SPEED_RADAR
      if L4_3 == L6_3 then
        L6_3 = SetCanClimbOnEntity
        L7_3 = L1_2.entity
        L8_3 = false
        L6_3(L7_3, L8_3)
        L6_3 = FreezeEntityPosition
        L7_3 = L1_2.entity
        L8_3 = true
        L6_3(L7_3, L8_3)
      else
        L6_3 = PROP_TYPES
        L6_3 = L6_3.WHEEL_CLAMP
        if L4_3 == L6_3 then
          L6_3 = {}
          L6_3.object = L0_3
          L7_3 = L1_2.getId
          L7_3 = L7_3()
          L6_3.id = L7_3
          L7_3 = WheelClampSpawn
          L8_3 = L1_2.entity
          L9_3 = L6_3
          L7_3(L8_3, L9_3)
        end
      end
    end
    L6_3 = PlaceObjectOnGroundProperly
    L7_3 = L1_2.entity
    L6_3(L7_3)
    L6_3 = dbg
    L6_3 = L6_3.debug
    L7_3 = "Spawned dynamic object since player in area!"
    L6_3(L7_3)
  end
  L1_2.loadObject = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.isObjectLoaded
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L1_2.entity
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L1_2.entity
        L0_3(L1_3)
        L1_2.isObjectLoaded = false
        L1_2.entity = nil
        L0_3 = L1_2.speedRoadNode
        if L0_3 then
          L0_3 = RemoveRoadNodeSpeedZone
          L1_3 = L1_2.speedRoadNode
          L0_3(L1_3)
          L1_2.speedRoadNode = nil
        end
        L0_3 = DoesEntityExist
        L1_3 = L1_2.collisionEntity
        L0_3 = L0_3(L1_3)
        if not L0_3 then
          L0_3 = L1_2.collisionEntity
          if not L0_3 then
            goto lbl_33
          end
        end
        L0_3 = DeleteEntity
        L1_3 = L1_2.collisionEntity
        L0_3(L1_3)
        L1_2.collisionEntity = nil
        ::lbl_33::
        L0_3 = dbg
        L0_3 = L0_3.debug
        L1_3 = "Unloading dynamic object"
        L0_3(L1_3)
      end
    end
  end
  L1_2.unloadObject = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L1_2.getPosition
    L0_3 = L0_3()
    L1_3 = L1_2.npcModel
    L2_3 = L1_2.npcHeading
    if not L1_3 then
      return
    end
    L3_3 = L1_2.npc
    if L3_3 then
      return
    end
    L3_3 = HasModelLoaded
    L4_3 = L1_3
    L3_3 = L3_3(L4_3)
    if not L3_3 then
      L3_3 = RequestModel
      L4_3 = L1_3
      L3_3(L4_3)
      while true do
        L3_3 = HasModelLoaded
        L4_3 = L1_3
        L3_3 = L3_3(L4_3)
        if L3_3 then
          break
        end
        L3_3 = Wait
        L4_3 = 0
        L3_3(L4_3)
      end
    end
    L3_3 = CreatePed
    L4_3 = 4
    L5_3 = L1_3
    L6_3 = L0_3.x
    L7_3 = L0_3.y
    L8_3 = L0_3.z
    L8_3 = L8_3 - 1
    L9_3 = L2_3
    L10_3 = false
    L11_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L1_2.npc = L3_3
    L3_3 = FreezeEntityPosition
    L4_3 = L1_2.npc
    L5_3 = true
    L3_3(L4_3, L5_3)
    L3_3 = SetEntityInvincible
    L4_3 = L1_2.npc
    L5_3 = true
    L3_3(L4_3, L5_3)
    L3_3 = SetBlockingOfNonTemporaryEvents
    L4_3 = L1_2.npc
    L5_3 = true
    L3_3(L4_3, L5_3)
    L3_3 = L1_2.npc
    return L3_3
  end
  L1_2.loadZoneNPC = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L1_2.npc
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L1_2.npc
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L1_2.npc
        L0_3(L1_3)
        L1_2.npc = nil
      end
    end
  end
  L1_2.unloadZoneNPC = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_2.zoneProp
    if L0_3 then
      L0_3 = DoesEntityExist
      L1_3 = L1_2.zoneProp
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = DeleteEntity
        L1_3 = L1_2.zoneProp
        L0_3(L1_3)
        L0_3 = SetEntityDrawOutline
        L1_3 = L1_2.zoneProp
        L2_3 = false
        L0_3(L1_3, L2_3)
        L1_2.zoneProp = nil
      end
    end
  end
  L1_2.unloadZoneProp = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = "v_10_liqurmat"
    L1_3 = IsModelValid
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      return
    end
    L1_3 = L1_2.zoneProp
    if L1_3 then
      return
    end
    L1_3 = RequestModel
    L2_3 = L0_3
    L1_3(L2_3)
    L1_3 = L1_2.getPosition
    L1_3 = L1_3()
    L2_3 = GetGroundZAndNormalFor_3dCoord
    L3_3 = L1_3.x
    L4_3 = L1_3.y
    L5_3 = L1_3.z
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3)
    L4_3 = CreateObjectNoOffset
    L5_3 = L0_3
    L6_3 = L1_3.x
    L7_3 = L1_3.y
    L8_3 = L3_3
    L9_3 = false
    L10_3 = false
    L11_3 = false
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
    L1_2.zoneProp = L4_3
    L4_3 = SetEntityAlpha
    L5_3 = L1_2.zoneProp
    L6_3 = 20
    L7_3 = false
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = SetEntityDrawOutline
    L5_3 = L1_2.zoneProp
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = SetEntityDrawOutlineColor
    L5_3 = 255
    L6_3 = 255
    L7_3 = 255
    L8_3 = 50
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  L1_2.loadZoneProp = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = string
    L2_3 = L2_3.lower
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if "enter" == L2_3 then
      L1_2.onEnter = A1_3
    else
      L2_3 = string
      L2_3 = L2_3.lower
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      if "leave" == L2_3 then
        L1_2.onLeave = A1_3
      else
        L2_3 = string
        L2_3 = L2_3.lower
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        if "onEnterSpeedCamera" == L2_3 then
          L1_2.onEnterSpeedCamera = A1_3
        else
          L2_3 = string
          L2_3 = L2_3.lower
          L3_3 = A0_3
          L2_3 = L2_3(L3_3)
          if "onLeaveSpeedCamera" == L2_3 then
            L1_2.onLeaveSpeedCamera = A1_3
          else
            L2_3 = string
            L2_3 = L2_3.lower
            L3_3 = A0_3
            L2_3 = L2_3(L3_3)
            if "key" == L2_3 then
              L1_2.onKey = A1_3
            end
          end
        end
      end
    end
    L2_3 = L1_2.update
    L2_3()
  end
  L1_2.on = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = L1_2.firstUpdate
    if L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.debug
      L2_3 = "First update ending"
      L1_3(L2_3)
      return
    end
    if A0_3 then
      L1_3 = pairs
      L2_3 = L1_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.getId
        L7_3 = L7_3()
        L8_3 = L1_2.getId
        L8_3 = L8_3()
        if L7_3 == L8_3 then
          L7_3 = L1_2.unloadObject
          L7_3()
          L7_3 = L1_1
          L7_3[L5_3] = nil
        end
      end
      L1_3 = pairs
      L2_3 = L0_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.getId
        L7_3 = L7_3()
        L8_3 = L1_2.getId
        L8_3 = L8_3()
        if L7_3 == L8_3 then
          L7_3 = L1_2.unloadObject
          L7_3()
          L7_3 = L0_1
          L7_3[L5_3] = nil
        end
      end
    else
      L1_3 = pairs
      L2_3 = L0_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.getId
        L7_3 = L7_3()
        L8_3 = L1_2.getId
        L8_3 = L8_3()
        if L7_3 == L8_3 then
          L7_3 = L1_2.unloadObject
          L7_3()
          L7_3 = L0_1
          L7_3[L5_3] = L6_3
        end
      end
    end
  end
  L1_2.update = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L0_1
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  return L1_2
end
createMarker = L4_1
L4_1 = AddEventHandler
L5_1 = "onResourceStop"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.resource
    if L7_2 == A0_2 then
      L7_2 = L6_2.destroy
      L7_2()
    end
  end
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A0_3.x
    L4_3 = A2_3.x
    L3_3 = L3_3 - L4_3
    L4_3 = A1_3.y
    L5_3 = A2_3.y
    L4_3 = L4_3 - L5_3
    L3_3 = L3_3 * L4_3
    L4_3 = A1_3.x
    L5_3 = A2_3.x
    L4_3 = L4_3 - L5_3
    L5_3 = A0_3.y
    L6_3 = A2_3.y
    L5_3 = L5_3 - L6_3
    L4_3 = L4_3 * L5_3
    L3_3 = L3_3 - L4_3
    return L3_3
  end
  L5_2 = L4_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L8_2 = A0_2
  L9_2 = A3_2
  L10_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2 < 0 or L6_2 < 0 or L7_2 < 0
  L9_2 = L5_2 > 0 or L6_2 > 0 or L7_2 > 0
  L10_2 = not L8_2 or L10_2
  return L10_2
end
IsVehicleInCone = L4_1
