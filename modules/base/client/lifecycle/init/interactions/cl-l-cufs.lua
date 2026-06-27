local L0_1, L1_1, L2_1
L0_1 = 150
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = IsEntityPlayingAnim
  L1_2 = StopEntityAnim
  L2_2 = TaskPlayAnim
  L3_2 = GetVehiclePedIsIn
  L4_2 = GetPedInVehicleSeat
  L5_2 = SetPedIntoVehicle
  L6_2 = SetPedConfigFlag
  while true do
    L7_2 = Wait
    L8_2 = L0_1
    L7_2(L8_2)
    L7_2 = Interactions
    L7_2 = L7_2.Cuff
    L7_2 = L7_2.TARGET_PLAYER_CUFF_STATE
    if L7_2 then
      L7_2 = Interactions
      L7_2 = L7_2.Cuff
      L7_2 = L7_2.Session
      if not L7_2 then
        return
      end
      L8_2 = L0_2
      L9_2 = L7_2.mePed
      L10_2 = HANDS_UP
      L10_2 = L10_2.DICT
      L11_2 = HANDS_UP
      L11_2 = L11_2.NAME
      L12_2 = 3
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if L8_2 then
        L8_2 = L1_2
        L9_2 = L7_2.mePed
        L10_2 = HANDS_UP
        L10_2 = L10_2.DICT
        L11_2 = HANDS_UP
        L11_2 = L11_2.NAME
        L12_2 = 1.0
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      L8_2 = L0_2
      L9_2 = L7_2.mePed
      L10_2 = KNEE
      L10_2 = L10_2.DICT
      L11_2 = KNEE
      L11_2 = L11_2.NAME
      L12_2 = 3
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if L8_2 then
        L8_2 = L1_2
        L9_2 = L7_2.mePed
        L10_2 = KNEE
        L10_2 = L10_2.DICT
        L11_2 = KNEE
        L11_2 = L11_2.NAME
        L12_2 = 1.0
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      L8_2 = currentSeat
      if L8_2 then
        L8_2 = L3_2
        L9_2 = L7_2.mePed
        L10_2 = false
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = L4_2
        L10_2 = L8_2
        L11_2 = currentSeat
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L7_2.mePed
        if L9_2 ~= L10_2 then
          L10_2 = L5_2
          L11_2 = L7_2.mePed
          L12_2 = L8_2
          L13_2 = currentSeat
          L10_2(L11_2, L12_2, L13_2)
        end
        L10_2 = L6_2
        L11_2 = L7_2.mePed
        L12_2 = 184
        L13_2 = true
        L10_2(L11_2, L12_2, L13_2)
      end
      L8_2 = L0_2
      L9_2 = L7_2.mePed
      L10_2 = L7_2.animDict
      L11_2 = L7_2.animName
      L12_2 = 3
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if not L8_2 then
        L8_2 = Wait
        L9_2 = 25
        L8_2(L9_2)
        L8_2 = L2_2
        L9_2 = L7_2.mePed
        L10_2 = L7_2.animDict
        L11_2 = L7_2.animName
        L12_2 = 8.0
        L13_2 = -8.0
        L14_2 = -1
        L15_2 = MOVEMENT_FLAG
        L15_2 = L15_2.MOVE_ALL
        L16_2 = 0
        L17_2 = 0
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      end
    else
      L7_2 = 250
      L0_1 = L7_2
    end
  end
end
L1_1(L2_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = 250
  L1_2 = DisableControlAction
  L2_2 = SetPlayerMayNotEnterAnyVehicle
  L3_2 = PlayerId
  L3_2 = L3_2()
  while true do
    L4_2 = Wait
    L5_2 = L0_2
    L4_2(L5_2)
    L4_2 = Interactions
    L4_2 = L4_2.Cuff
    L4_2 = L4_2.TARGET_PLAYER_CUFF_STATE
    if L4_2 then
      L0_2 = 0
      L4_2 = Config
      L4_2 = L4_2.Cuffing
      L4_2 = L4_2.DisableWalkForCuffedPlayers
      if L4_2 then
        L4_2 = L1_2
        L5_2 = 0
        L6_2 = 30
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = L1_2
        L5_2 = 0
        L6_2 = 31
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = L1_2
        L5_2 = 0
        L6_2 = 34
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = L1_2
        L5_2 = 0
        L6_2 = 35
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = L1_2
        L5_2 = 0
        L6_2 = 21
        L7_2 = true
        L4_2(L5_2, L6_2, L7_2)
      end
      L4_2 = Config
      L4_2 = L4_2.Cuffing
      L4_2 = L4_2.DisableSprintForCuffedPlayers
      if L4_2 then
        L4_2 = PlayerPedId
        L4_2 = L4_2()
        L5_2 = IsPedRunning
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        if not L5_2 then
          L5_2 = IsPedSprinting
          L6_2 = L4_2
          L5_2 = L5_2(L6_2)
          if not L5_2 then
            goto lbl_66
          end
        end
        L5_2 = SetTimeout
        L6_2 = 100
        function L7_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
          L0_3 = DoesEntityExist
          L1_3 = L4_2
          L0_3 = L0_3(L1_3)
          if L0_3 then
            L0_3 = ForcePedMotionState
            L1_3 = L4_2
            L2_3 = -668482597
            L3_3 = 0
            L4_3 = 0
            L5_3 = 0
            L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
          end
        end
        L5_2(L6_2, L7_2)
        ::lbl_66::
      end
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 24
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 257
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 25
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 45
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 140
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 104
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 75
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 27
      L6_2 = 75
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L1_2
      L5_2 = 0
      L6_2 = 22
      L7_2 = true
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = L2_2
      L5_2 = L3_2
      L4_2(L5_2)
    else
      L0_2 = 250
    end
  end
end
L1_1(L2_1)
