local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = 250
escortEscape = false
L1_1 = NetworkService
L1_1 = L1_1.RegisterNetEvent
L2_1 = "EscortState"
function L3_1(A0_2, A1_2)
  local L2_2
  if A0_2 then
    L2_2 = Interactions
    L2_2 = L2_2.Escort
    L2_2.TARGET_PLAYER_ESCORT_INITIATOR_STATE = A1_2
  end
end
L1_1(L2_1, L3_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = IsPedRunning
  L1_2 = IsPedSprinting
  L2_2 = ForcePedMotionState
  L3_2 = DisableControlAction
  L4_2 = UtilsService
  L4_2 = L4_2.LoadAnimationDict
  L5_2 = "rcmnigel1d"
  L4_2(L5_2)
  while true do
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = PlayerId
    L5_2 = L5_2()
    L6_2 = Wait
    L7_2 = L0_1
    if not L7_2 then
      L7_2 = 500
    end
    L6_2(L7_2)
    L6_2 = InteractionService
    L6_2 = L6_2.isEscorted
    L6_2 = L6_2()
    if not L6_2 then
      L6_2 = escortHelpKeys
      if L6_2 then
        escortHelpKeys = false
        L6_2 = UI
        L6_2 = L6_2.ResetHelpKeys
        L6_2()
      end
    end
    L6_2 = Config
    L6_2 = L6_2.DebugStates
    if L6_2 then
      L6_2 = dbg
      L6_2 = L6_2.critical
      L7_2 = [[
isEscorted: %s
not IsPedCuffed: %s
not blockAction: %s]]
      L8_2 = InteractionService
      L8_2 = L8_2.isEscorted
      L8_2 = L8_2()
      L9_2 = IsPedCuffed
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      L9_2 = not L9_2
      L10_2 = blockAction
      L10_2 = not L10_2
      L6_2(L7_2, L8_2, L9_2, L10_2)
    end
    L6_2 = InteractionService
    L6_2 = L6_2.isEscorted
    L6_2 = L6_2()
    if L6_2 then
      L6_2 = UtilsService
      L6_2 = L6_2.IsPedDeath
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = IsPedCuffed
        L7_2 = L4_2
        L6_2 = L6_2(L7_2)
        if not L6_2 then
          L6_2 = Interactions
          L6_2 = L6_2.Escort
          L6_2 = L6_2.TARGET_PLAYER_ESCORT_INITIATOR_STATE
          if L6_2 then
            L6_2 = escortEscape
            if not L6_2 then
              L6_2 = blockAction
              if not L6_2 then
                L6_2 = 0
                L0_1 = L6_2
                L6_2 = escortHelpKeys
                if not L6_2 then
                  escortHelpKeys = true
                  L6_2 = {}
                  L7_2 = {}
                  L8_2 = Config
                  L8_2 = L8_2.Escort
                  L8_2 = L8_2.EnableStopEscortKey
                  L7_2.key = L8_2
                  L8_2 = _U
                  L9_2 = "STOP_ESCORT_LABEL"
                  L8_2 = L8_2(L9_2)
                  L7_2.label = L8_2
                  L6_2[1] = L7_2
                  L7_2 = Config
                  L7_2 = L7_2.Escort
                  L8_2 = "EnableCuffCitizenWhenNotCuffedDuringEscort"
                  L7_2 = L7_2[L8_2]
                  if L7_2 then
                    L7_2 = #L6_2
                    L7_2 = L7_2 + 1
                    L8_2 = {}
                    L9_2 = Config
                    L9_2 = L9_2.Escort
                    L9_2 = L9_2.CuffCitizenKey
                    if not L9_2 then
                      L9_2 = "H"
                    end
                    L8_2.key = L9_2
                    L9_2 = _U
                    L10_2 = "CUFF_LABEL"
                    L9_2 = L9_2(L10_2)
                    L8_2.label = L9_2
                    L6_2[L7_2] = L8_2
                  end
                  L7_2 = UI
                  L7_2 = L7_2.HelpKeys
                  L8_2 = {}
                  L8_2.keys = L6_2
                  L9_2 = true
                  L7_2(L8_2, L9_2)
                end
                L6_2 = L0_2
                L7_2 = L4_2
                L6_2 = L6_2(L7_2)
                if not L6_2 then
                  L6_2 = L1_2
                  L7_2 = L4_2
                  L6_2 = L6_2(L7_2)
                  if not L6_2 then
                    goto lbl_138
                  end
                end
                L6_2 = SetTimeout
                L7_2 = 100
                function L8_2()
                  local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
                  L0_3 = DoesEntityExist
                  L1_3 = L4_2
                  L0_3 = L0_3(L1_3)
                  if L0_3 then
                    L0_3 = L2_2
                    L1_3 = L4_2
                    L2_3 = -668482597
                    L3_3 = 0
                    L4_3 = 0
                    L5_3 = 0
                    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
                  end
                end
                L6_2(L7_2, L8_2)
                ::lbl_138::
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 24
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 257
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 25
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 45
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 22
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 44
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 37
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 23
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 73
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 2
                L8_2 = 199
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 59
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 71
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 72
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 2
                L8_2 = 36
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 0
                L8_2 = 75
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
                L6_2 = L3_2
                L7_2 = 27
                L8_2 = 75
                L9_2 = true
                L6_2(L7_2, L8_2, L9_2)
              end
            end
          end
        end
      end
    end
  end
end
L1_1(L2_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  while true do
    L0_2 = Wait
    L1_2 = L0_1
    if not L1_2 then
      L1_2 = 500
    end
    L0_2(L1_2)
    L0_2 = Interactions
    L0_2 = L0_2.Escort
    L0_2 = L0_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE
    if L0_2 then
      L0_2 = Interactions
      L0_2 = L0_2.Escort
      L0_2 = L0_2.Session
      if L0_2 then
        L1_2 = L0_2.targetPed
        if L1_2 then
          L1_2 = L0_2.initiatorPed
          if L1_2 then
            L1_2 = IsEntityAttachedToEntity
            L2_2 = L0_2.targetPed
            L3_2 = L0_2.initiatorPed
            L1_2 = L1_2(L2_2, L3_2)
            L2_2 = IsPedStill
            L3_2 = L0_2.initiatorPed
            L2_2 = L2_2(L3_2)
            L2_2 = not L2_2
            L3_2 = IsEntityPlayingAnim
            L4_2 = L0_2.targetPed
            L5_2 = L0_2.animDict
            L6_2 = L0_2.animName
            L7_2 = 3
            L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
            L4_2 = IsPedSittingInAnyVehicle
            L5_2 = L0_2.targetPed
            L4_2 = L4_2(L5_2)
            if L4_2 then
              L5_2 = Interactions
              L5_2 = L5_2.StopCitizenEscort
              L6_2 = L0_2.targetPed
              L5_2(L6_2)
            end
            if not L1_2 then
              L5_2 = UtilsService
              L5_2 = L5_2.AttachFromPedToTarget
              L6_2 = L0_2.initiatorPed
              L7_2 = L0_2.targetPed
              L5_2(L6_2, L7_2)
            end
            L5_2 = IsEntityPlayingAnim
            L6_2 = L0_2.targetPed
            L7_2 = HANDS_UP
            L7_2 = L7_2.DICT
            L8_2 = HANDS_UP
            L8_2 = L8_2.NAME
            L9_2 = 3
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
            if not L5_2 then
              L5_2 = GetHandsUPState
              L5_2 = L5_2()
              if not L5_2 then
                goto lbl_75
              end
            end
            L5_2 = StopEntityAnim
            L6_2 = L0_2.targetPed
            L7_2 = HANDS_UP
            L7_2 = L7_2.DICT
            L8_2 = HANDS_UP
            L8_2 = L8_2.NAME
            L9_2 = 1.0
            L5_2(L6_2, L7_2, L8_2, L9_2)
            ::lbl_75::
            L5_2 = IsEntityPlayingAnim
            L6_2 = L0_2.targetPed
            L7_2 = KNEE
            L7_2 = L7_2.DICT
            L8_2 = KNEE
            L8_2 = L8_2.NAME
            L9_2 = 3
            L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
            if not L5_2 then
              L5_2 = GetKneeState
              L5_2 = L5_2()
              if not L5_2 then
                goto lbl_97
              end
            end
            L5_2 = StopEntityAnim
            L6_2 = L0_2.targetPed
            L7_2 = KNEE
            L7_2 = L7_2.DICT
            L8_2 = KNEE
            L8_2 = L8_2.NAME
            L9_2 = 1.0
            L5_2(L6_2, L7_2, L8_2, L9_2)
            ::lbl_97::
            L5_2 = IsPedCuffed
            L6_2 = L0_2.targetPed
            L5_2 = L5_2(L6_2)
            if not L5_2 then
              L5_2 = Config
              L5_2 = L5_2.Escort
              L5_2 = L5_2.BreakWhenNotCuffsOn
              if L5_2 then
                escortEscape = true
              end
            end
            L5_2 = DeadUtils
            L5_2 = L5_2.IsTargetPlayerDead
            L6_2 = L0_2.targetServerId
            L5_2 = L5_2(L6_2)
            L6_2 = L0_2.targetDead
            if L6_2 or L5_2 then
              L6_2 = IsEntityPlayingAnim
              L7_2 = L0_2.targetPed
              L8_2 = "nm"
              L9_2 = "firemans_carry"
              L10_2 = 3
              L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
              if not L6_2 then
                L6_2 = AttachEntityToEntity
                L7_2 = L0_2.targetPed
                L8_2 = L0_2.initiatorPed
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
                L7_2 = L0_2.targetPed
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
              end
            else
              L6_2 = IsPedCuffed
              L7_2 = L0_2.targetPed
              L6_2 = L6_2(L7_2)
              if not L6_2 then
                L6_2 = IsEntityPlayingAnim
                L7_2 = L0_2.targetPed
                L8_2 = "mp_arresting"
                L9_2 = "idle"
                L10_2 = 3
                L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
                if not L6_2 then
                  L6_2 = TaskPlayAnim
                  L7_2 = L0_2.targetPed
                  L8_2 = "mp_arresting"
                  L9_2 = "idle"
                  L10_2 = 8.0
                  L11_2 = -8.0
                  L12_2 = -1
                  L13_2 = 49
                  L14_2 = 0
                  L15_2 = 0
                  L16_2 = 0
                  L17_2 = 0
                  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
                end
              end
              if L2_2 and not L3_2 then
                L6_2 = TaskPlayAnim
                L7_2 = L0_2.targetPed
                L8_2 = L0_2.animDict
                L9_2 = L0_2.animName
                L10_2 = 3.0
                L11_2 = 3.0
                L12_2 = -1
                L13_2 = 1
                L14_2 = 0
                L15_2 = 0
                L16_2 = 0
                L17_2 = 0
                L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
              elseif not L2_2 and L3_2 then
                L6_2 = Interactions
                L6_2 = L6_2.Cuff
                L6_2 = L6_2.Session
                if L6_2 then
                  L6_2 = Interactions
                  L6_2 = L6_2.Cuff
                  L6_2 = L6_2.Session
                  L6_2 = L6_2.animType
                end
                L7_2 = IsPedCuffed
                L8_2 = L0_2.targetPed
                L7_2 = L7_2(L8_2)
                if L7_2 and "back" == L6_2 then
                  L7_2 = TaskPlayAnim
                  L8_2 = L0_2.targetPed
                  L9_2 = "mp_arresting"
                  L10_2 = "idle"
                  L11_2 = 8.0
                  L12_2 = -8.0
                  L13_2 = -1
                  L14_2 = 1
                  L15_2 = 0
                  L16_2 = 0
                  L17_2 = 0
                  L18_2 = 0
                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                else
                  L7_2 = TaskPlayAnim
                  L8_2 = L0_2.targetPed
                  L9_2 = L0_2.animDict
                  L10_2 = "idle"
                  L11_2 = 8.0
                  L12_2 = -8.0
                  L13_2 = -1
                  L14_2 = 1
                  L15_2 = 0
                  L16_2 = 0
                  L17_2 = 0
                  L18_2 = 0
                  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  L2_2 = {}
  L2_2.speed = 2
  L2_2.maxFails = 3
  L2_2.maxRevs = 3
  L2_2.neededPicks = 1
  L1_2.low = L2_2
  L2_2 = {}
  L2_2.speed = 3
  L2_2.maxFails = 2
  L2_2.maxRevs = 2
  L2_2.neededPicks = 1
  L1_2.easy = L2_2
  L2_2 = {}
  L2_2.speed = 4
  L2_2.maxFails = 1
  L2_2.maxRevs = 1
  L2_2.neededPicks = 1
  L1_2.medium = L2_2
  L2_2 = {}
  L2_2.speed = 5
  L2_2.maxFails = 0
  L2_2.maxRevs = 1
  L2_2.neededPicks = 1
  L1_2.high = L2_2
  L2_2 = L1_2[A0_2]
  return L2_2
end
GetMinigameSettings = L1_1
L1_1 = Config
L1_1 = L1_1.Escort
L1_1 = L1_1.BreakWhenNotCuffsOn
if L1_1 then
  function L1_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = escortEscape
    if L1_2 then
      L1_2 = IsPedCuffed
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L1_2 = InteractionService
        L1_2 = L1_2.isEscorted
        L1_2 = L1_2()
        if L1_2 then
          L1_2 = Config
          L1_2 = L1_2.Escort
          L1_2 = L1_2.BreakWhenNotCuffsOn
          if L1_2 then
            escortEscape = false
            L1_2 = UI
            L1_2 = L1_2.ResetHelpKeys
            L1_2()
            L1_2 = Wait
            L2_2 = 300
            L1_2(L2_2)
            L1_2 = 0
            L2_2 = 1
            L3_2 = {}
            L4_2 = "low"
            L5_2 = "easy"
            L6_2 = "medium"
            L7_2 = "high"
            L3_2[1] = L4_2
            L3_2[2] = L5_2
            L3_2[3] = L6_2
            L3_2[4] = L7_2
            L4_2 = L3_2[L2_2]
            L5_2 = GetMinigameSettings
            L6_2 = L4_2
            L5_2 = L5_2(L6_2)
            L6_2 = UI
            L6_2 = L6_2.StartMinigame
            L7_2 = {}
            L8_2 = L5_2.speed
            L7_2.speed = L8_2
            L8_2 = L5_2.maxFails
            L7_2.maxFails = L8_2
            L8_2 = L5_2.maxRevs
            L7_2.maxRevs = L8_2
            L8_2 = L5_2.neededPicks
            L7_2.neededPicks = L8_2
            L6_2 = L6_2(L7_2)
            repeat
              if L6_2 then
                L1_2 = L1_2 + 1
              end
              if L1_2 >= 4 then
                L1_2 = 0
                L2_2 = L2_2 + 1
                L7_2 = #L3_2
                if L2_2 <= L7_2 then
                  L4_2 = L3_2[L2_2]
                  L7_2 = GetMinigameSettings
                  L8_2 = L4_2
                  L7_2 = L7_2(L8_2)
                  L5_2 = L7_2
                  L7_2 = UI
                  L7_2 = L7_2.StartMinigame
                  L8_2 = {}
                  L9_2 = L5_2.speed
                  L8_2.speed = L9_2
                  L9_2 = L5_2.maxFails
                  L8_2.maxFails = L9_2
                  L9_2 = L5_2.maxRevs
                  L8_2.maxRevs = L9_2
                  L9_2 = L5_2.neededPicks
                  L8_2.neededPicks = L9_2
                  L7_2 = L7_2(L8_2)
                  L6_2 = L7_2
                else
                  break
                end
              end
              L7_2 = Wait
              L8_2 = 100
              L7_2(L8_2)
              if L1_2 >= 4 then
                break
              end
              L7_2 = #L3_2
            until L2_2 > L7_2
            if L6_2 then
              L7_2 = PlayerPedId
              L7_2 = L7_2()
              L8_2 = Interactions
              L8_2 = L8_2.Escort
              L8_2 = L8_2.Session
              L8_2 = L8_2.initiatorPlayerId
              L9_2 = UtilsService
              L9_2 = L9_2.IsPlayerInFrontOrBehind
              L10_2 = L8_2
              L9_2 = L9_2(L10_2)
              L10_2 = Interactions
              L10_2 = L10_2.RemoveCuffs
              L11_2 = true
              L10_2(L11_2)
              L10_2 = Interactions
              L10_2 = L10_2.StopCitizenEscort
              L11_2 = L7_2
              L10_2(L11_2)
              blockAction = true
              L10_2 = SetTimeout
              L11_2 = 0
              function L12_2()
                local L0_3, L1_3, L2_3, L3_3, L4_3
                L0_3 = Interactions
                L0_3 = L0_3.Cuff
                L0_3 = L0_3.TARGET_PLAYER_CUFF_STATE
                if L0_3 then
                  L0_3 = Interactions
                  L0_3 = L0_3.Cuff
                  L0_3.TARGET_PLAYER_CUFF_STATE = false
                end
                L0_3 = TriggerServerEvent
                L1_3 = "rcore_police:server:requestCuffEscape"
                L2_3 = L8_2
                L3_3 = L9_2
                L4_3 = true
                L0_3(L1_3, L2_3, L3_3, L4_3)
                L0_3 = StartPunchAnim
                L1_3 = L9_2
                L0_3(L1_3)
                L0_3 = Wait
                L1_3 = 1000
                L0_3(L1_3)
                L0_3 = blockAction
                if L0_3 then
                  blockAction = false
                end
              end
              L10_2(L11_2, L12_2)
            end
          end
        end
      end
    end
  end
  TryEscapeWhenInEscort = L1_1
  L1_1 = RegisterKey
  L2_1 = TryEscapeWhenInEscort
  L3_1 = "RCORE_POLICE_ESCORT_ESCAPE"
  L4_1 = _U
  L5_1 = "KEY_MAPPING.ESCORT_ESCAPE"
  L4_1 = L4_1(L5_1)
  L5_1 = Config
  L5_1 = L5_1.Escort
  L5_1 = L5_1.BreakWhenNotCuffsOnKey
  L6_1 = nil
  L7_1 = {}
  L7_1.state = true
  L7_1.cooldown = 250
  L1_1(L2_1, L3_1, L4_1, L5_1, L6_1, L7_1)
end
L1_1 = Config
L1_1 = L1_1.Escort
L2_1 = "EnableCuffCitizenWhenNotCuffedDuringEscort"
L1_1 = L1_1[L2_1]
if L1_1 then
  function L1_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
    L0_2 = Utils
    L0_2 = L0_2.CanPlayerInteract
    L0_2 = L0_2()
    if not L0_2 then
      return
    end
    L0_2 = Utils
    L0_2 = L0_2.getClosestPlayers
    L1_2 = Config
    L1_2 = L1_2.CheckDistance
    L2_2 = false
    L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2)
    L3_2 = escortHelpKeys
    if L3_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "rcore_police:server:requestCuffDuringEscort"
      L5_2 = L0_2
      L3_2(L4_2, L5_2)
    end
  end
  TryToCuffCitizenDuringEscort = L1_1
  L1_1 = RegisterKey
  L2_1 = TryToCuffCitizenDuringEscort
  L3_1 = "RCORE_POLICE_ESCORT_CUFF"
  L4_1 = _U
  L5_1 = "ESCORT.KEYMAP_DESCRIPTION"
  L4_1 = L4_1(L5_1)
  if not L4_1 then
    L4_1 = "Cuff: Useable when being escorted"
  end
  L5_1 = Config
  L5_1 = L5_1.Escort
  L5_1 = L5_1.CuffCitizenKey
  if not L5_1 then
    L5_1 = "H"
  end
  L6_1 = nil
  L7_1 = {}
  L7_1.state = true
  L7_1.cooldown = 1000
  L1_1(L2_1, L3_1, L4_1, L5_1, L6_1, L7_1)
end
L1_1 = Config
L1_1 = L1_1.Escort
L1_1 = L1_1.EnableStopEscort
if L1_1 then
  function L1_1()
    local L0_2, L1_2
    L0_2 = Utils
    L0_2 = L0_2.CanPlayerInteract
    L0_2 = L0_2()
    if not L0_2 then
      return
    end
    L0_2 = escortHelpKeys
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "rcore_police:server:requestStopEscort"
      L0_2(L1_2)
    end
  end
  TryStopPoliceEscort = L1_1
  L1_1 = RegisterKey
  L2_1 = TryStopPoliceEscort
  L3_1 = "RCORE_POLICE_ESCORT_STOP"
  L4_1 = _U
  L5_1 = "KEY_MAPPING.STOP_ESCORT"
  L4_1 = L4_1(L5_1)
  L5_1 = Config
  L5_1 = L5_1.Escort
  L5_1 = L5_1.EnableStopEscortKey
  if not L5_1 then
    L5_1 = "G"
  end
  L6_1 = nil
  L7_1 = {}
  L7_1.state = true
  L7_1.cooldown = 250
  L1_1(L2_1, L3_1, L4_1, L5_1, L6_1, L7_1)
end
