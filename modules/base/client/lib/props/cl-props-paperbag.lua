local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = 0.232
L2_1 = 0.0
L3_1 = 0.0
L4_1 = 0.0
L5_1 = -90.0
L6_1 = 0.0
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L1_1 = Props
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  if not A0_2 then
    A0_2 = "prop_food_bag2"
  end
  L2_2 = Interactions
  L2_2 = L2_2.PaperBag
  L2_2 = L2_2.state
  if L2_2 then
    L2_2 = Interactions
    L2_2 = L2_2.PaperBag
    L2_2.state = false
    L2_2 = DoesEntityExist
    L3_2 = Interactions
    L3_2 = L3_2.PaperBag
    L3_2 = L3_2.entity
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = DeleteEntity
      L3_2 = Interactions
      L3_2 = L3_2.PaperBag
      L3_2 = L3_2.entity
      L2_2(L3_2)
    end
    L2_2 = ClearPedTasksImmediately
    L3_2 = L1_2
    L4_2 = true
    L2_2(L3_2, L4_2)
    IsPropSessionActive = false
    L2_2 = TriggerServerEvent
    L3_2 = "rcore_police:server:unregisterDeploy"
    L2_2(L3_2)
    return
  end
  L2_2 = HasStreamedTextureDictLoaded
  L3_2 = "prop_ld_paper_bag"
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = RequestStreamedTextureDict
    L3_2 = "prop_ld_paper_bag"
    L2_2(L3_2)
  end
  L2_2 = GetPedBoneCoords
  L3_2 = L1_2
  L4_2 = 12844
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = UtilsService
  L3_2 = L3_2.SpawnObject
  L4_2 = A0_2
  L5_2 = L2_2
  L6_2 = true
  L7_2 = true
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = SetEntityCollision
  L5_2 = L3_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = AttachEntityToEntity
  L5_2 = L3_2
  L6_2 = L1_2
  L7_2 = GetPedBoneIndex
  L8_2 = L1_2
  L9_2 = 12844
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L0_1
  L8_2 = L8_2[1]
  L9_2 = L0_1
  L9_2 = L9_2[2]
  L10_2 = L0_1
  L10_2 = L10_2[3]
  L11_2 = L0_1
  L11_2 = L11_2[4]
  L12_2 = L0_1
  L12_2 = L12_2[5]
  L13_2 = L0_1
  L13_2 = L13_2[6]
  L14_2 = true
  L15_2 = false
  L16_2 = false
  L17_2 = true
  L18_2 = 0
  L19_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  IsPropSessionActive = false
  L4_2 = Interactions
  L4_2 = L4_2.PaperBag
  L4_2.state = true
  L4_2 = Interactions
  L4_2 = L4_2.PaperBag
  L4_2.entity = L3_2
end
L1_1.RequestPaperBag = L2_1
