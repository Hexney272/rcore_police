local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = nil
L1_1 = false
L2_1 = KNEE
L2_1 = L2_1.DICT
L3_1 = KNEE
L3_1 = L3_1.NAME
L4_1 = 10
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = IsEntityPlayingAnim
  L2_2 = L0_2
  L3_2 = L2_1
  L4_2 = L3_1
  L5_2 = 3
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  if not L1_2 then
    L1_2 = L1_1
  end
  return L1_2
end
GetKneeState = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = Config
  L0_2 = L0_2.Knee
  L0_2 = L0_2.CooldownTime
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = Config
  L2_2 = L2_2.Knee
  L2_2 = L2_2.Enable
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Knee is not enabled"
    return L2_2(L3_2)
  end
  L2_2 = Config
  L2_2 = L2_2.Knee
  L2_2 = L2_2.EnableCooldown
  if L2_2 then
    L2_2 = L0_1
    if L2_2 then
      L2_2 = L0_1
      L2_2 = L1_2 - L2_2
      if L0_2 > L2_2 then
        return
      end
    end
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = IsPedCuffed
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = InteractionService
  L3_2 = L3_2.isEscorted
  L3_2 = L3_2()
  if L3_2 then
    return
  end
  L3_2 = L1_1
  L3_2 = not L3_2
  L1_1 = L3_2
  L3_2 = L1_1
  if not L3_2 then
    L3_2 = IsEntityPlayingAnim
    L4_2 = L2_2
    L5_2 = L2_1
    L6_2 = L3_1
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if L3_2 then
      L3_2 = ClearPedTasksImmediately
      L4_2 = L2_2
      return L3_2(L4_2)
    end
  end
  L3_2 = GetGameTimer
  L3_2 = L3_2()
  L0_1 = L3_2
  L3_2 = UtilsService
  L3_2 = L3_2.LoadAnimationDict
  L4_2 = L2_1
  L3_2(L4_2)
  L3_2 = TaskPlayAnim
  L4_2 = L2_2
  L5_2 = L2_1
  L6_2 = L3_1
  L7_2 = 8.0
  L8_2 = -8.0
  L9_2 = -1
  L10_2 = L4_1
  L11_2 = 3.0
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  while true do
    L3_2 = L1_1
    if not L3_2 then
      break
    end
    L3_2 = Wait
    L4_2 = 250
    L3_2(L4_2)
    L3_2 = L1_1
    if not L3_2 then
      L3_2 = false
      L1_1 = L3_2
      break
    end
    L3_2 = Interactions
    L3_2 = L3_2.Cuff
    L3_2 = L3_2.TARGET_PLAYER_CUFF_STATE
    if not L3_2 then
      L3_2 = Interactions
      L3_2 = L3_2.Escort
      L3_2 = L3_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE
      if not L3_2 then
        goto lbl_107
      end
    end
    L3_2 = false
    L1_1 = L3_2
    do break end
    ::lbl_107::
    L3_2 = IsEntityPlayingAnim
    L4_2 = L2_2
    L5_2 = L2_1
    L6_2 = L3_1
    L7_2 = 3
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if not L3_2 then
      L3_2 = TaskPlayAnim
      L4_2 = L2_2
      L5_2 = L2_1
      L6_2 = L3_1
      L7_2 = 8.0
      L8_2 = -8.0
      L9_2 = -1
      L10_2 = L4_1
      L11_2 = 3.0
      L12_2 = false
      L13_2 = false
      L14_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
end
HandleKneeState = L5_1
L5_1 = RegisterCommand
L6_1 = "knee"
function L7_1()
  local L0_2, L1_2
  L0_2 = HandleKneeState
  L0_2()
end
L8_1 = false
L5_1(L6_1, L7_1, L8_1)
