local L0_1, L1_1
L0_1 = {}
GarageService = L0_1
L0_1 = GarageService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = Object
  L3_2 = L3_2.getStorage
  L4_2 = STORAGE_GARAGE
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = dbg
  L4_2 = L4_2.debug
  L5_2 = "Adding OrderedVehicles for job: %s with amount %s by user: %s"
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = GetPlayerName
  L9_2 = A2_2
  L8_2, L9_2 = L8_2(L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = L3_2.addVehicleCount
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1.OrderedVehicles = L1_1
L0_1 = GarageService
function L1_1()
  local L0_2, L1_2
  L0_2 = Object
  L0_2 = L0_2.getStorage
  L1_2 = STORAGE_GARAGE
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L1_2 = L0_2.registerStorage
  L1_2()
end
L0_1.RegisterInitGroups = L1_1
L0_1 = GarageService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GARAGE
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.addVehicleCount
  L3_2 = A0_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
end
L0_1.ReturnedVehicle = L1_1
L0_1 = GarageService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GARAGE
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.getVehicleCount
  L3_2 = A0_2
  return L2_2(L3_2)
end
L0_1.GetStockCount = L1_1
L0_1 = GarageService
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = Object
  L4_2 = L4_2.getStorage
  L5_2 = STORAGE_GARAGE
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L5_2 = L4_2.getVehicleCount
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L5_2 and L5_2 > 0 then
    L6_2 = dbg
    L6_2 = L6_2.debug
    L7_2 = "Requested vehicles from department garage, found enough vehicles!"
    L6_2(L7_2)
    L6_2 = L4_2.removeVehicleCount
    L7_2 = A1_2
    L8_2 = 1
    L6_2(L7_2, L8_2)
    L6_2 = spawnVehicleSessions
    L6_2 = L6_2[A0_2]
    L7_2 = PAYMENT_METHODS
    L7_2 = L7_2.COMPANY
    L6_2.paymentMethod = L7_2
    L6_2 = StartClient
    L7_2 = A0_2
    L8_2 = "spawnVehicle"
    L9_2 = A3_2
    L10_2 = A2_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = Framework
    L6_2 = L6_2.sendNotification
    L7_2 = A0_2
    L8_2 = _U
    L9_2 = "GARAGE.GARAGE_REQUEST_VEH_SUCC"
    L8_2 = L8_2(L9_2)
    L9_2 = "success"
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = dbg
    L6_2 = L6_2.debug
    L7_2 = "Requested vehicles from department garage failed, not enough vehicles"
    L6_2(L7_2)
    L6_2 = Framework
    L6_2 = L6_2.sendNotification
    L7_2 = A0_2
    L8_2 = _U
    L9_2 = "GARAGE.GARAGE_REQUEST_VEH_FAILURE"
    L8_2 = L8_2(L9_2)
    L9_2 = "error"
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.RequestVehicleFromGarage = L1_1
