local L0_1, L1_1, L2_1
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "InventoryTestSearch"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = MyServerId
    L3_2 = Config
    L3_2 = L3_2.Inventory
    L4_2 = Inventory
    L4_2 = L4_2.OX
    if L3_2 == L4_2 then
      L2_2 = A1_2
    end
    L3_2 = OpenPlayerInventory
    L4_2 = L2_2
    L3_2(L4_2)
    L3_2 = Wait
    L4_2 = 4000
    L3_2(L4_2)
    L3_2 = Config
    L3_2 = L3_2.Inventory
    L4_2 = "Inventory ('%s') UI for search is not detected. Please make sure you are using a supported and up-to-date inventory system!"
    L5_2 = L4_2
    L4_2 = L4_2.format
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = IsNuiFocused
    L5_2 = L5_2()
    if not L5_2 then
      L5_2 = Framework
      L5_2 = L5_2.sendNotification
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "InventoryTestStash"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = Config
    L1_2 = L1_2.Inventory
    L2_2 = "Inventory ('%s') UI for stash is not detected. Please make sure you are using a supported and up-to-date inventory system!"
    L3_2 = L2_2
    L2_2 = L2_2.format
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = IsNuiFocused
    L3_2 = L3_2()
    if not L3_2 then
      L3_2 = Framework
      L3_2 = L3_2.sendNotification
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L0_1(L1_1, L2_1)
