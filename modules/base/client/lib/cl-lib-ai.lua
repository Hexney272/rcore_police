local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if not A0_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.Area
  L1_2 = L1_2.Enable
  if not L1_2 then
    return
  end
  L1_2 = A0_2
  L2_2 = 300
  L3_2 = 300
  L4_2 = SetAllVehicleGeneratorsActiveInArea
  L5_2 = L1_2.x
  L5_2 = L5_2 - L2_2
  L6_2 = L1_2.y
  L6_2 = L6_2 - L2_2
  L7_2 = L1_2.z
  L7_2 = L7_2 - L3_2
  L8_2 = L1_2.x
  L8_2 = L8_2 + L2_2
  L9_2 = L1_2.y
  L9_2 = L9_2 + L2_2
  L10_2 = L1_2.z
  L10_2 = L10_2 + L3_2
  L11_2 = false
  L12_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = SetPedNonCreationArea
  L5_2 = L1_2.x
  L5_2 = L5_2 - L2_2
  L6_2 = L1_2.y
  L6_2 = L6_2 - L2_2
  L7_2 = L1_2.z
  L7_2 = L7_2 - L3_2
  L8_2 = L1_2.x
  L8_2 = L8_2 + L2_2
  L9_2 = L1_2.y
  L9_2 = L9_2 + L2_2
  L10_2 = L1_2.z
  L10_2 = L10_2 + L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L4_2 = AddScenarioBlockingArea
  L5_2 = L1_2.x
  L5_2 = L5_2 - L2_2
  L6_2 = L1_2.y
  L6_2 = L6_2 - L2_2
  L7_2 = L1_2.z
  L7_2 = L7_2 - L3_2
  L8_2 = L1_2.x
  L8_2 = L8_2 + L2_2
  L9_2 = L1_2.y
  L9_2 = L9_2 + L2_2
  L10_2 = L1_2.z
  L10_2 = L10_2 + L3_2
  L11_2 = false
  L12_2 = true
  L13_2 = true
  L14_2 = true
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L5_2 = {}
  L6_2 = "s_m_y_prisoner_01"
  L7_2 = "s_m_y_primuscl_01,"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L6_2 = {}
  L7_2 = "police"
  L8_2 = "policeb"
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = 1
  L8_2 = #L5_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L5_2[L10_2]
    L12_2 = IsModelAPed
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = SetPedModelIsSuppressed
      L13_2 = L11_2
      L14_2 = true
      L12_2(L13_2, L14_2)
    end
  end
  L7_2 = 1
  L8_2 = #L6_2
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = L6_2[L10_2]
    L12_2 = IsModelAVehicle
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = SetVehicleModelIsSuppressed
      L13_2 = L11_2
      L14_2 = true
      L12_2(L13_2, L14_2)
    end
  end
end
BlockEnviroment = L0_1
