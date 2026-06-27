local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = false
L1_1 = {}
L2_1 = -0.022
L3_1 = 0.058
L4_1 = -0.004
L5_1 = 0.0
L6_1 = 0.0
L7_1 = -90.0
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L2_1 = Interactions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L2_2 = Wait
    L3_2 = 2000
    L2_2(L3_2)
  end
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Removing cuffs from players valid"
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = DoesEntityExist
  L4_2 = Interactions
  L4_2 = L4_2.Entity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DetachEntity
    L4_2 = Interactions
    L4_2 = L4_2.Entity
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = DeleteEntity
    L4_2 = Interactions
    L4_2 = L4_2.Entity
    L3_2(L4_2)
  end
  L3_2 = DoesEntityExist
  L4_2 = Interactions
  L4_2 = L4_2.FrontEntity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = DetachEntity
    L4_2 = Interactions
    L4_2 = L4_2.FrontEntity
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = DeleteEntity
    L4_2 = Interactions
    L4_2 = L4_2.FrontEntity
    L3_2(L4_2)
  end
  L3_2 = ClearPedTasksImmediately
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = SetEnableHandcuffs
  L4_2 = L2_2
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetPedCanPlayGestureAnims
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetPedPathCanUseLadders
  L4_2 = L2_2
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = SetCurrentPedWeapon
  L4_2 = L2_2
  L5_2 = joaat
  L6_2 = "WEAPON_UNARMED"
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Interactions
  L3_2 = L3_2.Cuff
  L3_2.TARGET_PLAYER_CUFF_STATE = false
  L3_2 = Interactions
  L3_2 = L3_2.Cuff
  L3_2.Session = nil
  L3_2 = Interactions
  L3_2.Entity = nil
  L3_2 = Interactions
  L3_2.FrontEntity = nil
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Removing cuffs finished!"
  L3_2(L4_2)
  L3_2 = UI
  L3_2 = L3_2.StopMinigame
  L3_2()
  if "ziptie" ~= A1_2 then
    L3_2 = Sounds
    L3_2 = L3_2.PlayUncuff
    L3_2()
  end
end
L2_1.RemoveCuffs = L3_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsEntityAttached
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = DetachEntity
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L2_2 = ClearPedTasksImmediately
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = "melee@unarmed@streamed_core"
  L3_2 = "victim_failed_takedown_rear_r_facehit"
  L4_2 = 3000
  if "front" == A0_2 then
    L3_2 = "counter_attack_r"
    L4_2 = 2000
  end
  L5_2 = UtilsService
  L5_2 = L5_2.LoadAnimationDict
  L6_2 = L2_2
  L5_2(L6_2)
  L5_2 = TaskPlayAnim
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = 8.0
  L10_2 = 8.0
  L11_2 = L4_2
  L12_2 = 1
  L13_2 = 0.0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L5_2 = Wait
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = ClearPedTasksImmediately
  L6_2 = L1_2
  L5_2(L6_2)
end
StartPunchAnim = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Sync puch anim from citizen!"
  L2_2(L3_2)
  L2_2 = "melee@unarmed@streamed_variations"
  L3_2 = "victim_takedown_front_cross_r"
  L4_2 = 2000
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = IsActiveAnimGlobally
  if L6_2 then
    L6_2 = next
    L7_2 = IsActiveAnimGlobally
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = IsActiveAnimGlobally
      L6_2 = L6_2.dict
      L7_2 = IsActiveAnimGlobally
      L7_2 = L7_2.name
      L8_2 = IsEntityPlayingAnim
      L9_2 = L5_2
      L10_2 = L6_2
      L11_2 = L7_2
      L12_2 = 3
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      if L8_2 then
        L8_2 = StopEntityAnim
        L9_2 = L5_2
        L10_2 = L6_2
        L11_2 = L7_2
        L12_2 = 1.0
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      IsActiveAnimGlobally = nil
      L8_2 = dbg
      L8_2 = L8_2.debug
      L9_2 = "Stopped active hold anim on player, clearing it."
      L8_2(L9_2)
    end
  end
  L6_2 = UtilsService
  L6_2 = L6_2.LoadAnimationDict
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = ClearPedTasksImmediately
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = IsEntityAttached
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = DetachEntity
    L7_2 = L5_2
    L8_2 = false
    L9_2 = false
    L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = GetEntityHealth
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "front" == A1_2 then
    L7_2 = SetPedToRagdoll
    L8_2 = L5_2
    L9_2 = 2000
    L10_2 = 2000
    L11_2 = 0
    L12_2 = false
    L13_2 = false
    L14_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L7_2 = Wait
    L8_2 = 2000
    L7_2(L8_2)
    L7_2 = SetEntityHealth
    L8_2 = L5_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = TaskPlayAnim
  L8_2 = L5_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = -8.0
  L12_2 = 8.0
  L13_2 = L4_2
  L14_2 = 1
  L15_2 = 0.0
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L7_2 = Wait
  L8_2 = L4_2
  L7_2(L8_2)
  L7_2 = ClearPedTasksImmediately
  L8_2 = L5_2
  L7_2(L8_2)
  L7_2 = SetPedToRagdoll
  L8_2 = L5_2
  L9_2 = 2000
  L10_2 = 2000
  L11_2 = 3
  L12_2 = false
  L13_2 = false
  L14_2 = false
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L7_2 = Wait
  L8_2 = 2000
  L7_2(L8_2)
  L7_2 = SetEntityHealth
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = SetEnableHandcuffs
  L8_2 = L5_2
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = MakePedIgnoreHitFromOtherPlayer
  L8_2 = L5_2
  L9_2 = false
  L7_2(L8_2, L9_2)
end
PunchSync = L2_1
L2_1 = Interactions
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "SetCitizenCuffs: Cuff motion is in progress."
  L3_2(L4_2)
  L3_2 = Config
  L3_2 = L3_2.Cuffing
  L3_2 = L3_2.BreakCuffsMinigame
  if L3_2 then
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = 1
    L5_2 = 100
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = Config
    L4_2 = L4_2.Cuffing
    L4_2 = L4_2.BreakCuffsChance
    if not (L4_2 >= 100) then
      L4_2 = Config
      L4_2 = L4_2.Cuffing
      L4_2 = L4_2.BreakTackleChance
      if not (L3_2 >= L4_2) then
        goto lbl_29
      end
    end
    L4_2 = SetTimeout
    L5_2 = 0
    function L6_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = UI
      L0_3 = L0_3.StartMinigame
      L0_3 = L0_3()
      L1_3 = true
      L0_1 = L1_3
      if L0_3 then
        L1_3 = FreezeEntityPosition
        L2_3 = A0_2
        L3_3 = false
        L1_3(L2_3, L3_3)
        L1_3 = Interactions
        L1_3 = L1_3.RemoveCuffs
        L2_3 = true
        L1_3(L2_3)
        L1_3 = Interactions
        L1_3 = L1_3.StopCitizenEscort
        L2_3 = A0_2
        L1_3(L2_3)
        L1_3 = Interactions
        L1_3 = L1_3.Cuff
        L1_3 = L1_3.TARGET_PLAYER_CUFF_STATE
        if L1_3 then
          L1_3 = Interactions
          L1_3 = L1_3.Cuff
          L1_3.TARGET_PLAYER_CUFF_STATE = false
        end
        L1_3 = SetTimeout
        L2_3 = 100
        function L3_3()
          local L0_4, L1_4, L2_4, L3_4
          L0_4 = TriggerServerEvent
          L1_4 = "rcore_police:server:requestCuffEscape"
          L2_4 = A1_2
          L3_4 = A2_2
          L0_4(L1_4, L2_4, L3_4)
          L0_4 = StartPunchAnim
          L1_4 = A2_2
          L0_4(L1_4)
        end
        L1_3(L2_3, L3_3)
      end
    end
    L4_2(L5_2, L6_2)
  end
  ::lbl_29::
  if "front" == A2_2 then
    L3_2 = SetTimeout
    L4_2 = Config
    L4_2 = L4_2.Cuffing
    L4_2 = L4_2.BreakCuffsTimeFront
    L4_2 = L4_2 * 1000
    function L5_2()
      local L0_3, L1_3
      L0_3 = UI
      L0_3 = L0_3.StopMinigame
      L0_3()
    end
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = 500
  L4_2 = Config
  L4_2 = L4_2.Cuffing
  L4_2 = L4_2.BreakCuffsTimeBack
  L4_2 = L4_2 * 1000
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L6_2 = FreezeEntityPosition
  L7_2 = A0_2
  L8_2 = true
  L6_2(L7_2, L8_2)
  repeat
    L6_2 = Wait
    L7_2 = L3_2
    L6_2(L7_2)
    L6_2 = GetGameTimer
    L6_2 = L6_2()
    L6_2 = L6_2 - L5_2
    if L4_2 <= L6_2 then
      break
    end
    L6_2 = L0_1
  until L6_2
  L6_2 = FreezeEntityPosition
  L7_2 = A0_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = UI
  L6_2 = L6_2.StopMinigame
  L6_2()
  L6_2 = false
  L0_1 = L6_2
  L6_2 = dbg
  L6_2 = L6_2.debug
  L7_2 = "SetCitizenCuffs: Cuff motion is finished."
  L6_2(L7_2)
end
L2_1.SetCuffingMotion = L3_1
L2_1 = Interactions
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "SetCitizenCuffs: Starting cuffing process."
  L2_2(L3_2)
  L2_2 = Interactions
  L2_2 = L2_2.RunCuffPre
  L3_2 = "citizen"
  L2_2(L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = UtilsService
  L4_2 = L4_2.IsPlayerInFrontOrBehind
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if "ziptie" == A1_2 then
    L4_2 = "back"
  end
  L5_2 = Interactions
  L5_2 = L5_2.Cuff
  L5_2 = L5_2.TARGET_PLAYER_ANIM_DICT
  L6_2 = Interactions
  L6_2 = L6_2.Cuff
  L6_2 = L6_2.TARGET_PLAYER_ANIM_DICT_NAME
  L7_2 = 18905
  if "back" == L4_2 then
    L5_2 = "mp_arresting"
    L6_2 = "idle"
    L7_2 = 60309
  end
  L8_2 = UtilsService
  L8_2 = L8_2.LoadAnimationDict
  L9_2 = L5_2
  L8_2(L9_2)
  L8_2 = dbg
  L8_2 = L8_2.debug
  L9_2 = "SetCitizenCuffs: Requesting sync cuffing motion. %s"
  L10_2 = L4_2
  L8_2(L9_2, L10_2)
  L8_2 = EntityAttach
  L8_2 = L8_2.CUFFS
  L9_2 = L4_2 or L9_2
  if L4_2 then
    L10_2 = L4_2
    L9_2 = L4_2.upper
    L9_2 = L9_2(L10_2)
  end
  L8_2 = L8_2[L9_2]
  L9_2 = L8_2 or L9_2
  if L8_2 then
    L9_2 = L8_2.rot
  end
  L10_2 = L8_2 or L10_2
  if L8_2 then
    L10_2 = L8_2.offset
  end
  if "ziptie" == A1_2 then
    L11_2 = Interactions
    L11_2 = L11_2.Cuff
    L11_2.TARGET_PLAYER_MODEL = "hei_prop_zip_tie_positioned"
    L11_2 = GetPedBoneCoords
    L12_2 = L2_2
    L13_2 = 60309
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L3_2 = L11_2
    L7_2 = 60309
    L11_2 = vec3
    L12_2 = L1_1
    L12_2 = L12_2[1]
    L13_2 = L1_1
    L13_2 = L13_2[2]
    L14_2 = L1_1
    L14_2 = L14_2[3]
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L11_2
    L11_2 = vec3
    L12_2 = L1_1
    L12_2 = L12_2[4]
    L13_2 = L1_1
    L13_2 = L13_2[5]
    L14_2 = L1_1
    L14_2 = L14_2[6]
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2 = L11_2
  end
  L11_2 = UtilsService
  L11_2 = L11_2.SpawnObject
  L12_2 = Interactions
  L12_2 = L12_2.Cuff
  L12_2 = L12_2.TARGET_PLAYER_MODEL
  L13_2 = L3_2
  L14_2 = true
  L15_2 = true
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = dbg
  L12_2 = L12_2.debug
  L13_2 = "SetCitizenCuffs: Creating cuff entity."
  L12_2(L13_2)
  L12_2 = SetEntityCollision
  L13_2 = L11_2
  L14_2 = false
  L15_2 = false
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = AttachEntityToEntity
  L13_2 = L11_2
  L14_2 = L2_2
  L15_2 = GetPedBoneIndex
  L16_2 = L2_2
  L17_2 = L7_2
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = L10_2.x
  L17_2 = L10_2.y
  L18_2 = L10_2.z
  L19_2 = L9_2.x
  L20_2 = L9_2.y
  L21_2 = L9_2.z
  L22_2 = true
  L23_2 = false
  L24_2 = false
  L25_2 = true
  L26_2 = 0
  L27_2 = true
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2)
  L12_2 = dbg
  L12_2 = L12_2.debug
  L13_2 = "SetCitizenCuffs: Attaching cuffs to player."
  L12_2(L13_2)
  L12_2 = SetPedCanPlayGestureAnims
  L13_2 = L2_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = SetPedPathCanUseLadders
  L13_2 = L2_2
  L14_2 = false
  L12_2(L13_2, L14_2)
  L12_2 = SetEnableHandcuffs
  L13_2 = L2_2
  L14_2 = true
  L12_2(L13_2, L14_2)
  L12_2 = SetCurrentPedWeapon
  L13_2 = L2_2
  L14_2 = joaat
  L15_2 = "WEAPON_UNARMED"
  L14_2 = L14_2(L15_2)
  L15_2 = true
  L12_2(L13_2, L14_2, L15_2)
  L12_2 = dbg
  L12_2 = L12_2.debug
  L13_2 = "SetCitizenCuffs: Loading cuff cycle."
  L12_2(L13_2)
  L12_2 = Interactions
  L12_2.Entity = L11_2
  L12_2 = Interactions
  L12_2 = L12_2.Cuff
  L12_2.TARGET_PLAYER_CUFF_STATE = true
  L12_2 = Interactions
  L12_2 = L12_2.Cuff
  L13_2 = {}
  L13_2.mePed = L2_2
  L13_2.initiator = A0_2
  L13_2.animDict = L5_2
  L13_2.animName = L6_2
  L13_2.animType = L4_2
  L12_2.Session = L13_2
  L12_2 = Interactions
  L12_2 = L12_2.SetCuffingMotion
  L13_2 = L2_2
  L14_2 = A0_2
  L15_2 = L4_2
  L12_2(L13_2, L14_2, L15_2)
  if "ziptie" ~= A1_2 then
    L12_2 = Sounds
    L12_2 = L12_2.PlayHandcuff
    L12_2()
  end
end
L2_1.SetCitizenCuffs = L3_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = GetAnimDuration
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 <= 0.0 then
    L4_2 = 0
    return L4_2
  end
  L4_2 = 1.0
  L4_2 = L4_2 - A2_2
  L4_2 = L3_2 * L4_2
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = L4_2 * 1000
  return L5_2(L6_2)
end
GetRemainingAnimTime = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = PlayerPedId
  L4_2 = L4_2()
  if not A2_2 then
    A2_2 = 0.0
  end
  L5_2 = UtilsService
  L5_2 = L5_2.LoadAnimationDict
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = TaskPlayAnim
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = 8.0
  L10_2 = 8.0
  L11_2 = -1
  L12_2 = 1
  L13_2 = 0.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = Wait
  L6_2 = 50
  L5_2(L6_2)
  L5_2 = SetEntityAnimCurrentTime
  L6_2 = L4_2
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = GetRemainingAnimTime
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = SetTimeout
  L7_2 = L5_2
  function L8_2()
    local L0_3, L1_3
    L0_3 = ClearPedTasksImmediately
    L1_3 = L4_2
    L0_3(L1_3)
    L0_3 = A3_2
    if L0_3 then
      L0_3 = A3_2
      L1_3 = true
      L0_3(L1_3)
    end
  end
  L6_2(L7_2, L8_2)
end
PlayPartialAnim = L2_1
L2_1 = {}
L3_1 = {}
L2_1.officer = L3_1
L3_1 = {}
L2_1.citizen = L3_1
L3_1 = Interactions
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if "officer" == A0_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L2_1.officer
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif "citizen" == A0_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L2_1.citizen
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1.OnCuffPre = L4_1
L3_1 = Interactions
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L2_2 = #L1_2
    if 0 ~= L2_2 then
      goto lbl_10
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_10::
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = promise
    L9_2 = L9_2.new
    L9_2 = L9_2()
    L10_2 = Citizen
    L10_2 = L10_2.CreateThread
    function L11_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = pcall
      function L1_3()
        local L0_4, L1_4
        L0_4 = L8_2
        function L1_4()
          local L0_5, L1_5, L2_5
          L0_5 = L9_2
          L1_5 = L0_5
          L0_5 = L0_5.resolve
          L2_5 = true
          L0_5(L1_5, L2_5)
        end
        L0_4(L1_4)
      end
      L0_3, L1_3 = L0_3(L1_3)
      if not L0_3 then
        L2_3 = print
        L3_3 = "^1CuffPre Hook Error:^0"
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
        L2_3 = L9_2
        L3_3 = L2_3
        L2_3 = L2_3.resolve
        L4_3 = true
        L2_3(L3_3, L4_3)
      end
    end
    L10_2(L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = PromiseAll
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L3_1.RunCuffPre = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = #A0_2
  if 0 == L3_2 then
    L4_2 = {}
    return L4_2
  end
  L4_2 = {}
  L5_2 = ipairs
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = Citizen
    L11_2 = L11_2.CreateThread
    function L12_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Citizen
      L0_3 = L0_3.Await
      L1_3 = L10_2
      L0_3 = L0_3(L1_3)
      L2_3 = L9_2
      L1_3 = L4_2
      L1_3[L2_3] = L0_3
      L1_3 = L2_2
      L1_3 = L1_3 + 1
      L2_2 = L1_3
      L1_3 = L2_2
      L2_3 = L3_2
      if L1_3 == L2_3 then
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = L4_2
        L1_3(L2_3, L3_3)
      end
    end
    L11_2(L12_2)
  end
  return L1_2
end
PromiseAll = L3_1
L3_1 = AddEventHandler
L4_1 = "rcore_police:registerCuffPre"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Interactions
  L2_2 = L2_2.OnCuffPre
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1(L4_1, L5_1)
