local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
TACKLE_ANIM_DICT = "missmic2ig_11"
TACKLE_ANIM_NAME = "mic_2_ig_11_intro_goon"
TACKLE_ANIM_DICT_GROUND_DICT = "random@homelandsecurity"
TACKLE_ANIM_DICT_GROUND_NAME = "idle_girl"
L0_1 = false
L1_1 = false
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = UtilsService
  L2_2 = L2_2.GetPlayerPedFromServerId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = "random@homelandsecurity"
  L5_2 = "exit_cop_ground"
  L6_2 = true
  L7_2 = UI
  L7_2 = L7_2.StopMinigame
  L7_2()
  if A1_2 then
    L6_2 = false
  end
  if L6_2 then
    repeat
      L7_2 = Wait
      L8_2 = 250
      L7_2(L8_2)
      L7_2 = IsEntityPlayingAnim
      L8_2 = L2_2
      L9_2 = L4_2
      L10_2 = L5_2
      L11_2 = 3
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
      if not L7_2 then
        L6_2 = false
        L7_2 = Wait
        L8_2 = 250
        L7_2(L8_2)
      end
    until not L6_2
    L7_2 = "random@homelandsecurity"
    L8_2 = "idle_girl"
    L9_2 = StopEntityAnim
    L10_2 = L3_2
    L11_2 = L7_2
    L12_2 = L8_2
    L13_2 = 3
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = "get_up@cuffed"
    L10_2 = "back_to_default"
    L11_2 = UtilsService
    L11_2 = L11_2.LoadAnimationDict
    L12_2 = L9_2
    L11_2(L12_2)
    L11_2 = TaskPlayAnim
    L12_2 = L2_2
    L13_2 = L9_2
    L14_2 = L10_2
    L15_2 = 8.0
    L16_2 = 8.0
    L17_2 = 3000
    L18_2 = 1
    L19_2 = 0.0
    L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  else
    L7_2 = false
    L1_1 = L7_2
  end
end
TackleReset = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = UtilsService
  L1_2 = L1_2.GetPlayerPedFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = "get_up@cuffed"
  L3_2 = "back_to_default"
  L4_2 = UtilsService
  L4_2 = L4_2.LoadAnimationDict
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = TaskPlayAnim
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = 8.0
  L9_2 = 8.0
  L10_2 = -1
  L11_2 = 1
  L12_2 = 0.0
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = UI
  L4_2 = L4_2.StopMinigame
  L4_2()
end
TackleCuffPlayer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if not A0_2 then
    return
  end
  L1_2 = false
  L1_1 = L1_2
  L1_2 = UtilsService
  L1_2 = L1_2.LoadAnimationDict
  L2_2 = TACKLE_ANIM_DICT
  L1_2(L2_2)
  L1_2 = UtilsService
  L1_2 = L1_2.GetPlayerPedFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = AttachEntityToEntity
  L4_2 = L2_2
  L5_2 = L1_2
  L6_2 = 11816
  L7_2 = 0.2
  L8_2 = 0.4
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = GetEntityHeading
  L12_2 = L1_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 + 180
  L12_2 = 0.0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L17_2 = 2
  L18_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L3_2 = "melee@unarmed@streamed_variations"
  L4_2 = "victim_takedown_front_cross_r"
  L5_2 = 1500
  L6_2 = GetEntityHeading
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 - 180
  L7_2 = UtilsService
  L7_2 = L7_2.LoadAnimationDict
  L8_2 = L3_2
  L7_2(L8_2)
  L7_2 = TaskPlayAnimAdvanced
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = GetOffsetFromEntityInWorldCoords
  L12_2 = L1_2
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = L6_2
  L15_2 = 8.0
  L16_2 = 3.0
  L17_2 = L5_2 + 500
  L18_2 = 1
  L19_2 = 0.0
  L20_2 = 0
  L21_2 = 0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
  L7_2 = Wait
  L8_2 = L5_2 + 500
  L7_2(L8_2)
  L7_2 = DetachEntity
  L8_2 = L2_2
  L9_2 = false
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = FreezeEntityPosition
  L8_2 = L2_2
  L9_2 = true
  L7_2(L8_2, L9_2)
  L7_2 = ClearPedTasksImmediately
  L8_2 = L2_2
  L7_2(L8_2)
  L7_2 = "random@homelandsecurity"
  L8_2 = "idle_girl"
  L9_2 = UtilsService
  L9_2 = L9_2.LoadAnimationDict
  L10_2 = L7_2
  L9_2(L10_2)
  L9_2 = TaskPlayAnimAdvanced
  L10_2 = L2_2
  L11_2 = L7_2
  L12_2 = L8_2
  L13_2 = GetOffsetFromEntityInWorldCoords
  L14_2 = L1_2
  L15_2 = 0.0
  L16_2 = 0.0
  L17_2 = 0.0
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = GetEntityHeading
  L17_2 = L1_2
  L16_2 = L16_2(L17_2)
  L17_2 = 8.0
  L18_2 = 8.0
  L19_2 = -1
  L20_2 = 1
  L21_2 = 0
  L22_2 = 0
  L23_2 = 0
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  L9_2 = false
  L10_2 = Config
  L10_2 = L10_2.Cuffing
  L10_2 = L10_2.BreakTackleMinigame
  if L10_2 then
    L10_2 = math
    L10_2 = L10_2.random
    L11_2 = 1
    L12_2 = 100
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = Config
    L11_2 = L11_2.Cuffing
    L11_2 = L11_2.BreakTackleChance
    if not (L11_2 >= 100) then
      L11_2 = Config
      L11_2 = L11_2.Cuffing
      L11_2 = L11_2.BreakTackleChance
      if not (L10_2 >= L11_2) then
        goto lbl_141
      end
    end
    L11_2 = SetTimeout
    L12_2 = 0
    function L13_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = SetTimeout
      L1_3 = 5000
      function L2_3()
        local L0_4, L1_4
        L0_4 = UI
        L0_4 = L0_4.StopMinigame
        L0_4()
      end
      L0_3(L1_3, L2_3)
      L0_3 = UI
      L0_3 = L0_3.StartMinigame
      L0_3 = L0_3()
      if L0_3 then
        L1_3 = true
        L9_2 = L1_3
        L1_3 = TackleReset
        L2_3 = A0_2
        L3_3 = L9_2
        L1_3(L2_3, L3_3)
      end
    end
    L11_2(L12_2, L13_2)
  end
  ::lbl_141::
  L10_2 = "random@homelandsecurity"
  L11_2 = "exit_cop_ground"
  L12_2 = true
  L1_1 = L12_2
  repeat
    L12_2 = Wait
    L13_2 = 250
    L12_2(L13_2)
    L12_2 = IsEntityPlayingAnim
    L13_2 = L2_2
    L14_2 = L7_2
    L15_2 = L8_2
    L16_2 = 3
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    if not L12_2 then
      L12_2 = TaskPlayAnim
      L13_2 = L2_2
      L14_2 = L7_2
      L15_2 = L8_2
      L16_2 = 8.0
      L17_2 = 8.0
      L18_2 = -1
      L19_2 = 1
      L20_2 = 0.0
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L12_2 = IsEntityPlayingAnim
    L13_2 = L1_2
    L14_2 = L10_2
    L15_2 = L11_2
    L16_2 = 3
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    if L12_2 then
      L12_2 = L1_1
      if L12_2 then
        L12_2 = TaskPlayAnim
        L13_2 = L2_2
        L14_2 = L10_2
        L15_2 = "exit_girl"
        L16_2 = 8.0
        L17_2 = 8.0
        L18_2 = -1
        L19_2 = 1
        L20_2 = 0.0
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L12_2 = false
        L1_1 = L12_2
      end
    end
    L12_2 = L1_1
  until not L12_2
  if not L9_2 then
    L12_2 = Wait
    L13_2 = 6000
    L12_2(L13_2)
  end
  L12_2 = FreezeEntityPosition
  L13_2 = L2_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = DetachEntity
  L13_2 = L2_2
  L14_2 = false
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = ClearPedTasks
  L13_2 = L2_2
  L12_2(L13_2)
  if L9_2 then
    L12_2 = StartPunchAnim
    L13_2 = "back"
    L12_2(L13_2)
  end
end
TacklePlayer = L2_1
L2_1 = false
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.Tackle
  L0_2 = L0_2.Enable
  if not L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.debug
    L1_2 = "Tackle is disabled!"
    return L0_2(L1_2)
  end
  L0_2 = Framework
  L0_2 = L0_2.job
  if not L0_2 then
    return
  end
  L1_2 = Config
  L1_2 = L1_2.Tackle
  L1_2 = L1_2.OnlyForDepartmentGroups
  if L1_2 and L0_2 then
    L1_2 = Config
    L1_2 = L1_2.JobGroups
    L2_2 = L0_2.name
    L3_2 = L2_2
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    if not L1_2 then
      L1_2 = dbg
      L1_2 = L1_2.debug
      L2_2 = "Tackle: Restricted only for department groups, your job: %s"
      L3_2 = L0_2.name
      L4_2 = L3_2
      L3_2 = L3_2.lower
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
      return L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
  end
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Tackle: Checking closest player in distance."
  L1_2(L2_2)
  L1_2 = Utils
  L1_2 = L1_2.getClosestPlayers
  L2_2 = Config
  L2_2 = L2_2.Tackle
  L2_2 = L2_2.Distance
  L3_2 = false
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  if L1_2 and -1 ~= L1_2 then
    L4_2 = L0_1
    if L4_2 then
      L4_2 = dbg
      L4_2 = L4_2.debug
      L5_2 = "Tackle: State initiator is busy (active)"
      return L4_2(L5_2)
    end
    L4_2 = IsPropSessionActive
    if L4_2 then
      L4_2 = dbg
      L4_2 = L4_2.debug
      L5_2 = "Tackle: Prop session active!"
      return L4_2(L5_2)
    end
    L4_2 = L2_1
    if L4_2 then
      L4_2 = dbg
      L4_2 = L4_2.debug
      L5_2 = "Tackle: Is busy!"
      return L4_2(L5_2)
    end
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = UtilsService
    L5_2 = L5_2.GetPlayerPedFromServerId
    L6_2 = L1_2
    L5_2 = L5_2(L6_2)
    L6_2 = {}
    L6_2.playerPed = L4_2
    L6_2.targetPed = L5_2
    L6_2.closestPlayer = L1_2
    L7_2 = Utils
    L7_2 = L7_2.TackleRestrictions
    L8_2 = L6_2
    function L9_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3
      if not A0_3 then
        L2_3 = dbg
        L2_3 = L2_3.debug
        L3_3 = A1_3 or L3_3
        if not A1_3 then
          L3_3 = "Tackle not allowed"
        end
        return L2_3(L3_3)
      end
      L2_3 = Config
      L2_3 = L2_3.Tackle
      L2_3 = L2_3.ExperimentalForceFrontBack
      if L2_3 then
        L2_3 = UtilsService
        L2_3 = L2_3.IsPlayerInFrontOrBehind
        L3_3 = L1_2
        L4_3 = true
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = {}
        L3_3.front = true
        L3_3.back = true
        L4_3 = L3_3[L2_3]
        if not L4_3 then
          L4_3 = dbg
          L4_3 = L4_3.debug
          L5_3 = "Tackle: You cant do tackle from sides only front/back! Incoming calculation: %s"
          L6_3 = L2_3
          return L4_3(L5_3, L6_3)
        end
      end
      L2_3 = true
      L2_1 = L2_3
      L2_3 = true
      L0_1 = L2_3
      L2_3 = L1_2
      TACKLED_PLAYER_ID = L2_3
      L2_3 = TriggerServerEvent
      L3_3 = "rcore_police:server:requestTacklePlayer"
      L4_3 = L1_2
      L2_3(L3_3, L4_3)
      L2_3 = UtilsService
      L2_3 = L2_3.LoadAnimationDict
      L3_3 = TACKLE_ANIM_DICT
      L2_3(L3_3)
      L2_3 = TaskPlayAnim
      L3_3 = L4_2
      L4_3 = TACKLE_ANIM_DICT
      L5_3 = "mic_2_ig_11_intro_goon"
      L6_3 = 8.0
      L7_3 = -8.0
      L8_3 = 3000
      L9_3 = 0
      L10_3 = 0.005
      L11_3 = false
      L12_3 = false
      L13_3 = false
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L2_3 = Wait
      L3_3 = 3000
      L2_3(L3_3)
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = MakePedIgnoreHitFromOtherPlayer
      L4_3 = L2_3
      L5_3 = true
      L3_3(L4_3, L5_3)
      L3_3 = MakePedIgnoreHitFromOtherPlayer
      L4_3 = L5_2
      L5_3 = true
      L3_3(L4_3, L5_3)
      L3_3 = "random@homelandsecurity"
      L4_3 = "idle_cop_ground"
      L5_3 = GetOffsetFromEntityInWorldCoords
      L6_3 = L5_2
      L7_3 = 0.0
      L8_3 = -0.2
      L9_3 = 0.0
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3)
      L6_3 = UtilsService
      L6_3 = L6_3.LoadAnimationDict
      L7_3 = L3_3
      L6_3(L7_3)
      L6_3 = SetEntityHeading
      L7_3 = L2_3
      L8_3 = GetEntityHeading
      L9_3 = L2_3
      L8_3 = L8_3(L9_3)
      L8_3 = L8_3 - 35.0
      L6_3(L7_3, L8_3)
      L6_3 = SetEntityCoords
      L7_3 = L2_3
      L8_3 = L5_3.x
      L9_3 = L5_3.y
      L10_3 = L5_3.z
      L10_3 = L10_3 - 1
      L11_3 = false
      L12_3 = false
      L13_3 = false
      L14_3 = false
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L6_3 = UI
      L6_3 = L6_3.HelpKeys
      L7_3 = {}
      L8_3 = {}
      L9_3 = {}
      L10_3 = Config
      L10_3 = L10_3.Tackle
      L10_3 = L10_3.KeyReleaseTackledPlayer
      L9_3.key = L10_3
      L10_3 = _U
      L11_3 = "RELEASE_PLAYER_TACKLE"
      L10_3 = L10_3(L11_3)
      L9_3.label = L10_3
      L10_3 = {}
      L11_3 = Config
      L11_3 = L11_3.CuffAndEscortKey
      L10_3.key = L11_3
      L11_3 = _U
      L12_3 = "CUFF_PLAYER_TACKLE"
      L11_3 = L11_3(L12_3)
      L10_3.label = L11_3
      L8_3[1] = L9_3
      L8_3[2] = L10_3
      L7_3.keys = L8_3
      L8_3 = true
      L6_3(L7_3, L8_3)
      L6_3 = "random@homelandsecurity"
      L7_3 = "idle_girl"
      L8_3 = false
      L9_3 = GetGameTimer
      L9_3 = L9_3()
      L10_3 = 0
      L11_3 = TaskPlayAnim
      L12_3 = L2_3
      L13_3 = L3_3
      L14_3 = L4_3
      L15_3 = 8.0
      L16_3 = 8.0
      L17_3 = -1
      L18_3 = 1
      L19_3 = 0.0
      L20_3 = false
      L21_3 = false
      L22_3 = false
      L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3)
      repeat
        L11_3 = GetGameTimer
        L11_3 = L11_3()
        L10_3 = L11_3 - L9_3
        L11_3 = IsEntityPlayingAnim
        L12_3 = L5_2
        L13_3 = L6_3
        L14_3 = L7_3
        L15_3 = 3
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3)
        if not L11_3 and not L8_3 then
          L11_3 = false
          L0_1 = L11_3
          L8_3 = true
          L11_3 = ClearPedTasks
          L12_3 = L2_3
          L11_3(L12_3)
          L11_3 = DetachEntity
          L12_3 = L2_3
          L13_3 = false
          L14_3 = false
          L11_3(L12_3, L13_3, L14_3)
          L11_3 = false
          L2_1 = L11_3
          L11_3 = MakePedIgnoreHitFromOtherPlayer
          L12_3 = L2_3
          L13_3 = false
          L11_3(L12_3, L13_3)
          L11_3 = MakePedIgnoreHitFromOtherPlayer
          L12_3 = L5_2
          L13_3 = false
          L11_3(L12_3, L13_3)
          break
        end
        L11_3 = 3000
        if L10_3 >= L11_3 then
          L10_3 = 0
          L11_3 = GetEntityAnimCurrentTime
          L12_3 = L2_3
          L13_3 = L3_3
          L14_3 = L4_3
          L11_3 = L11_3(L12_3, L13_3, L14_3)
          L12_3 = IsEntityPlayingAnim
          L13_3 = L2_3
          L14_3 = L3_3
          L15_3 = L4_3
          L16_3 = 3
          L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3)
          if not L12_3 then
            L12_3 = TaskPlayAnim
            L13_3 = L2_3
            L14_3 = L3_3
            L15_3 = L4_3
            L16_3 = 8.0
            L17_3 = 8.0
            L18_3 = -1
            L19_3 = 1
            L20_3 = 0.0
            L21_3 = false
            L22_3 = false
            L23_3 = false
            L12_3(L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
          end
          L12_3 = 0.4
          if L11_3 >= L12_3 then
            L12_3 = SetEntityAnimCurrentTime
            L13_3 = L2_3
            L14_3 = L3_3
            L15_3 = L4_3
            L16_3 = 0.0
            L12_3(L13_3, L14_3, L15_3, L16_3)
          end
        end
        L11_3 = Wait
        L12_3 = 100
        L11_3(L12_3)
        L11_3 = L0_1
      until not L11_3
      L11_3 = UI
      L11_3 = L11_3.ResetHelpKeys
      L11_3()
      if L8_3 then
        L11_3 = Framework
        L11_3 = L11_3.sendNotification
        L12_3 = _U
        L13_3 = "PLAYER_ESCA  PED_TACKLE"
        L12_3 = L12_3(L13_3)
        L13_3 = "success"
        L11_3(L12_3, L13_3)
        L11_3 = SetEntityHeading
        L12_3 = L2_3
        L13_3 = GetEntityHeading
        L14_3 = L5_2
        L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3 = L13_3(L14_3)
        L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3)
        L11_3 = PunchSync
        L12_3 = nil
        L13_3 = "back"
        L11_3(L12_3, L13_3)
        L8_3 = false
        L11_3 = false
        L2_1 = L11_3
        L11_3 = MakePedIgnoreHitFromOtherPlayer
        L12_3 = L2_3
        L13_3 = false
        L11_3(L12_3, L13_3)
        L11_3 = MakePedIgnoreHitFromOtherPlayer
        L12_3 = L5_2
        L13_3 = false
        L11_3(L12_3, L13_3)
        return
      end
      L4_3 = "exit_cop_ground"
      L11_3 = TaskPlayAnim
      L12_3 = L2_3
      L13_3 = L3_3
      L14_3 = L4_3
      L15_3 = 8.0
      L16_3 = 8.0
      L17_3 = 6000
      L18_3 = 1
      L19_3 = 0.0
      L11_3(L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3)
      L11_3 = Wait
      L12_3 = 6000
      L11_3(L12_3)
      L11_3 = StopEntityAnim
      L12_3 = L2_3
      L13_3 = L3_3
      L14_3 = L4_3
      L15_3 = 3
      L11_3(L12_3, L13_3, L14_3, L15_3)
      L11_3 = ClearPedTasks
      L12_3 = L2_3
      L11_3(L12_3)
      L11_3 = DetachEntity
      L12_3 = L2_3
      L13_3 = false
      L14_3 = false
      L11_3(L12_3, L13_3, L14_3)
      L11_3 = MakePedIgnoreHitFromOtherPlayer
      L12_3 = L2_3
      L13_3 = false
      L11_3(L12_3, L13_3)
      L11_3 = MakePedIgnoreHitFromOtherPlayer
      L12_3 = L5_2
      L13_3 = false
      L11_3(L12_3, L13_3)
      L11_3 = false
      L2_1 = L11_3
    end
    L7_2(L8_2, L9_2)
  end
end
TryTackleNearbyPlayer = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = TACKLED_PLAYER_ID
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "rcore_police:server:requestTackleEnableMovement"
      L2_2 = TACKLED_PLAYER_ID
      L0_2(L1_2, L2_2)
      TACKLED_PLAYER_ID = nil
      L0_2 = false
      L0_1 = L0_2
    end
  end
end
StopTacklingPlayer = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.DisableCuffAndEscortKey
  if L0_2 then
    return
  end
  L0_2 = L0_1
  if L0_2 then
    L0_2 = TACKLED_PLAYER_ID
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "rcore_police:server:requestTackleCuff"
      L2_2 = TACKLED_PLAYER_ID
      L0_2(L1_2, L2_2)
      L0_2 = false
      L0_1 = L0_2
      TACKLED_PLAYER_ID = nil
    end
  end
end
StartTackleCuff = L3_1
L3_1 = RegisterKey
L4_1 = TryTackleNearbyPlayer
L5_1 = "RCORE_POLICE_TACKLE"
L6_1 = _U
L7_1 = "KEY_MAPPING.TACKLE_PLAYER"
L6_1 = L6_1(L7_1)
L7_1 = Config
L7_1 = L7_1.Tackle
L7_1 = L7_1.Key
if not L7_1 then
  L7_1 = "H"
end
L8_1 = nil
L9_1 = {}
L9_1.state = true
L10_1 = Config
L10_1 = L10_1.Tackle
L10_1 = L10_1.CooldownKey
L9_1.cooldown = L10_1
L3_1(L4_1, L5_1, L6_1, L7_1, L8_1, L9_1)
L3_1 = RegisterKey
L4_1 = StopTacklingPlayer
L5_1 = "RCORE_POLICE_RELEASE_TACKLED_PLAYER"
L6_1 = _U
L7_1 = "KEY_MAPPING.TACKLE_STOP"
L6_1 = L6_1(L7_1)
L7_1 = Config
L7_1 = L7_1.Tackle
L7_1 = L7_1.KeyReleaseTackledPlayer
L8_1 = nil
L9_1 = {}
L9_1.state = true
L10_1 = Config
L10_1 = L10_1.Tackle
L10_1 = L10_1.KeyReleaseTackledPlayerCooldown
L9_1.cooldown = L10_1
L3_1(L4_1, L5_1, L6_1, L7_1, L8_1, L9_1)
L3_1 = RegisterKey
L4_1 = StartTackleCuff
L5_1 = "RCORE_POLICE_TACKLE_CUFF_PLAYER"
L6_1 = _U
L7_1 = "KEY_MAPPING.TACKLE_CUFF_AND_ESCORT_PLAYER"
L6_1 = L6_1(L7_1)
L7_1 = Config
L7_1 = L7_1.CuffAndEscortKey
L8_1 = nil
L9_1 = {}
L9_1.state = true
L9_1.cooldown = 1500.0
L3_1(L4_1, L5_1, L6_1, L7_1, L8_1, L9_1)
