local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Config
  L1_2 = L1_2.Zipties
  L1_2 = L1_2.UseableRemoveItems
  L2_2 = type
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = ipairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = InventoryService
      L8_2 = L8_2.hasItem
      L9_2 = A0_2
      L10_2 = L7_2
      L11_2 = 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        L8_2 = true
        L9_2 = L7_2
        return L8_2, L9_2
      end
    end
  else
    L2_2 = InventoryService
    L2_2 = L2_2.hasItem
    L3_2 = A0_2
    L4_2 = Items
    L4_2 = L4_2.ZipTiesCutter
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L2_2 = true
      L3_2 = Items
      L3_2 = L3_2.ZipTiesCutter
      return L2_2, L3_2
    end
  end
  L2_2 = false
  L3_2 = nil
  return L2_2, L3_2
end
HasPlayerZiptieCutters = L0_1
