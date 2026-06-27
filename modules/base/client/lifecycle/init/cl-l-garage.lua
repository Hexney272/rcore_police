local L0_1, L1_1, L2_1
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "checkDepartmentGarageSpawnPoint"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A0_2 then
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "TrySpawnVehicle: Checking for free parking space, to retrieve vehicle from garage!"
    L4_2(L5_2)
    L4_2 = Garage
    L4_2 = L4_2.GetFreeSpawnPoint
    L5_2 = A1_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      if A0_3 then
        L1_3 = Config
        L1_3 = L1_3.Garage
        L1_3 = L1_3.NeedsToBuyVehiclesInGarages
        if L1_3 then
          L1_3 = TriggerServerEvent
          L2_3 = "rcore_police:server:requestVehicleFromStorage"
          L3_3 = {}
          L3_3.coords = A0_3
          L4_3 = A2_2
          L3_3.model = L4_3
          L1_3(L2_3, L3_3)
          return
        end
        L1_3 = Config
        L1_3 = L1_3.Garage
        L1_3 = L1_3.DepartmentsEnableBuyVehicles
        if L1_3 then
          L1_3 = _U
          L2_3 = "GARAGE.PAYDIALOG_TITLE"
          L3_3 = A3_2
          L1_3 = L1_3(L2_3, L3_3)
          L2_3 = _U
          L3_3 = "GARAGE.PAYDIALOG_DESC"
          L2_3 = L2_3(L3_3)
          L3_3 = UI
          L3_3 = L3_3.PayDialog
          L4_3 = {}
          L4_3.title = L1_3
          L4_3.desc = L2_3
          L3_3 = L3_3(L4_3)
          if L3_3 then
            L4_3 = L3_3.action
            if L4_3 then
              L5_3 = TriggerServerEvent
              L6_3 = "rcore_police:server:requestBuyDepartmentVehicle"
              L7_3 = {}
              L7_3.paymentMethod = L4_3
              L7_3.coords = A0_3
              L8_3 = A2_2
              L7_3.model = L8_3
              L5_3(L6_3, L7_3)
            else
              L5_3 = TriggerServerEvent
              L6_3 = "rcore_police:server:unregisterVehicleSession"
              L5_3(L6_3)
            end
          end
        else
          L1_3 = HandleSpawnVehicle
          L2_3 = A0_3
          L3_3 = A2_2
          L1_3(L2_3, L3_3)
        end
      else
        L1_3 = dbg
        L1_3 = L1_3.debug
        L2_3 = "TrySpawnVehicle: Failed to find any free parking space!"
        L1_3(L2_3)
        L1_3 = Framework
        L1_3 = L1_3.sendNotification
        L2_3 = _U
        L3_3 = "GARAGE.NOT_FREE_PARKING_SPACE"
        L2_3 = L2_3(L3_3)
        L3_3 = "error"
        L1_3(L2_3, L3_3)
        L1_3 = TriggerServerEvent
        L2_3 = "rcore_police:server:unregisterVehicleSession"
        L1_3(L2_3)
      end
    end
    L4_2(L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "spawnVehicle"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = HandleSpawnVehicle
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
