local L0_1, L1_1, L2_1, L3_1
L0_1 = AddEventHandler
L1_1 = "rcore_police:server:playerLoaded"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if not A0_2 then
    return
  end
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Server flow | Player loaded event received from player %s named (%s)"
  L3_2 = A0_2
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = GroupsService
  L1_2 = L1_2.AddPlayer
  L2_2 = A0_2
  L1_2, L2_2 = L1_2(L2_2)
  L3_2 = Config
  L3_2 = L3_2.Garages
  L4_2 = Garages
  L4_2 = L4_2.NONE
  if L3_2 ~= L4_2 then
    L3_2 = TriggerEvent
    L4_2 = "rcore_police:server:requestGarages"
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Config
  L3_2 = L3_2.Framework
  L4_2 = Framework
  L4_2 = L4_2.ESX
  if L3_2 == L4_2 then
    L3_2 = CacheJobsForPlayer
    L3_2 = L3_2()
    if not L3_2 then
      return
    end
    L4_2 = StartClient
    L5_2 = A0_2
    L6_2 = "ServerJobs"
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Server flow | Player named %s and his retval: %s and statusCode %s"
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Config
  L3_2 = L3_2.DutySystemState
  if L3_2 then
    L3_2 = SetTimeout
    L4_2 = Config
    L4_2 = L4_2.AutoDutyTimeout
    if not L4_2 then
      L4_2 = 1000
    end
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Config
      L0_3 = L0_3.AutoDuty
      if L0_3 then
        L0_3 = AUTO_DUTY_STATES
        L1_3 = L2_2
        L0_3 = L0_3[L1_3]
        if L0_3 then
          L0_3 = dbg
          L0_3 = L0_3.debug
          L1_3 = "Duty: Registering auto duty for player named %s (%s) since part of department."
          L2_3 = GetPlayerName
          L3_3 = A0_2
          L2_3 = L2_3(L3_3)
          L3_3 = A0_2
          L0_3(L1_3, L2_3, L3_3)
          L0_3 = DutyService
          L0_3 = L0_3.EnforceDuty
          L1_3 = A0_2
          L2_3 = true
          L0_3(L1_3, L2_3)
          L0_3 = Framework
          L0_3 = L0_3.sendNotification
          L1_3 = A0_2
          L2_3 = _U
          L3_3 = "DUTY.YOU_ARE_IN_SERVICE"
          L2_3 = L2_3(L3_3)
          L3_3 = "success"
          L0_3(L1_3, L2_3, L3_3)
        end
      end
    end
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "rcore_police:server:playerUnloaded"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L1_2 = dbg
  L1_2 = L1_2.debug
  L2_2 = "Server flow | Player unloaded event received from player %s named (%s)"
  L3_2 = A0_2
  L4_2 = GetPlayerName
  L5_2 = A0_2
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = GroupsService
  L1_2 = L1_2.RemovePlayer
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = InteractionService
  L1_2 = L1_2.clearPlayerStorage
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = UsedItemsCache
  L1_2[A0_2] = nil
  L1_2 = UseableItemsCooldowns
  L1_2[A0_2] = nil
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "rcore_police:server:jobUpdate"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    return
  end
  if not A1_2 then
    return
  end
  L2_2 = dbg
  L2_2 = L2_2.debug
  L3_2 = "Server flow | Player jobUpdate event received from player %s named (%s)"
  L4_2 = A0_2
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = GroupsService
  L2_2 = L2_2.HandlePlayerJobUpdate
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = ""
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L0_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
RegisterListener = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = ipairs
    L2_2 = L0_1
    L2_2 = L2_2[A0_2]
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = L6_2
      L8_2 = ...
      L7_2(L8_2)
    end
  end
end
TriggerListeners = L1_1
L1_1 = exports
L2_1 = "registerListener"
L3_1 = RegisterListener
L1_1(L2_1, L3_1)
L1_1 = RegisterLocalServerEvent
L2_1 = "onGroups"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerListeners
  L3_2 = "onGroups"
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterLocalServerEvent
L2_1 = "onState"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = TriggerListeners
  L4_2 = "onState"
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1(L2_1, L3_1)
