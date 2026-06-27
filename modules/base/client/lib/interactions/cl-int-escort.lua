local L0_1, L1_1, L2_1, L3_1
L0_1 = "anim@move_m@prisoner_cuffed"
L1_1 = "walk"
L2_1 = Interactions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = UtilsService
  L3_2 = L3_2.GetPlayerPedFromServerId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if A0_2 == L2_2 then
    L4_2 = print
    L5_2 = "You cant escort yourself!"
    return L4_2(L5_2)
  end
  L4_2 = Interactions
  L4_2 = L4_2.Escort
  L4_2 = L4_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE
  if L4_2 then
    L4_2 = Interactions
    L4_2 = L4_2.StopCitizenEscort
    L5_2 = L2_2
    return L4_2(L5_2)
  end
  L4_2 = IsEntityAttached
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = DetachEntity
    L5_2 = L2_2
    L6_2 = false
    L7_2 = false
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = Interactions
  L4_2 = L4_2.Cuff
  L4_2 = L4_2.TARGET_PLAYER_CUFF_STATE
  if L4_2 then
    L4_2 = Interactions
    L4_2 = L4_2.Cuff
    L4_2.TARGET_PLAYER_CUFF_STATE = false
  end
  L4_2 = escortEscape
  if L4_2 then
    escortEscape = false
  end
  L4_2 = UI
  L4_2 = L4_2.StopMinigame
  L4_2()
  L4_2 = IsPedCuffed
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = UtilsService
    L4_2 = L4_2.LoadAnimationDict
    L5_2 = "mp_arresting"
    L4_2(L5_2)
  end
  L4_2 = dbg
  L4_2 = L4_2.debug
  L5_2 = "Loading escort on citizen."
  L4_2(L5_2)
  L4_2 = UtilsService
  L4_2 = L4_2.LoadAnimationDict
  L5_2 = L0_1
  L4_2(L5_2)
  L4_2 = TriggerEvent
  L5_2 = "rcore_police:client:listener"
  L6_2 = {}
  L6_2.action = "ESCORT"
  L6_2.state = true
  L4_2(L5_2, L6_2)
  L4_2 = Interactions
  L4_2 = L4_2.Escort
  L4_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE = true
  L4_2 = UtilsService
  L4_2 = L4_2.GetServerIdFromPed
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 or L5_2
  if L4_2 then
    L5_2 = Player
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.state
    L5_2 = L5_2.rcorePoliceDead
  end
  if A1_2 then
    L6_2 = A1_2.targetDeath
  end
  if L6_2 or L5_2 then
    L6_2 = UtilsService
    L6_2 = L6_2.LoadAnimationDict
    L7_2 = "nm"
    L6_2(L7_2)
    L6_2 = AttachEntityToEntity
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = 0
    L10_2 = 0.27
    L11_2 = 0.15
    L12_2 = 0.63
    L13_2 = 0.5
    L14_2 = 0.5
    L15_2 = 0.0
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L19_2 = false
    L20_2 = 2
    L21_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
    L6_2 = TaskPlayAnim
    L7_2 = L2_2
    L8_2 = "nm"
    L9_2 = "firemans_carry"
    L10_2 = 8.0
    L11_2 = -8.0
    L12_2 = -1
    L13_2 = 33
    L14_2 = 0
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  else
    L6_2 = IsPedCuffed
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L6_2 = Config
      L6_2 = L6_2.Escort
      L6_2 = L6_2.BreakWhenNotCuffsOn
      if L6_2 then
        L6_2 = UI
        L6_2 = L6_2.HelpKeys
        L7_2 = {}
        L8_2 = {}
        L9_2 = {}
        L10_2 = Config
        L10_2 = L10_2.Escort
        L10_2 = L10_2.BreakWhenNotCuffsOnKey
        L9_2.key = L10_2
        L10_2 = _U
        L11_2 = "ATTEMPT_BREAK_LABEL"
        L10_2 = L10_2(L11_2)
        L9_2.label = L10_2
        L8_2[1] = L9_2
        L7_2.keys = L8_2
        L8_2 = true
        L6_2(L7_2, L8_2)
      end
    end
  end
  L6_2 = Interactions
  L6_2 = L6_2.Escort
  L7_2 = {}
  L7_2.initiatorPlayerId = A0_2
  L7_2.initiatorPed = L3_2
  L7_2.targetPed = L2_2
  L7_2.targetServerId = L4_2
  if A1_2 then
    L8_2 = A1_2.targetDeath
    if L8_2 then
      goto lbl_175
    end
  end
  L8_2 = false
  ::lbl_175::
  L7_2.targetDead = L8_2
  if A1_2 then
    L8_2 = A1_2.initiatorDeath
    if L8_2 then
      goto lbl_182
    end
  end
  L8_2 = false
  ::lbl_182::
  L7_2.initiatorDead = L8_2
  L8_2 = L0_1
  L7_2.animDict = L8_2
  L8_2 = L1_1
  L7_2.animName = L8_2
  L6_2.Session = L7_2
  if A1_2 then
    L6_2 = A1_2.targetDeath
  end
  if not L6_2 and not L5_2 then
    L6_2 = UtilsService
    L6_2 = L6_2.AttachFromPedToTarget
    L7_2 = L3_2
    L8_2 = L2_2
    L6_2(L7_2, L8_2)
  end
end
L2_1.SetCitizenEscort = L3_1
L2_1 = Interactions
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Interactions
  L1_2 = L1_2.Escort
  L1_2 = L1_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE
  if not L1_2 then
    L1_2 = dbg
    L1_2 = L1_2.debug
    L2_2 = "StopCitizenEscort: Not found any active session, canceling action."
    return L1_2(L2_2)
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = DetachEntity
  L3_2 = L1_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = DetachEntity
  L3_2 = A0_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Interactions
  L2_2 = L2_2.Escort
  L2_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE = false
  L2_2 = Interactions
  L2_2 = L2_2.Escort
  L2_2.Session = nil
  L2_2 = TriggerEvent
  L3_2 = "rcore_police:client:listener"
  L4_2 = {}
  L4_2.action = "ESCORT"
  L4_2.state = false
  L2_2(L3_2, L4_2)
  L2_2 = InteractionService
  L2_2 = L2_2.isCuffed
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = Interactions
    L3_2 = L3_2.Cuff
    L3_2.TARGET_PLAYER_CUFF_STATE = true
  end
  L3_2 = escortEscape
  if L3_2 then
    escortEscape = false
  end
  L3_2 = IsPedCuffed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = Config
    L3_2 = L3_2.Escort
    L3_2 = L3_2.BreakWhenNotCuffsOn
    if L3_2 then
      L3_2 = UI
      L3_2 = L3_2.HelpKeys
      L4_2 = nil
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "StopCitizenEscort: Removing escort from you, since initiator has done it."
  L3_2(L4_2)
end
L2_1.StopCitizenEscort = L3_1
