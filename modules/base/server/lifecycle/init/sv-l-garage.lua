local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = AddEventHandler
L2_1 = "rcore_police:server:databaseReady"
function L3_1()
  local L0_2, L1_2
  L0_2 = Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = GarageService
  L0_2 = L0_2.RegisterInitGroups
  L0_2()
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:unregisterVehicleSession"
function L3_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = spawnVehicleSessions
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = spawnVehicleSessions
    L1_2[L0_2] = nil
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:registerVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = spawnVehicleSessions
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.getJob
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.name
  end
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = L0_1
    L5_2 = {}
    L6_2 = spawnVehicleSessions
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.paymentMethod
    L5_2.paymentMethod = L6_2
    L6_2 = spawnVehicleSessions
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.zoneOwner
    L5_2.owner = L6_2
    L5_2.netId = A0_2
    L6_2 = spawnVehicleSessions
    L6_2 = L6_2[L1_2]
    L6_2 = L6_2.spawnCost
    L5_2.spawnCost = L6_2
    L4_2[A0_2] = L5_2
    L4_2 = spawnVehicleSessions
    L5_2 = {}
    L4_2[L1_2] = L5_2
    L4_2 = Framework
    L4_2 = L4_2.getCharacterShortName
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = Utils
    L5_2 = L5_2.Log
    L6_2 = "Garage"
    L7_2 = "Player named %s (%s) pickup vehicle from garage with spawnPrice: %s"
    L8_2 = L7_2
    L7_2 = L7_2.format
    L9_2 = L4_2
    L10_2 = L1_2
    L11_2 = L0_1
    L11_2 = L11_2[A0_2]
    L11_2 = L11_2.spawnCost
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
  L4_2 = TriggerEvent
  L5_2 = "rcore_police:server:garage:spawnedVehicle"
  L6_2 = A0_2
  L7_2 = L1_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestBuyGarageVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.group
  end
  if not A0_2 then
    return
  end
  L5_2 = Config
  L5_2 = L5_2.Garage
  L5_2 = L5_2.DepartmentsEnableBuyVehicles
  if not L5_2 then
    return
  end
  L5_2 = SocietyService
  L5_2 = L5_2.GetAccount
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = Config
  L6_2 = L6_2.Garage
  L6_2 = L6_2.PricePerVehicleOrder
  L6_2 = L6_2 * A0_2
  if L5_2 then
    L7_2 = next
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = L5_2.GetBalance
      L7_2 = L7_2()
      if L7_2 and L6_2 <= L7_2 then
        L8_2 = L5_2.RemoveMoney
        L9_2 = L6_2
        L8_2(L9_2)
        L8_2 = print
        L9_2 = L4_2
        L10_2 = A0_2
        L11_2 = L1_2
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = GarageService
        L8_2 = L8_2.OrderedVehicles
        L9_2 = L4_2
        L10_2 = A0_2
        L11_2 = L1_2
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = Framework
        L8_2 = L8_2.sendNotification
        L9_2 = L1_2
        L10_2 = _U
        L11_2 = "GARAGE.GARAGE_ORDER_VEHICLE_SUCC"
        L12_2 = A0_2
        L13_2 = L6_2
        L14_2 = _U
        L15_2 = "CURRENCY_SYMBOL"
        L14_2, L15_2 = L14_2(L15_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = "success"
        L8_2(L9_2, L10_2, L11_2)
      else
        L8_2 = Framework
        L8_2 = L8_2.sendNotification
        L9_2 = L1_2
        L10_2 = _U
        L11_2 = "GARAGE.GARAGE_ORDER_VEHICLE_FAIL"
        L12_2 = L6_2
        L13_2 = _U
        L14_2 = "CURRENCY_SYMBOL"
        L13_2, L14_2, L15_2 = L13_2(L14_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L11_2 = "error"
        L8_2(L9_2, L10_2, L11_2)
      end
  end
  else
    L7_2 = dbg
    L7_2 = L7_2.critical
    L8_2 = "Failed to find society account when buying garage vehicles."
    L7_2(L8_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestVehicleFromStorage"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  if not A0_2 then
    return
  end
  L2_2 = spawnVehicleSessions
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.group
  end
  L5_2 = GarageService
  L5_2 = L5_2.RequestVehicleFromGarage
  L6_2 = L1_2
  L7_2 = L4_2
  L8_2 = A0_2.model
  L9_2 = A0_2.coords
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestBuyDepartmentVehicle"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  if not A0_2 then
    return
  end
  L2_2 = spawnVehicleSessions
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    return
  end
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.group
  end
  L5_2 = A0_2.paymentMethod
  L6_2 = L5_2
  L5_2 = L5_2.upper
  L5_2 = L5_2(L6_2)
  L6_2 = spawnVehicleSessions
  L6_2 = L6_2[L1_2]
  L6_2 = L6_2.spawnCost
  L7_2 = PAYMENT_METHODS
  L7_2 = L7_2.COMPANY
  if L5_2 == L7_2 then
    L7_2 = pcall
    function L8_2()
      local L0_3, L1_3, L2_3
      L0_3 = SocietyService
      L0_3 = L0_3.BuyDepartmentVehicle
      L1_3 = {}
      L2_3 = L4_2
      L1_3.department = L2_3
      L2_3 = L6_2
      L1_3.spawnPrice = L2_3
      function L2_3(A0_4, A1_4)
        local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
        if A0_4 then
          L2_4 = spawnVehicleSessions
          L3_4 = L1_2
          L2_4 = L2_4[L3_4]
          L3_4 = L5_2
          L2_4.paymentMethod = L3_4
          L2_4 = StartClient
          L3_4 = L1_2
          L4_4 = "spawnVehicle"
          L5_4 = A0_2.coords
          L6_4 = A0_2.model
          L2_4(L3_4, L4_4, L5_4, L6_4)
          L2_4 = Framework
          L2_4 = L2_4.sendNotification
          L3_4 = L1_2
          L4_4 = _U
          L5_4 = "GARAGE.VEHICLE_BOUGHT"
          L6_4 = A1_4
          L7_4 = _U
          L8_4 = "CURRENCY_SYMBOL"
          L7_4, L8_4 = L7_4(L8_4)
          L4_4, L5_4, L6_4, L7_4, L8_4 = L4_4(L5_4, L6_4, L7_4, L8_4)
          L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
        else
          L2_4 = spawnVehicleSessions
          L3_4 = L1_2
          L2_4[L3_4] = nil
          L2_4 = Framework
          L2_4 = L2_4.sendNotification
          L3_4 = L1_2
          L4_4 = _U
          L5_4 = "GARAGE.NOT_ENOUGH_MONEY_IN_SOCIETY_TO_GET_VEHICLE"
          L6_4 = A1_4
          L7_4 = _U
          L8_4 = "CURRENCY_SYMBOL"
          L7_4, L8_4 = L7_4(L8_4)
          L4_4 = L4_4(L5_4, L6_4, L7_4, L8_4)
          L5_4 = "error"
          L2_4(L3_4, L4_4, L5_4)
        end
      end
      L0_3(L1_3, L2_3)
    end
    L7_2, L8_2 = L7_2(L8_2)
    if not L7_2 then
      L9_2 = print
      L10_2 = "An error occurred during the Society.BuyDepartmentVehicle: "
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  else
    L7_2 = PAYMENT_METHODS
    L7_2 = L7_2.BANK
    if L5_2 == L7_2 then
      L7_2 = pcall
      function L8_2()
        local L0_3, L1_3, L2_3
        L0_3 = Framework
        L0_3 = L0_3.HandleGarageBankTransaction
        L1_3 = {}
        L2_3 = L1_2
        L1_3.playerId = L2_3
        L2_3 = BANK_TRANSACTION_TYPES
        L2_3 = L2_3.REMOVE
        L1_3.transactionType = L2_3
        L2_3 = L6_2
        L1_3.spawnPrice = L2_3
        function L2_3(A0_4, A1_4)
          local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
          if A0_4 then
            L2_4 = spawnVehicleSessions
            L3_4 = L1_2
            L2_4 = L2_4[L3_4]
            L3_4 = L5_2
            L2_4.paymentMethod = L3_4
            L2_4 = StartClient
            L3_4 = L1_2
            L4_4 = "spawnVehicle"
            L5_4 = A0_2.coords
            L6_4 = A0_2.model
            L2_4(L3_4, L4_4, L5_4, L6_4)
            L2_4 = Framework
            L2_4 = L2_4.sendNotification
            L3_4 = L1_2
            L4_4 = _U
            L5_4 = "GARAGE.VEHICLE_BOUGHT"
            L6_4 = A1_4
            L7_4 = _U
            L8_4 = "CURRENCY_SYMBOL"
            L7_4, L8_4 = L7_4(L8_4)
            L4_4, L5_4, L6_4, L7_4, L8_4 = L4_4(L5_4, L6_4, L7_4, L8_4)
            L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4)
          else
            L2_4 = spawnVehicleSessions
            L3_4 = L1_2
            L2_4[L3_4] = nil
            L2_4 = Framework
            L2_4 = L2_4.sendNotification
            L3_4 = L1_2
            L4_4 = _U
            L5_4 = "GARAGE.NOT_ENOUGH_MONEY_IN_BANK_TO_GET_VEHICLE"
            L6_4 = A1_4
            L7_4 = _U
            L8_4 = "CURRENCY_SYMBOL"
            L7_4, L8_4 = L7_4(L8_4)
            L4_4 = L4_4(L5_4, L6_4, L7_4, L8_4)
            L5_4 = "error"
            L2_4(L3_4, L4_4, L5_4)
          end
        end
        L0_3(L1_3, L2_3)
      end
      L7_2, L8_2 = L7_2(L8_2)
      if not L7_2 then
        L9_2 = print
        L10_2 = "An error occurred during the bank transaction: "
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestParkingSpace"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = source
  if not A0_2 then
    return
  end
  L2_2 = A0_2.zone
  L3_2 = A0_2.model
  L4_2 = A0_2.label
  L5_2 = A0_2.price
  if not L5_2 then
    L5_2 = 150
  end
  L6_2 = UtilsService
  L6_2 = L6_2.IsPlayerAtInteract
  L7_2 = L1_2
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    L6_2 = dbg
    L6_2 = L6_2.debug
    L7_2 = "Failed spawn vehicle for player named %s with playerId (%s), player not at request zone area."
    L8_2 = GetPlayerName
    L9_2 = L1_2
    L8_2 = L8_2(L9_2)
    L9_2 = L1_2
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = GroupsService
  L6_2 = L6_2.IsPlayerMemberOfGroup
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    L6_2 = dbg
    L6_2 = L6_2.debug
    L7_2 = "Failed spawn vehicle for player named %s with playerId (%s), player is not part of department."
    L8_2 = GetPlayerName
    L9_2 = L1_2
    L8_2 = L8_2(L9_2)
    L9_2 = L1_2
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = UtilsService
  L6_2 = L6_2.GetZoneJob
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L7_2 = nil
  L8_2 = type
  L9_2 = L6_2
  L8_2 = L8_2(L9_2)
  if "table" == L8_2 then
    L8_2 = pairs
    L9_2 = L6_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      if L7_2 then
        L14_2 = L7_2.name
        if L14_2 == L13_2 then
          L7_2 = L13_2
        end
      end
    end
  elseif L7_2 then
    L8_2 = L7_2.name
    if L8_2 == L6_2 then
      L7_2 = L7_2.name
    end
  end
  L8_2 = spawnVehicleSessions
  L9_2 = {}
  L9_2.zoneOwner = L7_2
  L9_2.spawnCost = L5_2
  L8_2[L1_2] = L9_2
  L8_2 = StartClient
  L9_2 = L1_2
  L10_2 = "checkDepartmentGarageSpawnPoint"
  L11_2 = L2_2
  L12_2 = L3_2
  L13_2 = L4_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "rcore_police:server:requestStoreVehicle"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  if not A0_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = L2_2
    L5_2 = _U
    L6_2 = "GARAGE.NOT_DEPARTMENT_VEHICLE"
    L5_2 = L5_2(L6_2)
    L6_2 = "error"
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = NetworkGetEntityFromNetworkId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = UtilsService
  L4_2 = L4_2.IsPlayerAtGarage
  L5_2 = L2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Failed to store vehicle, player is not close to garage."
    return L4_2(L5_2)
  end
  L4_2 = Framework
  L4_2 = L4_2.getJob
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = L4_2.name
    if L5_2 then
      L5_2 = GarageService
      L5_2 = L5_2.ReturnedVehicle
      L6_2 = L4_2.name
      L7_2 = L6_2
      L6_2 = L6_2.lower
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
  L5_2 = Config
  L5_2 = L5_2.Garage
  L5_2 = L5_2.DepartmentsEnableBuyVehicles
  if L5_2 then
    L5_2 = L0_1
    L5_2 = L5_2[A0_2]
    L5_2 = L5_2.paymentMethod
    if not L5_2 then
      return
    end
    L6_2 = L0_1
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.owner
    L7_2 = L0_1
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.spawnCost
    if not L7_2 then
      L8_2 = Config
      L8_2 = L8_2.Garage
      L7_2 = L8_2.DepartmentsBuyVehicleCostPrice
    end
    L8_2 = Framework
    L8_2 = L8_2.getCharacterShortName
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    L9_2 = Utils
    L9_2 = L9_2.Log
    L10_2 = "Garage"
    L11_2 = "Player named %s (%s) stored vehicle in garage!"
    L12_2 = L11_2
    L11_2 = L11_2.format
    L13_2 = L8_2
    L14_2 = L2_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = PAYMENT_METHODS
    L9_2 = L9_2.COMPANY
    if L5_2 == L9_2 then
      L9_2 = SocietyService
      L9_2 = L9_2.StoreDepartmentVehicle
      L10_2 = {}
      L10_2.department = L6_2
      L10_2.spawnPrice = L7_2
      function L11_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3
        if A0_3 then
          L2_3 = DespawnVehicle
          L3_3 = L2_2
          L4_3 = L3_2
          L5_3 = A0_2
          L2_3(L3_3, L4_3, L5_3)
        end
      end
      L9_2(L10_2, L11_2)
    else
      L9_2 = PAYMENT_METHODS
      L9_2 = L9_2.BANK
      if L5_2 == L9_2 then
        L9_2 = Framework
        L9_2 = L9_2.HandleGarageBankTransaction
        L10_2 = {}
        L10_2.playerId = L2_2
        L11_2 = BANK_TRANSACTION_TYPES
        L11_2 = L11_2.ADD
        L10_2.transactionType = L11_2
        L10_2.spawnPrice = L7_2
        function L11_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          if A0_3 then
            L2_3 = DespawnVehicle
            L3_3 = L2_2
            L4_3 = L3_2
            L5_3 = A0_2
            L2_3(L3_3, L4_3, L5_3)
          end
        end
        L9_2(L10_2, L11_2)
      end
    end
  else
    L5_2 = DespawnVehicle
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = DoesEntityExist
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = StartClient
    L4_2 = A0_2
    L5_2 = "despawnVehicle"
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = TriggerEvent
    L4_2 = "rcore_police:server:garage:despawnVehicle"
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
    L3_2 = DeleteEntity
    L4_2 = A1_2
    L3_2(L4_2)
    L3_2 = L0_1
    L4_2 = {}
    L3_2[A2_2] = L4_2
    L3_2 = Framework
    L3_2 = L3_2.sendNotification
    L4_2 = A0_2
    L5_2 = _U
    L6_2 = "GARAGE.VEHICLE_WAS_STORED"
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
DespawnVehicle = L1_1
