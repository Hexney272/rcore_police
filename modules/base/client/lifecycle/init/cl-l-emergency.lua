local L0_1, L1_1, L2_1
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "RenderEmergencyBlip"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 then
    L3_2 = 250
    L4_2 = AddBlipForCoord
    L5_2 = A1_2.x
    L6_2 = A1_2.y
    L7_2 = A1_2.z
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A2_2
    L6_2 = Config
    L6_2 = L6_2.EmergencyCall
    L6_2 = L6_2.Blip
    L7_2 = Config
    L7_2 = L7_2.EmergencyCall
    L7_2 = L7_2.PlaySound
    if L7_2 then
      L7_2 = PlaySound
      L8_2 = -1
      L9_2 = "Lose_1st"
      L10_2 = "GTAO_FM_Events_Soundset"
      L11_2 = 0
      L12_2 = 0
      L13_2 = 1
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L7_2 = dbg
      L7_2 = L7_2.debug
      L8_2 = "Emergency call: Playing sound name Lose_1st from audio bank named GTAO_FM_Events_Soundset, if you cant hear it then you hit audio bank limit!!!"
      L7_2(L8_2)
    end
    L7_2 = SetBlipSprite
    L8_2 = L4_2
    L9_2 = L6_2.Sprite
    L7_2(L8_2, L9_2)
    L7_2 = SetBlipColour
    L8_2 = L4_2
    L9_2 = L6_2.Colour
    L7_2(L8_2, L9_2)
    L7_2 = SetBlipDisplay
    L8_2 = L4_2
    L9_2 = L6_2.Display
    L7_2(L8_2, L9_2)
    L7_2 = SetBlipAlpha
    L8_2 = L4_2
    L9_2 = L3_2
    L7_2(L8_2, L9_2)
    L7_2 = SetBlipScale
    L8_2 = L4_2
    L9_2 = L6_2.Scale
    L7_2(L8_2, L9_2)
    L7_2 = SetBlipAsShortRange
    L8_2 = L4_2
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = PulseBlip
    L8_2 = L4_2
    L7_2(L8_2)
    L7_2 = BeginTextCommandSetBlipName
    L8_2 = "STRING"
    L7_2(L8_2)
    L7_2 = AddTextComponentSubstringPlayerName
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = EndTextCommandSetBlipName
    L8_2 = L4_2
    L7_2(L8_2)
    while L3_2 > 0 do
      L7_2 = Wait
      L8_2 = 720
      L7_2(L8_2)
      L3_2 = L3_2 - 1
      L7_2 = SetBlipAlpha
      L8_2 = L4_2
      L9_2 = L3_2
      L7_2(L8_2, L9_2)
      if L3_2 <= 0 then
        L7_2 = RemoveBlip
        L8_2 = L4_2
        L7_2(L8_2)
      end
    end
  end
end
L0_1(L1_1, L2_1)
