local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = nil
L1_1 = false
L2_1 = HANDS_UP
L2_1 = L2_1.DICT
L3_1 = HANDS_UP
L3_1 = L3_1.NAME
L4_1 = 50
L5_1 = Config
L5_1 = L5_1.Handsup
L5_1 = L5_1.Animations
L6_1 = false
L7_1 = CreateThread
function L8_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L5_1
  L0_2 = #L0_2
  L1_2 = L0_2 + 1
  L0_2 = L5_1
  L2_2 = {}
  L3_2 = L2_1
  L2_2.dict = L3_2
  L3_2 = L3_1
  L2_2.name = L3_2
  L0_2[L1_2] = L2_2
  L0_2 = isResourcePresentProvideless
  L1_2 = "qb-smallresources"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = true
    L6_1 = L0_2
  end
end
L7_1(L8_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = nil
  if A0_2 then
    L2_2 = UtilsService
    L2_2 = L2_2.GetPlayerPedFromServerId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L1_2 = L2_2
  end
  if not L1_2 then
    L2_2 = L1_1
    return L2_2
  end
  L2_2 = L5_1
  if L2_2 then
    L2_2 = next
    L3_2 = L5_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = ipairs
      L3_2 = L5_1
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.dict
        if "" ~= L8_2 then
          L8_2 = L7_2.name
          if "" ~= L8_2 then
            L8_2 = IsEntityPlayingAnim
            L9_2 = L1_2
            L10_2 = L7_2.dict
            L11_2 = L7_2.name
            L12_2 = 3
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
            if L8_2 then
              L8_2 = true
              return L8_2
            end
          end
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
GetHandsUPState = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = Config
  L0_2 = L0_2.Handsup
  L0_2 = L0_2.CooldownTime
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L2_2 = Config
  L2_2 = L2_2.Handsup
  L2_2 = L2_2.Enable
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Handsup - Player want to use it, but its disabled in config.lua!"
    return L2_2(L3_2)
  end
  L2_2 = L6_1
  if L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Handsup - Disabling use of our hands  up feature, since detected qb/qbx small resources!"
    return L2_2(L3_2)
  end
  L2_2 = IsBusy
  if L2_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Handsup
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
  L3_2 = GetVehiclePedIsIn
  L4_2 = L2_2
  L5_2 = false
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = IsPedOnFoot
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = IsPedCuffed
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    return
  end
  L4_2 = GetKneeState
  L4_2 = L4_2()
  if L4_2 then
    return
  end
  L4_2 = InteractionService
  L4_2 = L4_2.isEscorted
  L4_2 = L4_2()
  if L4_2 then
    return
  end
  L4_2 = L1_1
  L4_2 = not L4_2
  L1_1 = L4_2
  L4_2 = L1_1
  if not L4_2 then
    L4_2 = IsEntityPlayingAnim
    L5_2 = L2_2
    L6_2 = L2_1
    L7_2 = L3_1
    L8_2 = 3
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.Handsup
      L4_2 = L4_2.Exit
      L5_2 = L2_2
      L4_2(L5_2)
      return
    end
  end
  L4_2 = GetGameTimer
  L4_2 = L4_2()
  L0_1 = L4_2
  L4_2 = UtilsService
  L4_2 = L4_2.LoadAnimationDict
  L5_2 = L2_1
  L4_2(L5_2)
  L4_2 = TaskPlayAnim
  L5_2 = L2_2
  L6_2 = L2_1
  L7_2 = L3_1
  L8_2 = 8.0
  L9_2 = -8.0
  L10_2 = -1
  L11_2 = L4_1
  L12_2 = 0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  while true do
    L4_2 = L1_1
    if not L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = 250
    L4_2(L5_2)
    L4_2 = L1_1
    if not L4_2 then
      break
    end
    L4_2 = Interactions
    L4_2 = L4_2.Cuff
    L4_2 = L4_2.TARGET_PLAYER_CUFF_STATE
    if not L4_2 then
      L4_2 = Interactions
      L4_2 = L4_2.Escort
      L4_2 = L4_2.TARGET_PLAYER_ESCORT_CITIZEN_STATE
      if not L4_2 then
        goto lbl_139
      end
    end
    L4_2 = false
    L1_1 = L4_2
    do break end
    ::lbl_139::
    L4_2 = IsEntityPlayingAnim
    L5_2 = L2_2
    L6_2 = L2_1
    L7_2 = L3_1
    L8_2 = 3
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    if not L4_2 then
      L4_2 = TaskPlayAnim
      L5_2 = L2_2
      L6_2 = L2_1
      L7_2 = L3_1
      L8_2 = 8.0
      L9_2 = -8.0
      L10_2 = -1
      L11_2 = L4_1
      L12_2 = 0
      L13_2 = false
      L14_2 = false
      L15_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
HandleHandsUP = L7_1
L7_1 = RegisterKey
L8_1 = HandleHandsUP
L9_1 = "RCORE_POLICE_HANDSUP"
L10_1 = _U
L11_1 = "KEY_MAPPING.HANDS_UP"
L10_1 = L10_1(L11_1)
L11_1 = Config
L11_1 = L11_1.Handsup
L11_1 = L11_1.Key
if not L11_1 then
  L11_1 = "X"
end
L7_1(L8_1, L9_1, L10_1, L11_1)
