local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = 1
L1_1 = {}
L2_1 = {}
function L3_1()
  local L0_2, L1_2
  L0_2 = L0_1
  L0_2 = L0_2 + 1
  L0_1 = L0_2
  L0_2 = "rcore_police_target_"
  L1_2 = L0_1
  L0_2 = L0_2 .. L1_2
  return L0_2
end
L4_1 = {}
L4_1.NO_TARGET = 0
L4_1.Q_TARGET = 1
L4_1.BT_TARGET = 2
L4_1.QB_TARGET = 3
L4_1.OX_TARGET = 4
TargetType = L4_1
L4_1 = {}
L5_1 = TargetType
L5_1 = L5_1.NO_TARGET
L4_1[L5_1] = "none"
L5_1 = TargetType
L5_1 = L5_1.Q_TARGET
L4_1[L5_1] = "qtarget"
L5_1 = TargetType
L5_1 = L5_1.BT_TARGET
L4_1[L5_1] = "bt-target"
L5_1 = TargetType
L5_1 = L5_1.QB_TARGET
L4_1[L5_1] = "qb-target"
L5_1 = TargetType
L5_1 = L5_1.OX_TARGET
L4_1[L5_1] = "ox_target"
TargetTypeResourceName = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L5_2 = L3_1
  L5_2 = L5_2()
  L6_2 = Config
  L6_2 = L6_2.InteractionsTarget
  L7_2 = InteractionsTarget
  L7_2 = L7_2.OX
  if L6_2 ~= L7_2 then
    L6_2 = isResourcePresentProvideless
    L7_2 = "crm-target"
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      goto lbl_51
    end
  end
  L6_2 = vector3
  L7_2 = A0_2.x
  L8_2 = A0_2.y
  L9_2 = A0_2.z
  L9_2 = L9_2 - 0.5
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A0_2 = L6_2
  L6_2 = exports
  L6_2 = L6_2.ox_target
  L7_2 = L6_2
  L6_2 = L6_2.addBoxZone
  L8_2 = {}
  L8_2.name = L5_2
  L8_2.coords = A0_2
  L9_2 = vector3
  L10_2 = A2_2
  L11_2 = A1_2
  L12_2 = 2.0
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L8_2.size = L9_2
  L8_2.rotation = A3_2
  L8_2.debug = false
  L9_2 = A0_2.z
  L9_2 = L9_2 - A1_2
  L8_2.minZ = L9_2
  L9_2 = A0_2.z
  L9_2 = L9_2 + A1_2
  L8_2.maxZ = L9_2
  L8_2.options = A4_2
  L8_2.distance = 5.0
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L2_1
  L7_2[L6_2] = true
  goto lbl_90
  ::lbl_51::
  L6_2 = Config
  L6_2 = L6_2.InteractionsTarget
  L7_2 = InteractionsTarget
  L7_2 = L7_2.QB
  if L6_2 == L7_2 then
    L6_2 = {}
    L6_2.options = A4_2
    L7_2 = A4_2.distance
    if not L7_2 then
      L7_2 = 5.0
    end
    L6_2.distance = L7_2
    L6_2.heading = A3_2
    L7_2 = exports
    L8_2 = InteractionsTarget
    L8_2 = L8_2.QB
    L7_2 = L7_2[L8_2]
    L8_2 = L7_2
    L7_2 = L7_2.AddBoxZone
    L9_2 = L5_2
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = {}
    L13_2.name = L5_2
    L13_2.heading = A3_2
    L13_2.debugPoly = false
    L14_2 = A0_2.z
    L14_2 = L14_2 - A1_2
    L13_2.minZ = L14_2
    L14_2 = A0_2.z
    L14_2 = L14_2 + A1_2
    L13_2.maxZ = L14_2
    L14_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  ::lbl_90::
end
CreateTargetZone = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = GetHashKey
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  L2_2 = L1_1
  L2_2[A0_2] = true
  L2_2 = Config
  L2_2 = L2_2.InteractionsTarget
  L3_2 = InteractionsTarget
  L3_2 = L3_2.OX
  if L2_2 ~= L3_2 then
    L2_2 = isResourcePresentProvideless
    L3_2 = "crm-target"
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      goto lbl_30
    end
  end
  L2_2 = exports
  L2_2 = L2_2.ox_target
  L3_2 = L2_2
  L2_2 = L2_2.addModel
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  goto lbl_52
  ::lbl_30::
  L2_2 = Config
  L2_2 = L2_2.InteractionsTarget
  L3_2 = InteractionsTarget
  L3_2 = L3_2.QB
  if L2_2 == L3_2 then
    L2_2 = {}
    L2_2.options = A1_2
    L3_2 = A1_2.distance
    if not L3_2 then
      L3_2 = 5.0
    end
    L2_2.distance = L3_2
    L3_2 = exports
    L4_2 = InteractionsTarget
    L4_2 = L4_2.QB
    L3_2 = L3_2[L4_2]
    L4_2 = L3_2
    L3_2 = L3_2.AddTargetModel
    L5_2 = A0_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  ::lbl_52::
end
CreateTargetModel = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Config
  L0_2 = L0_2.InteractionsTarget
  L1_2 = InteractionsTarget
  L1_2 = L1_2.OX
  if L0_2 ~= L1_2 then
    L0_2 = isResourcePresentProvideless
    L1_2 = "crm-target"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      goto lbl_37
    end
  end
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = exports
    L6_2 = L6_2.ox_target
    L7_2 = L6_2
    L6_2 = L6_2.removeModel
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L0_2 = pairs
  L1_2 = L2_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = exports
    L6_2 = L6_2.ox_target
    L7_2 = L6_2
    L6_2 = L6_2.removeZone
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  goto lbl_77
  ::lbl_37::
  L0_2 = Config
  L0_2 = L0_2.InteractionsTarget
  L1_2 = InteractionsTarget
  L1_2 = L1_2.QB
  if L0_2 == L1_2 then
    L0_2 = 1
    L1_2 = L0_1
    L2_2 = 1
    for L3_2 = L0_2, L1_2, L2_2 do
      L4_2 = exports
      L5_2 = InteractionsTarget
      L5_2 = L5_2.QB
      L4_2 = L4_2[L5_2]
      L5_2 = L4_2
      L4_2 = L4_2.RemoveZone
      L6_2 = "rcore_police_target_"
      L7_2 = L3_2
      L6_2 = L6_2 .. L7_2
      L4_2(L5_2, L6_2)
    end
    L0_2 = Config
    L0_2 = L0_2.TargetZoneType
    L1_2 = InteractionsTarget
    L1_2 = L1_2.NONE
    if L0_2 ~= L1_2 then
      L0_2 = pairs
      L1_2 = L1_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = exports
        L7_2 = InteractionsTarget
        L7_2 = L7_2.QB
        L6_2 = L6_2[L7_2]
        L7_2 = L6_2
        L6_2 = L6_2.RemoveTargetModel
        L8_2 = L4_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  ::lbl_77::
  L0_2 = {}
  L1_1 = L0_2
  L0_2 = {}
  L2_1 = L0_2
end
RemoveAllTargetZones = L4_1
