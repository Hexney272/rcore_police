local L0_1, L1_1, L2_1
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "handleVehicleTask"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L4_2 = DoesEntityExist
    L5_2 = A2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      return
    end
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "handleVehicleTask named %s -> for vehicle %s"
    L6_2 = A1_2
    L7_2 = GetEntityArchetypeName
    L8_2 = A2_2
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = MENU_ACTIONS
    L4_2 = L4_2.IMPOUND_VEHICLE
    if A1_2 == L4_2 then
      L4_2 = ImpoundVehicle
      L5_2 = A2_2
      L6_2 = A3_2.owned
      L7_2 = A3_2.netId
      L4_2(L5_2, L6_2, L7_2)
    else
      L4_2 = MENU_ACTIONS
      L4_2 = L4_2.SHOW_VEHICLE_INFORMATION
      if A1_2 == L4_2 then
        L4_2 = ShowVehicleInformation
        L5_2 = A2_2
        L6_2 = A3_2
        L4_2(L5_2, L6_2)
      else
        L4_2 = MENU_ACTIONS
        L4_2 = L4_2.UNLOCK_VEHICLE
        if A1_2 == L4_2 then
          L4_2 = UnlockVehicle
          L5_2 = A2_2
          L6_2 = A3_2
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end
L0_1(L1_1, L2_1)
