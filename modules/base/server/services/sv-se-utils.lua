local L0_1, L1_1
L0_1 = {}
UtilsService = L0_1
L0_1 = UtilsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2.preset
  L2_2 = Maps
  L2_2 = L2_2[L1_2]
  if L2_2 then
    L3_2 = L2_2.Jobs
    return L3_2
  else
    L3_2 = nil
    return L3_2
  end
end
L0_1.GetZoneJob = L1_1
L0_1 = UtilsService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    L2_2 = false
    return L2_2
  end
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.preset
  L3_2 = A1_2.index
  L4_2 = Maps
  L4_2 = L4_2[L2_2]
  if L4_2 then
    L5_2 = next
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L4_2.Zones
      L5_2 = L5_2[L3_2]
      if L5_2 then
        L6_2 = L5_2.coords
        L7_2 = UtilsService
        L7_2 = L7_2.GetPlayerPos
        L8_2 = A0_2
        L7_2 = L7_2(L8_2)
        L8_2 = L7_2 - L6_2
        L8_2 = #L8_2
        L9_2 = L8_2 <= 5.0
        L10_2 = L6_2
        return L9_2, L10_2
      end
    end
  end
end
L0_1.IsPlayerAtInteract = L1_1
L0_1 = UtilsService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A1_2 then
    L2_2 = false
    return L2_2
  end
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = A1_2.preset
  L3_2 = A1_2.index
  L4_2 = A1_2.spawnPointId
  L5_2 = Maps
  L5_2 = L5_2[L2_2]
  if L5_2 then
    L6_2 = next
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L5_2.Zones
      L6_2 = L6_2[L3_2]
      if L6_2 then
        L7_2 = L6_2.points
        L7_2 = L7_2[L4_2]
        if L7_2 then
          L8_2 = L7_2.coords
          L9_2 = UtilsService
          L9_2 = L9_2.GetPlayerPos
          L10_2 = A0_2
          L9_2 = L9_2(L10_2)
          L10_2 = L9_2 - L8_2
          L10_2 = #L10_2
          L10_2 = L10_2 <= 5.0
          return L10_2
        end
      end
    end
  end
end
L0_1.IsPlayerAtGarage = L1_1
L0_1 = UtilsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  if not A0_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = GetPlayerPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  return L2_2
end
L0_1.GetPlayerPos = L1_1
