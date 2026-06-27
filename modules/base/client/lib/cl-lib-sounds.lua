local L0_1, L1_1
L0_1 = Sounds
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = "rcore_basic_handcuff"
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = "%s_%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = MyServerId
  L6_2 = "cuff"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = isResourcePresentProvideless
  L5_2 = "xsound"
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.PlayUrlPos
    L6_2 = L3_2
    L7_2 = "https://rco.re/product/rcore_police/sounds/cuff.mp3"
    L8_2 = 0.1
    L9_2 = L2_2
    L10_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.Distance
    L6_2 = L3_2
    L7_2 = 10.0
    L4_2(L5_2, L6_2, L7_2)
  else
    while true do
      L4_2 = RequestScriptAudioBank
      L5_2 = "audiodirectory/basic"
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 0
      L4_2(L5_2)
    end
    L4_2 = GetSoundId
    L4_2 = L4_2()
    L5_2 = PlaySoundFromCoord
    L6_2 = L4_2
    L7_2 = L1_2
    L8_2 = L2_2.x
    L9_2 = L2_2.y
    L10_2 = L2_2.z
    L11_2 = "rcore_police"
    L12_2 = false
    L13_2 = 0
    L14_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = ReleaseSoundId
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = ReleaseNamedScriptAudioBank
    L6_2 = "audiodirectory/basic"
    L5_2(L6_2)
  end
end
L0_1.PlayHandcuff = L1_1
L0_1 = Sounds
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = "rcore_basic_unlock"
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = "%s_%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = MyServerId
  L6_2 = "uncuff"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = isResourcePresentProvideless
  L5_2 = "xsound"
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.PlayUrlPos
    L6_2 = L3_2
    L7_2 = "https://rco.re/product/rcore_police/sounds/uncuff.mp3"
    L8_2 = 0.1
    L9_2 = L2_2
    L10_2 = false
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = exports
    L4_2 = L4_2.xsound
    L5_2 = L4_2
    L4_2 = L4_2.Distance
    L6_2 = L3_2
    L7_2 = 10.0
    L4_2(L5_2, L6_2, L7_2)
  else
    while true do
      L4_2 = RequestScriptAudioBank
      L5_2 = "audiodirectory/basic"
      L6_2 = false
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        break
      end
      L4_2 = Citizen
      L4_2 = L4_2.Wait
      L5_2 = 0
      L4_2(L5_2)
    end
    L4_2 = GetSoundId
    L4_2 = L4_2()
    L5_2 = PlaySoundFromCoord
    L6_2 = L4_2
    L7_2 = L1_2
    L8_2 = L2_2.x
    L9_2 = L2_2.y
    L10_2 = L2_2.z
    L11_2 = "rcore_police"
    L12_2 = false
    L13_2 = 0
    L14_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = ReleaseSoundId
    L6_2 = L4_2
    L5_2(L6_2)
    L5_2 = ReleaseNamedScriptAudioBank
    L6_2 = "audiodirectory/basic"
    L5_2(L6_2)
  end
end
L0_1.PlayUncuff = L1_1
L0_1 = Sounds
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = "GENERIC_CAMERA_FLASH"
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = GetEntityCoords
    L3_2 = PlayerPedId
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  while true do
    L3_2 = RequestScriptAudioBank
    L4_2 = "SCRIPT/Distant_Camera_Flash"
    L5_2 = false
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = GetSoundId
  L3_2 = L3_2()
  L4_2 = PlaySoundFromCoord
  L5_2 = L3_2
  L6_2 = L1_2
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = nil
  L11_2 = false
  L12_2 = 0
  L13_2 = false
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = ReleaseSoundId
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = ReleaseNamedScriptAudioBank
  L5_2 = "SCRIPT/Distant_Camera_Flash"
  L4_2(L5_2)
end
L0_1.PlaySpeedCamera = L1_1
