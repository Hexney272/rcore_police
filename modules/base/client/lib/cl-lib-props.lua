local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L0_1.IsPlacing = false
L0_1.PROP_PLACE_FAIL_GROUND = "ground"
L0_1.PROP_PLACE_FAIL_OTHER = "other"
ObjectPlacer = L0_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.x
  L2_2 = L2_2 * L3_2
  L1_2.x = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.y
  L2_2 = L2_2 * L3_2
  L1_2.y = L2_2
  L2_2 = math
  L2_2 = L2_2.pi
  L2_2 = L2_2 / 180
  L3_2 = A0_2.z
  L2_2 = L2_2 * L3_2
  L1_2.z = L2_2
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L3_2 = -L3_2
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.x = L3_2
  L3_2 = math
  L3_2 = L3_2.cos
  L4_2 = L1_2.z
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.abs
  L5_2 = math
  L5_2 = L5_2.cos
  L6_2 = L1_2.x
  L5_2, L6_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2 * L4_2
  L2_2.y = L3_2
  L3_2 = math
  L3_2 = L3_2.sin
  L4_2 = L1_2.x
  L3_2 = L3_2(L4_2)
  L2_2.z = L3_2
  return L2_2
end
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L1_1
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = 1000000.0
  end
  L5_2 = vector3
  L6_2 = A0_2.x
  L7_2 = L3_2.x
  L7_2 = L7_2 * L4_2
  L6_2 = L6_2 + L7_2
  L7_2 = A0_2.y
  L8_2 = L3_2.y
  L8_2 = L8_2 * L4_2
  L7_2 = L7_2 + L8_2
  L8_2 = A0_2.z
  L9_2 = L3_2.z
  L9_2 = L9_2 * L4_2
  L8_2 = L8_2 + L9_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  return L5_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 5
  L2_2 = BlockWeaponWheelThisFrame
  L2_2()
  L2_2 = DisableControlAction
  L3_2 = 0
  L4_2 = 36
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = IsDisabledControlPressed
  L3_2 = 0
  L4_2 = 36
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L1_2 = 1
  end
  L2_2 = DisableControlAction
  L3_2 = 0
  L4_2 = 14
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = IsDisabledControlJustPressed
  L3_2 = 0
  L4_2 = 14
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2 - L1_2
    L2_2 = L2_2 % 360
    return L2_2
  end
  L2_2 = DisableControlAction
  L3_2 = 0
  L4_2 = 15
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = IsDisabledControlJustPressed
  L3_2 = 0
  L4_2 = 15
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2 + L1_2
    L2_2 = L2_2 % 360
    return L2_2
  end
  return A0_2
end
L4_1 = Config
L4_1 = L4_1.Props
L4_1 = L4_1.HelpKeys
L5_1 = ObjectPlacer
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2
  L7_2 = L0_1
  if L7_2 then
    return
  end
  L7_2 = true
  L0_1 = L7_2
  L7_2 = {}
  L8_2 = UtilsService
  L8_2 = L8_2.LoadModel
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = PlayerPedId
  L8_2 = L8_2()
  L9_2 = GetEntityCoords
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = UtilsService
  L10_2 = L10_2.SpawnObject
  L11_2 = A0_2
  L12_2 = L9_2
  L13_2 = false
  L14_2 = false
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  L11_2 = GetEntityHeading
  L12_2 = L8_2
  L11_2 = L11_2(L12_2)
  L12_2 = L11_2 - 90
  L13_2 = 360
  if L12_2 > L13_2 then
    L12_2 = L12_2 - 360
  end
  if L12_2 < 0 then
    L12_2 = L12_2 + 360
  end
  L13_2 = SetEntityHeading
  L14_2 = L10_2
  L15_2 = L12_2
  L13_2(L14_2, L15_2)
  L13_2 = GetEntityHeading
  L14_2 = L10_2
  L13_2 = L13_2(L14_2)
  L14_2 = GetModelDimensions
  L15_2 = A0_2
  L14_2 = L14_2(L15_2)
  L15_2 = math
  L15_2 = L15_2.abs
  L16_2 = L14_2.z
  L15_2 = L15_2(L16_2)
  L16_2 = FreezeEntityPosition
  L17_2 = L10_2
  L18_2 = true
  L16_2(L17_2, L18_2)
  L16_2 = SetEntityCollision
  L17_2 = L10_2
  L18_2 = false
  L19_2 = false
  L16_2(L17_2, L18_2, L19_2)
  L16_2 = SetEntityDrawOutline
  L17_2 = L10_2
  L18_2 = true
  L16_2(L17_2, L18_2)
  L16_2 = Config
  L16_2 = L16_2.Props
  L16_2 = L16_2.PlaceEditorOutlineColor
  L17_2 = Config
  L17_2 = L17_2.Props
  L17_2 = L17_2.PlaceEditorOutlineNotPlacableColor
  L18_2 = Config
  L18_2 = L18_2.Props
  L18_2 = L18_2.PlaceEditorDistance
  L19_2 = Config
  L19_2 = L19_2.Props
  L19_2 = L19_2.AllowDrawLineDirectionHelper
  if L16_2 then
    L20_2 = SetEntityDrawOutlineColor
    L21_2 = L16_2.r
    L22_2 = L16_2.g
    L23_2 = L16_2.b
    L24_2 = L16_2.a
    L20_2(L21_2, L22_2, L23_2, L24_2)
  end
  L20_2 = SetCurrentPedWeapon
  L21_2 = L8_2
  L22_2 = -1569615261
  L23_2 = true
  L20_2(L21_2, L22_2, L23_2)
  L20_2 = true
  L21_2 = ObjectPlacer
  L21_2.IsPlacing = true
  L21_2 = PlaceObjectOnGroundProperly
  L22_2 = L10_2
  L21_2(L22_2)
  L21_2 = false
  L22_2 = false
  L23_2 = 90.0
  L24_2 = Config
  L24_2 = L24_2.Props
  L24_2 = L24_2.SpeedCamera
  L24_2 = L24_2.CheckDistance
  if "rds_speed_camera" ~= A0_2 then
    L19_2 = false
  end
  L25_2 = {}
  L7_2 = L25_2
  L25_2 = ipairs
  L26_2 = L4_1
  L25_2, L26_2, L27_2, L28_2 = L25_2(L26_2)
  for L29_2, L30_2 in L25_2, L26_2, L27_2, L28_2 do
    L31_2 = table
    L31_2 = L31_2.insert
    L32_2 = L7_2
    L33_2 = L30_2
    L31_2(L32_2, L33_2)
  end
  L25_2 = Wait
  L26_2 = 0
  L25_2(L26_2)
  L25_2 = #L7_2
  L25_2 = L25_2 + 1
  L26_2 = {}
  L26_2.label = ""
  L26_2.key = ""
  L7_2[L25_2] = L26_2
  L25_2 = UI
  L25_2 = L25_2.HelpKeys
  L26_2 = {}
  L26_2.keys = L7_2
  L27_2 = true
  L25_2(L26_2, L27_2)
  while L20_2 do
    L25_2 = GetPedBoneCoords
    L26_2 = L8_2
    L27_2 = 31086
    L28_2 = 0.0
    L29_2 = 0.0
    L30_2 = 0.0
    L25_2 = L25_2(L26_2, L27_2, L28_2, L29_2, L30_2)
    L26_2 = GetEntityCoords
    L27_2 = L10_2
    L26_2 = L26_2(L27_2)
    L27_2 = GetEntityForwardVector
    L28_2 = L10_2
    L27_2 = L27_2(L28_2)
    L28_2 = L2_1
    L29_2 = L25_2
    L30_2 = GetGameplayCamRot
    L31_2 = 0
    L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2 = L30_2(L31_2)
    L28_2 = L28_2(L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2, L39_2, L40_2, L41_2, L42_2, L43_2, L44_2, L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
    L29_2 = StartShapeTestRay
    L30_2 = L25_2
    L31_2 = L28_2
    L32_2 = 4294967295
    L33_2 = L8_2
    L34_2 = 4
    L29_2 = L29_2(L30_2, L31_2, L32_2, L33_2, L34_2)
    L30_2 = GetShapeTestResult
    L31_2 = L29_2
    L30_2, L31_2, L32_2, L33_2, L34_2 = L30_2(L31_2)
    L35_2 = StartShapeTestRay
    L36_2 = L26_2
    L37_2 = vector3
    L38_2 = L26_2.x
    L39_2 = L26_2.y
    L40_2 = L26_2.z
    L40_2 = L40_2 - 10
    L37_2 = L37_2(L38_2, L39_2, L40_2)
    L38_2 = 1
    L39_2 = L10_2
    L40_2 = 4
    L35_2 = L35_2(L36_2, L37_2, L38_2, L39_2, L40_2)
    L36_2 = GetShapeTestResult
    L37_2 = L35_2
    L36_2, L37_2, L38_2, L39_2, L40_2 = L36_2(L37_2)
    L41_2 = L26_2 - L38_2
    L41_2 = #L41_2
    L42_2 = L25_2 - L32_2
    L42_2 = #L42_2
    if L18_2 < L42_2 then
      if not L21_2 then
        L43_2 = #L7_2
        L44_2 = L7_2[L43_2]
        if L44_2 then
          L44_2 = L7_2[L43_2]
          L45_2 = _U
          L46_2 = "PROP_EDITOR.PROP_FAR_AWAY_BLOCKED"
          L45_2 = L45_2(L46_2)
          L44_2.label = L45_2
        end
        L21_2 = true
        L22_2 = false
        L44_2 = UI
        L44_2 = L44_2.HelpKeys
        L45_2 = {}
        L45_2.keys = L7_2
        L46_2 = true
        L44_2(L45_2, L46_2)
      end
      L43_2 = SetEntityDrawOutlineColor
      L44_2 = L17_2.r
      L45_2 = L17_2.g
      L46_2 = L17_2.b
      L47_2 = L17_2.a
      L43_2(L44_2, L45_2, L46_2, L47_2)
    else
      if not L22_2 then
        L43_2 = #L7_2
        L44_2 = L7_2[L43_2]
        if L44_2 then
          L44_2 = L7_2[L43_2]
          L45_2 = _U
          L46_2 = "PROP_EDITOR.CAN_PLACE_PROP"
          L45_2 = L45_2(L46_2)
          L44_2.label = L45_2
        end
        L22_2 = true
        L21_2 = false
        L44_2 = UI
        L44_2 = L44_2.HelpKeys
        L45_2 = {}
        L45_2.keys = L7_2
        L46_2 = true
        L44_2(L45_2, L46_2)
      end
      L43_2 = SetEntityDrawOutlineColor
      L44_2 = L16_2.r
      L45_2 = L16_2.g
      L46_2 = L16_2.b
      L47_2 = L16_2.a
      L43_2(L44_2, L45_2, L46_2, L47_2)
    end
    L43_2 = GetEntityForwardVector
    L44_2 = L10_2
    L43_2 = L43_2(L44_2)
    if L19_2 then
      L44_2 = vector3
      L45_2 = L26_2.x
      L46_2 = L43_2.x
      L46_2 = L46_2 * L24_2
      L45_2 = L45_2 + L46_2
      L46_2 = L26_2.y
      L47_2 = L43_2.y
      L47_2 = L47_2 * L24_2
      L46_2 = L46_2 + L47_2
      L47_2 = L26_2.z
      L48_2 = L43_2.z
      L48_2 = L48_2 * L24_2
      L47_2 = L47_2 + L48_2
      L44_2 = L44_2(L45_2, L46_2, L47_2)
      L45_2 = DrawLine
      L46_2 = L26_2.x
      L47_2 = L26_2.y
      L48_2 = L26_2.z
      L48_2 = L48_2 + 0.5
      L49_2 = L44_2.x
      L50_2 = L44_2.y
      L51_2 = L44_2.z
      L51_2 = L51_2 + 0.5
      L52_2 = 0
      L53_2 = 255
      L54_2 = 0
      L55_2 = 255
      L45_2(L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
    end
    L44_2 = SetEntityCoords
    L45_2 = L10_2
    L46_2 = vector3
    L47_2 = L32_2.x
    L48_2 = L32_2.y
    L49_2 = L32_2.z
    L50_2 = math
    L50_2 = L50_2.abs
    L51_2 = L15_2
    L50_2 = L50_2(L51_2)
    L49_2 = L49_2 + L50_2
    L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2 = L46_2(L47_2, L48_2, L49_2)
    L44_2(L45_2, L46_2, L47_2, L48_2, L49_2, L50_2, L51_2, L52_2, L53_2, L54_2, L55_2)
    L44_2 = SetEntityHeading
    L45_2 = L10_2
    L46_2 = L13_2
    L44_2(L45_2, L46_2)
    L44_2 = DisableControlAction
    L45_2 = 0
    L46_2 = 38
    L47_2 = true
    L44_2(L45_2, L46_2, L47_2)
    L44_2 = IsDisabledControlJustPressed
    L45_2 = 0
    L46_2 = 38
    L44_2 = L44_2(L45_2, L46_2)
    if L44_2 then
      L44_2 = vector3
      L45_2 = L32_2.x
      L46_2 = L32_2.y
      L47_2 = L32_2.z
      L48_2 = math
      L48_2 = L48_2.abs
      L49_2 = L15_2
      L48_2 = L48_2(L49_2)
      L47_2 = L47_2 + L48_2
      L44_2 = L44_2(L45_2, L46_2, L47_2)
      if nil ~= A6_2 then
        L45_2 = A6_2.coords
        L45_2 = L45_2 - L32_2
        L45_2 = #L45_2
        L46_2 = A6_2.distance
      end
      if L45_2 > L46_2 or L21_2 then
        L45_2 = Framework
        L45_2 = L45_2.sendNotification
        L46_2 = _U
        L47_2 = "PROP_EDITOR.PROP_FAR_AWAY_BLOCKED"
        L46_2 = L46_2(L47_2)
        L47_2 = "error"
        L45_2(L46_2, L47_2)
      else
        if not A4_2 then
          L45_2 = L15_2 + 0.1
          if not (L41_2 < L45_2) then
            goto lbl_398
          end
        end
        L45_2 = vector3
        L46_2 = 0.0
        L47_2 = 0.0
        L48_2 = 0.0
        L45_2 = L45_2(L46_2, L47_2, L48_2)
        L45_2 = L26_2 - L45_2
        L45_2 = #L45_2
        if L45_2 > 10.0 then
          if A1_2 then
            L45_2 = UI
            L45_2 = L45_2.HelpKeys
            L46_2 = nil
            L47_2 = false
            L45_2(L46_2, L47_2)
            L45_2 = SetEntityAlpha
            L46_2 = L10_2
            L47_2 = 0
            L45_2(L46_2, L47_2)
            L45_2 = SetEntityDrawOutline
            L46_2 = L10_2
            L47_2 = false
            L45_2(L46_2, L47_2)
            L45_2 = PlaceObjectOnGroundProperly
            L46_2 = L10_2
            L45_2(L46_2)
            L45_2 = false
            L0_1 = L45_2
            L45_2 = dbg
            L45_2 = L45_2.debug
            L46_2 = "ObjectPlacer: Success entity has validation location to be placed at!"
            L45_2(L46_2)
            L45_2 = A1_2
            L46_2 = L44_2
            L47_2 = GetEntityRotation
            L48_2 = L10_2
            L47_2 = L47_2(L48_2)
            L48_2 = L13_2
            L49_2 = L10_2
            L45_2(L46_2, L47_2, L48_2, L49_2)
          end
          L20_2 = false
        end
        ::lbl_398::
        if L41_2 > 1.0 then
          if A3_2 then
            L45_2 = false
            L0_1 = L45_2
            L45_2 = dbg
            L45_2 = L45_2.debug
            L46_2 = "ObjectPlacer: Fail ground"
            L45_2(L46_2)
            L45_2 = A3_2
            L46_2 = ObjectPlacer
            L46_2 = L46_2.PROP_PLACE_FAIL_GROUND
            L45_2(L46_2)
          end
        elseif A3_2 then
          L45_2 = false
          L0_1 = L45_2
          L45_2 = dbg
          L45_2 = L45_2.debug
          L46_2 = "ObjectPlacer: Fail other"
          L45_2(L46_2)
          L45_2 = A3_2
          L46_2 = ObjectPlacer
          L46_2 = L46_2.PROP_PLACE_FAIL_OTHER
          L45_2(L46_2)
        end
      end
    end
    L44_2 = DisableControlAction
    L45_2 = 0
    L46_2 = 74
    L47_2 = true
    L44_2(L45_2, L46_2, L47_2)
    L44_2 = IsDisabledControlJustPressed
    L45_2 = 0
    L46_2 = 74
    L44_2 = L44_2(L45_2, L46_2)
    if L44_2 then
      L44_2 = ClearPedTasks
      L45_2 = L8_2
      L44_2(L45_2)
      L20_2 = false
      L44_2 = UI
      L44_2 = L44_2.HelpKeys
      L45_2 = nil
      L46_2 = false
      L44_2(L45_2, L46_2)
      if A2_2 then
        L44_2 = false
        L0_1 = L44_2
        L44_2 = A2_2
        L44_2()
      end
      L44_2 = SetEntityDrawOutline
      L45_2 = L10_2
      L46_2 = false
      L44_2(L45_2, L46_2)
      L44_2 = DeleteObject
      L45_2 = L10_2
      L44_2(L45_2)
    end
    L44_2 = SetEntityAlpha
    L45_2 = L10_2
    L46_2 = 180
    L47_2 = false
    L44_2(L45_2, L46_2, L47_2)
    L44_2 = L3_1
    L45_2 = L13_2
    L44_2 = L44_2(L45_2)
    L13_2 = L44_2
    L44_2 = Wait
    L45_2 = 0
    L44_2(L45_2)
  end
  L25_2 = ObjectPlacer
  L25_2.IsPlacing = false
  L25_2 = SetEntityDrawOutline
  L26_2 = L10_2
  L27_2 = false
  L25_2(L26_2, L27_2)
  L25_2 = UI
  L25_2 = L25_2.HelpKeys
  L26_2 = nil
  L27_2 = false
  L25_2(L26_2, L27_2)
  L25_2 = DeleteObject
  L26_2 = L10_2
  L25_2(L26_2)
  L25_2 = false
  L0_1 = L25_2
end
L5_1.startPlace = L6_1
L5_1 = ObjectPlacer
function L6_1()
  local L0_2, L1_2
  L0_2 = ObjectPlacer
  L0_2 = L0_2.IsPlacing
  return L0_2
end
L5_1.isPlacing = L6_1
