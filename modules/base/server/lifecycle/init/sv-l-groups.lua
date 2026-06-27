local L0_1, L1_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2
  L0_2 = Object
  L0_2 = L0_2.getStorage
  L1_2 = STORAGE_GROUPS
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L1_2 = L0_2.registerGroups
  L1_2()
end
L0_1(L1_1)
