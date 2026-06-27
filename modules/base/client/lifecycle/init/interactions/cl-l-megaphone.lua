local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = 250
L1_1 = "amb@world_human_mobile_film_shocking@female@base"
L2_1 = "base"
L3_1 = false
L4_1 = CreateThread
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = UtilsService
  L0_2 = L0_2.LoadAnimationDict
  L1_2 = L1_1
  L0_2(L1_2)
  while true do
    L0_2 = Wait
    L1_2 = L0_1
    L0_2(L1_2)
    L0_2 = Interactions
    L0_2 = L0_2.MegaPhone
    L0_2 = L0_2.state
    if L0_2 then
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = DisablePlayerFiring
      L2_2 = PlayerId
      L2_2 = L2_2()
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = IsEntityPlayingAnim
      L2_2 = L0_2
      L3_2 = L1_1
      L4_2 = L2_1
      L5_2 = 3
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      if not L1_2 then
        L1_2 = TaskPlayAnim
        L2_2 = L0_2
        L3_2 = L1_1
        L4_2 = L2_1
        L5_2 = 8.0
        L6_2 = -8
        L7_2 = -1
        L8_2 = MOVEMENT_FLAG
        L8_2 = L8_2.MOVE_ALL_BODY
        L9_2 = 0
        L10_2 = 0
        L11_2 = 0
        L12_2 = 0
        L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end
L4_1(L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = IsEntityPlayingAnim
  L2_2 = A0_2
  L3_2 = L1_1
  L4_2 = L2_1
  L5_2 = 3
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
IsTargetUsingMegaphone = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = isResourcePresentProvideless
  L1_2 = THIRD_PARTY_RESOURCE
  L1_2 = L1_2.PMA_VOICE
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = exports
    L0_2 = L0_2["pma-voice"]
    L1_2 = L0_2
    L0_2 = L0_2.clearProximityOverride
    L0_2(L1_2)
  end
end
ClearProximity = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = 3
  L1_2 = {}
  L2_2 = _U
  L3_2 = "MEGA_PHONE.IS_ON"
  L2_2 = L2_2(L3_2)
  L1_2.label = L2_2
  L1_2.key = ""
  L2_2 = MEGAPHONE_KEYS
  L2_2 = L2_2[L0_2]
  if L2_2 then
    L2_2 = MEGAPHONE_KEYS
    L2_2 = L2_2[L0_2]
    L3_2 = L1_2.label
    L2_2.label = L3_2
    L2_2 = MEGAPHONE_KEYS
    L2_2 = L2_2[L0_2]
    L3_2 = L1_2.key
    L2_2.key = L3_2
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Updated third MEGAPHONE_KEY"
    L2_2(L3_2)
  end
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Config
  L0_2 = L0_2.Megaphone
  L0_2 = L0_2.Enable
  if not L0_2 then
    return
  end
  L0_2 = Interactions
  L0_2 = L0_2.MegaPhone
  L0_2 = L0_2.state
  if not L0_2 then
    return
  end
  L0_2 = L3_1
  L0_2 = not L0_2
  L3_1 = L0_2
  L0_2 = isResourcePresentProvideless
  L1_2 = THIRD_PARTY_RESOURCE
  L1_2 = L1_2.PMA_VOICE
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.debug
    L1_2 = "Setting proximity range since having megaphone!"
    L0_2(L1_2)
    L0_2 = L3_1
    if L0_2 then
      L0_2 = L4_1
      L0_2()
      L0_2 = exports
      L0_2 = L0_2["pma-voice"]
      L1_2 = L0_2
      L0_2 = L0_2.overrideProximityRange
      L2_2 = Config
      L2_2 = L2_2.Megaphone
      L2_2 = L2_2.HearRangeRadius
      if not L2_2 then
        L2_2 = 50.0
      end
      L3_2 = L3_1
      L0_2(L1_2, L2_2, L3_2)
    else
      L0_2 = ClearProximity
      L0_2()
      L0_2 = MEGAPHONE_KEYS
      L0_2 = L0_2[3]
      if L0_2 then
        L0_2 = MEGAPHONE_KEYS
        L0_2 = L0_2[3]
        L1_2 = _U
        L2_2 = "MEGA_PHONE.IS_OFF"
        L1_2 = L1_2(L2_2)
        L0_2.label = L1_2
        L0_2 = MEGAPHONE_KEYS
        L0_2 = L0_2[3]
        L0_2.key = ""
        L0_2 = dbg
        L0_2 = L0_2.debug
        L1_2 = "Updated third MEGAPHONE_KEY to inactive"
        L0_2(L1_2)
      end
    end
    L0_2 = UI
    L0_2 = L0_2.HelpKeys
    L1_2 = {}
    L2_2 = MEGAPHONE_KEYS
    L1_2.keys = L2_2
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
end
HandleOverrideProximity = L5_1
function L5_1()
  local L0_2, L1_2
  L0_2 = Interactions
  L0_2 = L0_2.MegaPhone
  L0_2 = L0_2.state
  if not L0_2 then
    return
  end
  L0_2 = Props
  L0_2 = L0_2.RequestMegaPhone
  L0_2()
end
ExitMegaphone = L5_1
L5_1 = Config
L5_1 = L5_1.Megaphone
L5_1 = L5_1.Enable
if L5_1 then
  L5_1 = RegisterKey
  L6_1 = HandleOverrideProximity
  L7_1 = "RCORE_POLICE_INTERACT_MEGAPHONE"
  L8_1 = _U
  L9_1 = "KEY_MAPPING.MEGAPHONE_STATE"
  L8_1 = L8_1(L9_1)
  L9_1 = Config
  L9_1 = L9_1.Megaphone
  L9_1 = L9_1.TurnKey
  L10_1 = nil
  L11_1 = {}
  L11_1.state = true
  L11_1.cooldown = 1000
  L5_1(L6_1, L7_1, L8_1, L9_1, L10_1, L11_1)
  L5_1 = RegisterKey
  L6_1 = ExitMegaphone
  L7_1 = "RCORE_POLICE_INTERACT_MEGAPHONE_EXIT"
  L8_1 = _U
  L9_1 = "KEY_MAPPING.MEGAPHONE_EXIT"
  L8_1 = L8_1(L9_1)
  L9_1 = Config
  L9_1 = L9_1.Megaphone
  L9_1 = L9_1.ExitKey
  L10_1 = nil
  L11_1 = {}
  L11_1.state = true
  L11_1.cooldown = 1000
  L5_1(L6_1, L7_1, L8_1, L9_1, L10_1, L11_1)
end
