local L0_1, L1_1
L0_1 = {}
VehicleService = L0_1
L0_1 = VehicleService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A0_2 then
    L1_2 = dbg
    L1_2 = L1_2.critical
    L2_2 = "Failed to impound vehicle, not any received!"
    return L1_2(L2_2)
  end
  L1_2 = 255
  L2_2 = 1.5
  L3_2 = 5
  L4_2 = Config
  L4_2 = L4_2.Garage
  L4_2 = L4_2.ImpoundRemoveTime
  L5_2 = 0
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = promise
  L7_2 = L7_2.new
  L7_2 = L7_2()
  L8_2 = dbg
  L8_2 = L8_2.debug
  L9_2 = "Starting impound vehicle!"
  L8_2(L9_2)
  L8_2 = Config
  L8_2 = L8_2.Garage
  L8_2 = L8_2.ImpoundUseProgresBar
  if L8_2 then
    L8_2 = CancellableProgress
    L9_2 = Config
    L9_2 = L9_2.Garage
    L9_2 = L9_2.ImpoundRemoveTime
    L9_2 = L9_2 * 1000
    L10_2 = _U
    L11_2 = "GARAGE.IMPOUND_ACTION"
    L10_2 = L10_2(L11_2)
    L11_2 = "missheistdockssetup1clipboard@base"
    L12_2 = "base"
    L13_2 = 1
    function L14_2()
      local L0_3, L1_3, L2_3
      L0_3 = Framework
      L0_3 = L0_3.sendNotification
      L1_3 = _U
      L2_3 = "IMPOUNDS.VEHICLE_SENT_TO_IMPOUND"
      L1_3 = L1_3(L2_3)
      L2_3 = "success"
      L0_3(L1_3, L2_3)
      L0_3 = DeleteEntity
      L1_3 = A0_2
      L0_3(L1_3)
      L0_3 = L7_2
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    function L15_2()
      local L0_3, L1_3, L2_3
      L0_3 = Framework
      L0_3 = L0_3.sendNotification
      L1_3 = _U
      L2_3 = "IMPOUNDS.VEHICLE_REVOKE_SENT_TO_IMPOUND"
      L1_3 = L1_3(L2_3)
      L2_3 = "success"
      L0_3(L1_3, L2_3)
      L0_3 = L7_2
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L16_2 = {}
    L17_2 = {}
    L18_2 = {}
    L18_2.name = "prop_notepad_01"
    L18_2.bone = 18905
    L19_2 = {}
    L19_2.x = 0.1
    L19_2.y = 0.02
    L19_2.z = 0.05
    L18_2.coords = L19_2
    L19_2 = {}
    L19_2.x = 10.0
    L19_2.y = 0.0
    L19_2.z = 0.0
    L18_2.rotation = L19_2
    L19_2 = {}
    L19_2.name = "prop_pencil_01"
    L19_2.bone = 58866
    L20_2 = {}
    L20_2.x = 0.11
    L20_2.y = -0.02
    L20_2.z = 0.001
    L19_2.coords = L20_2
    L20_2 = {}
    L20_2.x = -120.0
    L20_2.y = 0.0
    L20_2.z = 0.0
    L19_2.rotation = L20_2
    L17_2[1] = L18_2
    L17_2[2] = L19_2
    L16_2.props = L17_2
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  else
    L8_2 = TaskStartScenarioInPlace
    L9_2 = L6_2
    L10_2 = "CODE_HUMAN_MEDIC_TEND_TO_DEAD"
    L11_2 = 0
    L12_2 = true
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = CreateThread
    function L9_2()
      local L0_3, L1_3, L2_3, L3_3
      while true do
        L0_3 = L1_2
        if not (L0_3 > 0) then
          break
        end
        L0_3 = L1_2
        L1_3 = L3_2
        L0_3 = L0_3 - L1_3
        L1_2 = L0_3
        L0_3 = L1_2
        if L0_3 < 0 then
          L0_3 = 0
          L1_2 = L0_3
        end
        L0_3 = SetEntityAlpha
        L1_3 = A0_2
        L2_3 = L1_2
        L3_3 = false
        L0_3(L1_3, L2_3, L3_3)
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = L2_2
        L1_3 = L1_3 * 1000
        L0_3(L1_3)
        L0_3 = L5_2
        L1_3 = L2_2
        L0_3 = L0_3 + L1_3
        L5_2 = L0_3
        L0_3 = L5_2
        L1_3 = L4_2
        if L0_3 >= L1_3 then
          L0_3 = DeleteEntity
          L1_3 = A0_2
          L0_3(L1_3)
          L0_3 = ClearPedTasksImmediately
          L1_3 = L6_2
          L0_3(L1_3)
          L0_3 = L7_2
          L1_3 = L0_3
          L0_3 = L0_3.resolve
          L2_3 = true
          L0_3(L1_3, L2_3)
          break
        end
      end
    end
    L8_2(L9_2)
  end
  L8_2 = Citizen
  L8_2 = L8_2.Await
  L9_2 = L7_2
  return L8_2(L9_2)
end
L0_1.ImpoundVehicle = L1_1
