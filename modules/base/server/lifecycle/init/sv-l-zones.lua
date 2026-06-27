local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
ValidMapData = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = nil
L3_1 = true
L4_1 = CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
          L3_1 = L9_2
        end
      else
        L9_2 = {}
        L9_2.mapName = L4_2
        L9_2.mapLocation = L6_2
        L9_2.mapState = "LOADED"
        L2_1 = L9_2
      end
      if "LOADED" == L8_2 then
        L9_2 = L1_1
        L9_2 = L9_2[L6_2]
        if L9_2 then
          L9_2 = L1_1
          L9_2 = L9_2[L6_2]
          L9_2 = L9_2.mapState
        end
        if "UNLOADED" == L9_2 then
          L9_2 = L1_1
          L10_2 = {}
          L10_2.mapName = L4_2
          L10_2.mapLocation = L6_2
          L10_2.mapState = L8_2
          L9_2[L6_2] = L10_2
        end
      elseif "UNLOADED" == L8_2 then
        L9_2 = L1_1
        L9_2 = L9_2[L6_2]
        if not L9_2 then
          L9_2 = L1_1
          L10_2 = {}
          L10_2.mapName = L4_2
          L10_2.mapLocation = L6_2
          L10_2.mapState = L8_2
          L9_2[L6_2] = L10_2
        end
      end
    end
  end
  L0_2 = L3_1
  if L0_2 then
    L0_2 = L2_1
    if L0_2 then
      L1_2 = L2_1.mapLocation
      L0_2 = L1_1
      L2_2 = L2_1
      L0_2[L1_2] = L2_2
    end
  end
  L0_2 = pairs
  L1_2 = L1_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L0_1
    L6_2 = #L6_2
    L7_2 = L6_2 + 1
    L6_2 = L0_1
    L6_2[L7_2] = L5_2
  end
  L0_2 = table
  L0_2 = L0_2.sort
  L1_2 = L0_1
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.mapLocation
    L3_3 = A1_3.mapLocation
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L0_2(L1_2, L2_2)
  L0_2 = L0_1
  if L0_2 then
    L0_2 = next
    L1_2 = L0_1
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = pairs
      L1_2 = L0_1
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L5_2.mapName
        L7_2 = L5_2.mapState
        L8_2 = Maps
        L8_2 = L8_2[L6_2]
        if L8_2 and "LOADED" == L7_2 then
          L8_2 = Maps
          L8_2 = L8_2[L6_2]
          L9_2 = ValidMapData
          L10_2 = {}
          L11_2 = L8_2.Resource
          L10_2.resource = L11_2
          L11_2 = L8_2.MapLocation
          L10_2.location = L11_2
          L9_2[L6_2] = L10_2
          L9_2 = L8_2.Zones
          L10_2 = L8_2.Jobs
          L11_2 = L8_2.Pos
          if L9_2 then
            L12_2 = next
            L13_2 = L9_2
            L12_2 = L12_2(L13_2)
            if L12_2 then
              L12_2 = DefineZones
              L13_2 = L9_2
              L14_2 = L6_2
              L15_2 = L10_2
              L12_2(L13_2, L14_2, L15_2)
            end
          end
        end
      end
    end
  end
end
L4_1(L5_1)
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.type
    L10_2 = L8_2.coords
  end
end
DefineZones = L4_1
