local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:client:syncStorage"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = InteractionService
  L1_2 = L1_2.updateStorage
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:client:syncSpecificStorage"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = InteractionService
  L3_2 = L3_2.updateStorageSpecific
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "StopTask"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = IsActiveAnimGlobally
    if L2_2 then
      L2_2 = next
      L3_2 = IsActiveAnimGlobally
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = IsActiveAnimGlobally
        L2_2 = L2_2.dict
        L3_2 = IsActiveAnimGlobally
        L3_2 = L3_2.name
        L4_2 = IsEntityPlayingAnim
        L5_2 = L1_2
        L6_2 = L2_2
        L7_2 = L3_2
        L8_2 = 3
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        if L4_2 then
          L4_2 = StopEntityAnim
          L5_2 = L1_2
          L6_2 = L2_2
          L7_2 = L3_2
          L8_2 = 1.0
          L4_2(L5_2, L6_2, L7_2, L8_2)
        end
        IsActiveAnimGlobally = nil
        L4_2 = ClearPedTasksImmediately
        L5_2 = L1_2
        L4_2(L5_2)
        L4_2 = SetTimeout
        L5_2 = 100
        function L6_2()
          local L0_3, L1_3
          L0_3 = ClearPedTasksImmediately
          L1_3 = L1_2
          L0_3(L1_3)
        end
        L4_2(L5_2, L6_2)
        L4_2 = dbg
        L4_2 = L4_2.debug
        L5_2 = "Stopped active anim."
        L4_2(L5_2)
    end
    else
      L2_2 = ClearPedTasksImmediately
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "TaskPlayAnim"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  if A0_2 then
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = A1_2.animDict
    L4_2 = A1_2.animName
    L5_2 = A1_2.animFlag
    if not L5_2 then
      L5_2 = 49
    end
    L6_2 = A1_2.time
    if not L6_2 then
      L6_2 = 2000
    end
    if "cuff" == L3_2 then
      L7_2 = A1_2.target
      L8_2 = UtilsService
      L8_2 = L8_2.IsPlayerInFrontOrBehind
      L9_2 = L7_2
      L10_2 = true
      L8_2 = L8_2(L9_2, L10_2)
      if "front" == L8_2 then
        L3_2 = "mp_arresting"
        L4_2 = "a_uncuff"
        L6_2 = 2000
      else
        L3_2 = "mp_arrest_paired"
        L4_2 = "cop_p3_fwd"
        L6_2 = 500
      end
      L9_2 = Interactions
      L9_2 = L9_2.RunCuffPre
      L10_2 = "officer"
      L9_2(L10_2)
      L9_2 = SetTimeout
      L10_2 = 0
      function L11_2()
        local L0_3, L1_3
        L0_3 = Sounds
        L0_3 = L0_3.PlayHandcuff
        L0_3()
      end
      L9_2(L10_2, L11_2)
    elseif "a_uncuff" == L4_2 then
      L7_2 = SetTimeout
      L8_2 = 0
      function L9_2()
        local L0_3, L1_3
        L0_3 = Sounds
        L0_3 = L0_3.PlayUncuff
        L0_3()
      end
      L7_2(L8_2, L9_2)
    end
    L7_2 = UtilsService
    L7_2 = L7_2.LoadAnimationDict
    L8_2 = L3_2
    L7_2(L8_2)
    L7_2 = TaskPlayAnim
    L8_2 = L2_2
    L9_2 = L3_2
    L10_2 = L4_2
    L11_2 = 8.0
    L12_2 = -8
    L13_2 = -1
    L14_2 = L5_2
    L15_2 = 0
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = {}
    L7_2.state = true
    L7_2.dict = L3_2
    L7_2.name = L4_2
    IsActiveAnimGlobally = L7_2
    if -1 == L6_2 then
      return
    end
    L7_2 = Wait
    L8_2 = L6_2
    L7_2(L8_2)
    L7_2 = ClearPedTasksImmediately
    L8_2 = L2_2
    L7_2(L8_2)
    IsActiveAnimGlobally = nil
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "RemoveCuffs"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = Interactions
    L3_2 = L3_2.RemoveCuffs
    L4_2 = A2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "Handcuff"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A0_2 then
    L4_2 = dbg
    L4_2 = L4_2.debug
    L5_2 = "Cuff state: %s"
    L6_2 = Interactions
    L6_2 = L6_2.Cuff
    L6_2 = L6_2.TARGET_PLAYER_CUFF_STATE
    L4_2(L5_2, L6_2)
    L4_2 = Interactions
    L4_2 = L4_2.Cuff
    L4_2 = L4_2.TARGET_PLAYER_CUFF_STATE
    if L4_2 then
      L4_2 = Interactions
      L4_2 = L4_2.RemoveCuffs
      L5_2 = A3_2
      L6_2 = A2_2
      return L4_2(L5_2, L6_2)
    end
    L4_2 = Interactions
    L4_2 = L4_2.SetCitizenCuffs
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "EscortPlayer"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = Interactions
    L3_2 = L3_2.SetCitizenEscort
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "JailPlayer"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = SentPlayerToPrison
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "SentToCOMS"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = SentPlayerToCOMS
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "InVehicle"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  if A0_2 then
    L3_2 = Interactions
    L3_2 = L3_2.PutPlayerInVehicle
    L3_2()
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "FromVehicle"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = Interactions
    L3_2 = L3_2.TakePlayerFromVehicle
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "TacklePlayer"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = TacklePlayer
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "TackleCuffPlayer"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 then
    L2_2 = TackleCuffPlayer
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "TackleRemove"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 then
    L2_2 = TackleReset
    L3_2 = A1_2
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "PunchSync"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = PunchSync
    L4_2 = A1_2
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "SearchPlayer"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A0_2 then
    L3_2 = tonumber
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A1_2 = L3_2
    L3_2 = Config
    L3_2 = L3_2.Inventory
    L4_2 = Inventory
    L4_2 = L4_2.ESX
    if L3_2 == L4_2 then
      L3_2 = ShowPlayerInventory
      L4_2 = A1_2
      L5_2 = A2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = OpenPlayerInventory
      L4_2 = A1_2
      L3_2(L4_2)
    end
  end
end
L0_1(L1_1, L2_1)
