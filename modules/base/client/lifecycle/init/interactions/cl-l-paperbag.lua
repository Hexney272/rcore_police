local L0_1, L1_1, L2_1, L3_1
L0_1 = HasStreamedTextureDictLoaded
L1_1 = DrawSprite
L2_1 = CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = Interactions
    L0_2 = L0_2.PaperBag
    L0_2 = L0_2.state
    if L0_2 then
      L0_2 = L0_1
      L1_2 = "prop_ld_paper_bag"
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = L1_1
        L1_2 = "prop_ld_paper_bag"
        L2_2 = "prop_paper_bag_2"
        L3_2 = 0.5
        L4_2 = 0.5
        L5_2 = 1.0
        L6_2 = 1.0
        L7_2 = 0.0
        L8_2 = 255
        L9_2 = 255
        L10_2 = 255
        L11_2 = 255
        L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
    else
      L0_2 = Wait
      L1_2 = 1000
      L0_2(L1_2)
    end
  end
end
L2_1(L3_1)
