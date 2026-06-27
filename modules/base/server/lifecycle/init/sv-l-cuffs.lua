local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestCuffEscape"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = Utils
  L4_2 = L4_2.IsPlayerNearAnotherPlayer
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = Config
  L7_2 = L7_2.CheckDistance
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L4_2 = GlobalCache
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = GlobalCache
    L4_2[A0_2] = true
  end
  L4_2 = SetTimeout
  L5_2 = 5000
  function L6_2()
    local L0_3, L1_3
    L0_3 = GlobalCache
    L1_3 = A0_2
    L0_3[L1_3] = nil
  end
  L4_2(L5_2, L6_2)
  L4_2 = InteractionService
  L4_2 = L4_2.removeState
  L5_2 = A0_2
  L6_2 = "CUFF_STATE"
  L4_2(L5_2, L6_2)
  L4_2 = InteractionService
  L4_2 = L4_2.removeState
  L5_2 = L3_2
  L6_2 = "CUFF_STATE"
  L4_2(L5_2, L6_2)
  L4_2 = InteractionService
  L4_2 = L4_2.removeState
  L5_2 = L3_2
  L6_2 = "ESCORT_STATE"
  L4_2(L5_2, L6_2)
  L4_2 = InteractionService
  L4_2 = L4_2.removeState
  L5_2 = A0_2
  L6_2 = "ESCORT_STATE"
  L4_2(L5_2, L6_2)
  L4_2 = Framework
  L4_2 = L4_2.sendNotification
  L5_2 = L3_2
  L6_2 = _U
  L7_2 = "MINIGAME_ESCORT_ESCAPE_FOR_TARGET"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Framework
  L4_2 = L4_2.sendNotification
  L5_2 = A0_2
  L6_2 = _U
  L7_2 = "MINIGAME_ESCORT_ESCAPE_FOR_OFFICER"
  L6_2 = L6_2(L7_2)
  L7_2 = "success"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = StartClient
  L5_2 = A0_2
  L6_2 = "PunchSync"
  L7_2 = source
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
