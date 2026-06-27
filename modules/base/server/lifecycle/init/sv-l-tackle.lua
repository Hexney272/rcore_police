local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestTacklePlayer"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = L1_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = Config
  L7_2 = L7_2.CheckDistance
  L7_2 = L7_2 + 10.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L4_2 = SetTackleState
  L5_2 = A0_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = SetTackleState
  L5_2 = L1_2
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = StartClient
  L5_2 = A0_2
  L6_2 = "TacklePlayer"
  L7_2 = source
  L4_2(L5_2, L6_2, L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestTackleEnableMovement"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = Utils
  L2_2 = L2_2.IsPlayerNearAnotherPlayer
  L3_2 = L1_2
  L4_2 = A0_2
  L5_2 = Config
  L5_2 = L5_2.CheckDistance
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    return
  end
  L2_2 = SetTackleState
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetTackleState
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "TackleRemove"
  L5_2 = source
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestTackleCuff"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = Utils
  L2_2 = L2_2.IsPlayerNearAnotherPlayer
  L3_2 = L1_2
  L4_2 = A0_2
  L5_2 = Config
  L5_2 = L5_2.CheckDistance
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    return
  end
  L2_2 = StartClient
  L3_2 = A0_2
  L4_2 = "TackleCuffPlayer"
  L5_2 = source
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetTackleState
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetTackleState
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetTimeout
  L3_2 = 5000.0
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = SetTackleState
    L1_3 = A0_2
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = SetTackleState
    L1_3 = L1_2
    L2_3 = false
    L0_3(L1_3, L2_3)
    L0_3 = ActionService
    L0_3 = L0_3.Handcuff
    L1_3 = L1_2
    L2_3 = A0_2
    L3_3 = false
    L4_3 = nil
    L5_3 = true
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = Wait
    L1_3 = 1500.0
    L0_3(L1_3)
    L0_3 = ActionService
    L0_3 = L0_3.Escort
    L1_3 = L1_2
    L2_3 = A0_2
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Player
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.state
  L4_2 = L3_2
  L3_2 = L3_2.set
  L5_2 = "rcorePoliceTackle"
  L6_2 = A1_2
  L7_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Tackle: Setting a state for (%s) %s to state %s"
  L5_2 = GetPlayerName
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
SetTackleState = L0_1
