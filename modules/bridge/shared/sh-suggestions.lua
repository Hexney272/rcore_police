local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = Config
L1_1 = L1_1.Commands
L1_1 = L1_1.SET_PLAYER_JOB
L0_1[L1_1] = true
L1_1 = Config
L1_1 = L1_1.Commands
L1_1 = L1_1.REMOVE_PLAYER_JOB
L0_1[L1_1] = true
L1_1 = {}
L2_1 = Config
L2_1 = L2_1.Commands
L2_1 = L2_1.FREE_PLAYER
L1_1[L2_1] = true
L2_1 = Config
L2_1 = L2_1.Commands
L2_1 = L2_1.SEARCH_PLAYER_QB
L1_1[L2_1] = true
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = IsDuplicityVersion
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = pairs
    L1_2 = Config
    L1_2 = L1_2.Commands
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = Config
      L6_2 = L6_2.Commands
      L6_2 = L6_2[L4_2]
      L7_2 = "/%s"
      L8_2 = L7_2
      L7_2 = L7_2.format
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L1_1
      L8_2 = L8_2[L6_2]
      if L8_2 then
        return
      end
      L8_2 = Config
      L8_2 = L8_2.ChatSuggestions
      L8_2 = L8_2[L6_2]
      if not L8_2 then
        L8_2 = {}
      end
      L9_2 = "%s.%s"
      L10_2 = L9_2
      L9_2 = L9_2.format
      L11_2 = "COMMANDS_HELP_TEXT"
      L12_2 = L4_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if not L9_2 then
        L9_2 = nil
      end
      L10_2 = nil
      if L9_2 then
        L11_2 = _U
        L12_2 = L9_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2
      end
      if L8_2 then
        L11_2 = next
        L12_2 = L8_2
        L11_2 = L11_2(L12_2)
        if L11_2 then
          L11_2 = L0_1
          L11_2 = L11_2[L6_2]
          if L11_2 then
            L11_2 = Config
            L11_2 = L11_2.Framework
            L12_2 = Framework
            L12_2 = L12_2.NONE
            if L11_2 ~= L12_2 then
              return
            end
          end
          L11_2 = TriggerEvent
          L12_2 = "chat:addSuggestion"
          L13_2 = L7_2
          L14_2 = L10_2
          L15_2 = L8_2
          L11_2(L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
  end
end
L2_1(L3_1)
