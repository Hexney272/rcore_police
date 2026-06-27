local L0_1, L1_1
L0_1 = {}
Garage = L0_1
L0_1 = Garage
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    return
  end
  if not A1_2 then
    A1_2 = "police"
  end
  L2_2 = IsModelAVehicle
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = "Model is not vehicle, not spawning vehicle"
    return L2_2(L3_2)
  end
  L2_2 = UtilsService
  L2_2 = L2_2.LoadModel
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = CreateVehicle
  L3_2 = A1_2
  L4_2 = A0_2.x
  L5_2 = A0_2.y
  L6_2 = A0_2.z
  L7_2 = A0_2.w
  L8_2 = true
  L9_2 = false
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = SetVehicleOnGroundProperly
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = SetModelAsNoLongerNeeded
    L4_2 = A1_2
    L3_2(L4_2)
    L3_2 = SetPedIntoVehicle
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = L2_2
    L6_2 = -1
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = UI
    L3_2 = L3_2.HelpKeys
    L4_2 = nil
    L5_2 = false
    L3_2(L4_2, L5_2)
    GlobalZoneId = nil
    L3_2 = L2_2
    L4_2 = VehToNet
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    return L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  else
    L3_2 = dbg
    L3_2 = L3_2.critical
    L4_2 = "Failed to spawn vehicle."
    L3_2(L4_2)
    L3_2 = nil
    return L3_2
  end
end
L0_1.SpawnVehicle = L1_1
L0_1 = Garage
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = "unk"
  L4_2 = GetClosestVehicle
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L8_2 = A1_2 or L8_2
  if not A1_2 or not A1_2 then
    L8_2 = 2.0
  end
  L9_2 = 0
  L10_2 = 7
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  if 0 ~= L4_2 then
    L2_2 = true
    L3_2 = "found_vehicle"
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1.GetClosestVehicleToPlayer = L1_1
L0_1 = Garage
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2.preset
  L3_2 = A0_2.index
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
        L6_2 = L5_2.points
        L7_2 = pairs
        L8_2 = L6_2
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
          L13_2 = L12_2.coords
          L14_2 = L12_2.heading
          L15_2 = Garage
          L15_2 = L15_2.GetClosestVehicleToPlayer
          L16_2 = L13_2
          L17_2 = 1.5
          L15_2 = L15_2(L16_2, L17_2)
          if not L15_2 then
            L15_2 = A1_2
            L16_2 = vec4
            L17_2 = L13_2.x
            L18_2 = L13_2.y
            L19_2 = L13_2.z
            L20_2 = L14_2
            L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
            L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
            return
          end
        end
      end
    end
  end
  L5_2 = A1_2
  L6_2 = nil
  L5_2(L6_2)
end
L0_1.GetFreeSpawnPoint = L1_1
