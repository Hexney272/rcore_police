local L0_1, L1_1, L2_1
deathFlag = false
L0_1 = IsEntityDead
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPedTimeOfDeath
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = 0 ~= L1_2
  return L1_2
end
L1_1.WasPedDeadRecently = L2_1
L1_1 = UtilsService
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = UtilsService
  L2_2 = L2_2.WasPedDeadRecently
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Framework
    L3_2 = Framework
    L3_2 = L3_2.QBOX
    if L2_2 ~= L3_2 then
      L1_2 = true
    end
  end
  L2_2 = deathFlag
  if L2_2 then
    L1_2 = true
  end
  L2_2 = Config
  L2_2 = L2_2.Flags
  L2_2 = L2_2.SkipDeathCheck
  if L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Death: Player skipping check of death since SkipDeathCheck flag in config.lua!"
    L2_2(L3_2)
    L1_2 = false
  end
  return L1_2
end
L1_1.IsPedDeath = L2_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Death"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "rcore_police:server:sentPlayerDeath"
  L1_2(L2_2)
end
ProcessDeath = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Alive"
  L1_2(L2_2)
  L1_2 = TriggerServerEvent
  L2_2 = "rcore_police:server:sentPlayerRespawned"
  L1_2(L2_2)
end
PlayerAlive = L1_1
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = L0_1
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = Framework
    L2_2 = L2_2.getDeathState
    L2_2 = L2_2()
    L3_2 = UtilsService
    L3_2 = L3_2.WasPedDeadRecently
    L4_2 = L0_2
    L3_2 = L3_2(L4_2)
    if L1_2 then
      L4_2 = deathFlag
      if not L4_2 then
        while true do
          L4_2 = DeadUtils
          L4_2 = L4_2.ShouldProcessDead
          L5_2 = L0_2
          L4_2 = L4_2(L5_2)
          if not L4_2 then
            break
          end
          L4_2 = Wait
          L5_2 = 250
          L4_2(L5_2)
        end
        deathFlag = true
        L4_2 = ProcessDeath
        L5_2 = L0_2
        L4_2(L5_2)
      end
    end
    if not L1_2 then
      L4_2 = deathFlag
      if L4_2 then
        goto lbl_42
      end
    end
    if not L2_2 then
      L4_2 = deathFlag
      ::lbl_42::
      if L4_2 then
        L4_2 = deathFlag
        if L4_2 then
          while true do
            L4_2 = IsPedStill
            L5_2 = L0_2
            L4_2 = L4_2(L5_2)
            if not L4_2 then
              break
            end
            L4_2 = Wait
            L5_2 = 250
            L4_2(L5_2)
            L4_2 = DeadUtils
            L4_2 = L4_2.ShouldRespawn
            L5_2 = L0_2
            L4_2 = L4_2(L5_2)
            if L4_2 then
              break
            end
          end
        end
        L4_2 = PlayerAlive
        L5_2 = L0_2
        L4_2(L5_2)
        deathFlag = false
      end
    end
    L4_2 = Wait
    L5_2 = 500
    L4_2(L5_2)
  end
end
L1_1(L2_1)
