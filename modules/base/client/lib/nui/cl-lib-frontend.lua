local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = false
L1_1 = nil
L2_1 = nil
L3_1 = nil
L4_1 = false
L5_1 = {}
L6_1 = {}
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.SEND_NOTIFICATION
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = "%s.%s"
  L3_2 = L2_2
  L2_2 = L2_2.format
  L4_2 = "NOTIFY"
  L5_2 = A0_2.title
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = _U
  L4_2 = L2_2
  L5_2 = A0_2.value
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = Framework
  L4_2 = L4_2.sendNotification
  L5_2 = L3_2
  L6_2 = A0_2.type
  if not L6_2 then
    L6_2 = "success"
  end
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = "ok"
  L4_2(L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNUICallback
L8_1 = "LOADED"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = true
  L0_1 = L2_2
  L2_2 = {}
  L3_2 = Locales
  L4_2 = Config
  L4_2 = L4_2.Locale
  L3_2 = L3_2[L4_2]
  if L3_2 then
    L3_2 = Locales
    L4_2 = Config
    L4_2 = L4_2.Locale
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.UI
    if not L3_2 then
      L3_2 = dbg
      L3_2 = L3_2.debug
      L4_2 = "UI Load - Failed to find translations in Locales[%s].UI category, loading fallback!"
      L5_2 = Config
      L5_2 = L5_2.Locale
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = Locales
    L4_2 = Config
    L4_2 = L4_2.Locale
    L3_2 = L3_2[L4_2]
    if L3_2 then
      L3_2 = next
      L4_2 = Locales
      L5_2 = Config
      L5_2 = L5_2.Locale
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.UI
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L3_2 = Locales
        L4_2 = Config
        L4_2 = L4_2.Locale
        L3_2 = L3_2[L4_2]
        L2_2 = L3_2.UI
        L3_2 = dbg
        L3_2 = L3_2.debug
        L4_2 = "UI Load - Loading translations from Locales[%s].UI category, for UI!"
        L5_2 = Config
        L5_2 = L5_2.Locale
        L3_2(L4_2, L5_2)
      end
    end
  end
  if L2_2 then
    L3_2 = next
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = UI
      L3_2 = L3_2.SendReactMessage
      L4_2 = NUI_EVENTS
      L4_2 = L4_2.SENT_UI_TRANSLATIONS
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = Config
  L3_2 = L3_2.InventoryImagePaths
  if L3_2 then
    L3_2 = next
    L4_2 = Config
    L4_2 = L4_2.InventoryImagePaths
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.InventoryImagePaths
      L4_2 = Config
      L4_2 = L4_2.Inventory
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L4_2 = Config
        L4_2 = L4_2.InventoryImageUseState
        if L4_2 then
          L4_2 = Config
          L4_2 = L4_2.Inventory
          L5_2 = Inventory
          L5_2 = L5_2.ESX
          if L4_2 ~= L5_2 then
            L4_2 = dbg
            L4_2 = L4_2.debug
            L5_2 = "Inventory images: Found supported inventory %s with path %s"
            L6_2 = Config
            L6_2 = L6_2.Inventory
            L7_2 = L3_2
            L4_2(L5_2, L6_2, L7_2)
            L4_2 = UI
            L4_2 = L4_2.SendReactMessage
            L5_2 = NUI_EVENTS
            L5_2 = L5_2.IMAGE_PATH
            L6_2 = {}
            L6_2.path = L3_2
            L7_2 = Config
            L7_2 = L7_2.Inventory
            L6_2.inventory = L7_2
            L4_2(L5_2, L6_2)
          end
      end
      else
        L4_2 = dbg
        L4_2 = L4_2.debug
        L5_2 = "Inventory images: Failed to find defined path for %s - using included images for all images in build/items/images"
        L6_2 = Config
        L6_2 = L6_2.Inventory
        L4_2(L5_2, L6_2)
      end
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.CLOSE_APP
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = IsPropSessionActive
  if L2_2 then
    IsPropSessionActive = false
    L2_2 = TriggerServerEvent
    L3_2 = "rcore_police:server:unregisterDeploy"
    L2_2(L3_2)
  end
  L2_2 = IsLoadedRadarSettings
  if L2_2 then
    IsLoadedRadarSettings = false
  end
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.DELETE_REPORT
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_police:server:requestDeleteReport"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.SAVE_REPORT
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "rcore_police:server:requestSaveReport"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.SENT_RADIAL_MENU
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = RadialActionListener
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.MINIGAME_RESULT
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  if nil == L2_2 then
    L2_2 = A1_2
    L3_2 = "ok"
    L2_2(L3_2)
    return
  end
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.resolve
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.MINIGAME_SOUND
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = -1
  if "success" == A0_2 then
    L3_2 = PlaySoundFrontend
    L4_2 = L2_2
    L5_2 = "WIN"
    L6_2 = "HUD_AWARDS"
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
  elseif "failure" == A0_2 then
    L3_2 = PlaySoundFrontend
    L4_2 = L2_2
    L5_2 = "MissionFailedSounds"
    L6_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
    L7_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = ReleaseSoundId
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L4_1
  if L2_2 then
    L2_2 = false
    L4_1 = L2_2
  end
  L2_2 = L2_1
  if L2_2 ~= A0_2 then
    L2_1 = A0_2
  end
  L2_2 = true
  L4_1 = L2_2
  L2_2 = UtilsService
  L2_2 = L2_2.GetPlayerPedFromServerId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.SelectPlayers
  L3_2 = L3_2.Marker
  L4_2 = L5_1
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3
    while true do
      L0_3 = L4_1
      if not L0_3 then
        break
      end
      L0_3 = Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = L2_1
      L1_3 = A0_2
      if L0_3 ~= L1_3 then
        L0_3 = false
        L4_1 = L0_3
        break
      end
      L0_3 = GetEntityCoords
      L1_3 = L2_2
      L0_3 = L0_3(L1_3)
      L1_3 = DrawMarker
      L2_3 = L3_2.type
      if not L2_3 then
        L2_3 = 21
      end
      L3_3 = L0_3.x
      L4_3 = L0_3.y
      L5_3 = L0_3.z
      L5_3 = L5_3 + 1.1
      L6_3 = 0.0
      L7_3 = 0.0
      L8_3 = 0.0
      L9_3 = 180.0
      L10_3 = 0.0
      L11_3 = 0.0
      L12_3 = 0.3
      L13_3 = 0.3
      L14_3 = 0.3
      L15_3 = L3_2.r
      L16_3 = L3_2.g
      L17_3 = L3_2.b
      L18_3 = L3_2.a
      L19_3 = false
      L20_3 = false
      L21_3 = 2
      L22_3 = false
      L23_3 = false
      L24_3 = false
      L25_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3)
    end
  end
  L4_2[A1_2] = L5_2
end
startHoverFunction = L7_1
L7_1 = RegisterNUICallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.HOVER_CONTEXT
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.hoverFunctionId
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "Hovering context with Id: %s"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  if L3_2 then
    L3_2 = L3_1
    if L3_2 then
      L4_2 = L3_1
      L3_2 = L5_1
      L3_2 = L3_2[L4_2]
      if L3_2 then
        L3_2 = false
        L4_1 = L3_2
      end
    end
  end
  L3_2 = L5_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_1 = L2_2
    L3_2 = true
    L4_1 = L3_2
    L3_2 = L5_1
    L3_2 = L3_2[L2_2]
    L3_2()
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNUICallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.STOP_HOVER_CONTEXT
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.hoverFunctionId
  L3_2 = L4_1
  if L3_2 then
    L3_2 = L3_1
    if L3_2 == L2_2 then
      L3_2 = false
      L4_1 = L3_2
      L3_2 = nil
      L3_1 = L3_2
    end
  end
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNuiCallback
L8_1 = NUI_EVENTS
L8_1 = L8_1.SUBMIT_CONTEXT
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.event
  if L2_2 then
    L2_2 = A0_2.isServer
    if L2_2 then
      L2_2 = A0_2.notUnpack
      if L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = A0_2.event
        L4_2 = A0_2.args
        L2_2(L3_2, L4_2)
      else
        L2_2 = TriggerServerEvent
        L3_2 = A0_2.event
        L4_2 = table
        L4_2 = L4_2.unpack
        L5_2 = A0_2.args
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    else
      L2_2 = TriggerEvent
      L3_2 = A0_2.event
      L4_2 = A0_2.args
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L6_1
  L3_2 = L3_2[A1_2]
  if L3_2 then
    return
  end
  L3_2 = L6_1
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L3_2 = L6_1
    L3_2[A1_2] = true
  end
  L3_2 = RegisterNUICallback
  L4_2 = A0_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A2_2
    L3_3 = A0_3
    L2_3(L3_3)
    L2_3 = A1_3
    L3_3 = "ok"
    L2_3(L3_3)
  end
  L3_2(L4_2, L5_2)
end
RegisterFrontendCallback = L7_1
L7_1 = UI
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  if A0_2 then
    L3_2 = A0_2.title
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = ""
  ::lbl_9::
  L2_2.title = L3_2
  if A0_2 then
    L3_2 = A0_2.keys
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = {}
  ::lbl_17::
  L2_2.options = L3_2
  L2_2.showState = A1_2
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.SET_VISIBLE
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.HELPKEYS
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L7_1.HelpKeys = L8_1
L7_1 = UI
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = UI
  L0_2 = L0_2.HelpKeys
  L1_2 = nil
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L7_1.ResetHelpKeys = L8_1
L7_1 = UI
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = {}
  if A0_2 then
    L3_2 = A0_2.title
    if L3_2 then
      goto lbl_12
    end
  end
  L3_2 = ""
  ::lbl_12::
  L2_2.title = L3_2
  if A0_2 then
    L3_2 = A0_2.desc
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = ""
  ::lbl_19::
  L2_2.desc = L3_2
  L3_2 = A0_2.payload
  if not L3_2 then
    L3_2 = {}
  end
  L2_2.payload = L3_2
  L2_2.showState = true
  if A0_2 then
    L3_2 = A0_2.inputTitle
    if L3_2 then
      goto lbl_33
    end
  end
  L3_2 = ""
  ::lbl_33::
  L2_2.inputTitle = L3_2
  if A0_2 then
    L3_2 = A0_2.showInput
    if L3_2 then
      goto lbl_40
    end
  end
  L3_2 = false
  ::lbl_40::
  L2_2.showInput = L3_2
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = RegisterFrontendCallback
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.SENT_PAYDIALOG
  L5_2 = NUI_EVENTS
  L5_2 = L5_2.PAY_DIALOG
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    else
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = NUI_EVENTS
    L2_3 = L1_3.PAY_DIALOG
    L1_3 = L6_1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = NUI_EVENTS
      L2_3 = L1_3.PAY_DIALOG
      L1_3 = L6_1
      L1_3[L2_3] = nil
    end
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.PAY_DIALOG
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L1_2
  return L3_2(L4_2)
end
L7_1.PayDialog = L8_1
L7_1 = UI
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L2_2.title = A0_2
  L2_2.options = A1_2
  L2_2.showState = true
  L3_2 = promise
  L3_2 = L3_2.new
  L3_2 = L3_2()
  L4_2 = SetNuiFocus
  L5_2 = true
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = RegisterFrontendCallback
  L5_2 = NUI_EVENTS
  L5_2 = L5_2.GET_INPUT_DATA
  L6_2 = NUI_EVENTS
  L6_2 = L6_2.FORM_DIALOG
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = next
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = L3_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
    end
    else
      L1_3 = L3_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = nil
      L1_3(L2_3, L3_3)
    end
    L1_3 = NUI_EVENTS
    L2_3 = L1_3.FORM_DIALOG
    L1_3 = L6_1
    L1_3 = L1_3[L2_3]
    if L1_3 then
      L1_3 = NUI_EVENTS
      L2_3 = L1_3.FORM_DIALOG
      L1_3 = L6_1
      L1_3[L2_3] = nil
    end
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = UI
  L4_2 = L4_2.SendReactMessage
  L5_2 = NUI_EVENTS
  L5_2 = L5_2.FORM_DIALOG
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L3_2
  return L4_2(L5_2)
end
L7_1.Input = L8_1
L7_1 = UI
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = A0_2.title
  if not L2_2 then
    L2_2 = ""
  end
  L1_2.title = L2_2
  L2_2 = A0_2.options
  if not L2_2 then
    L2_2 = {}
  end
  L1_2.options = L2_2
  L1_2.showState = true
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = UI
  L2_2 = L2_2.SendReactMessage
  L3_2 = NUI_EVENTS
  L3_2 = L3_2.SET_VISIBLE
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = UI
  L2_2 = L2_2.SendReactMessage
  L3_2 = "RADIAL_MENU"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L7_1.RadialMenu = L8_1
L7_1 = UI
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = UI
  L1_2 = L1_2.SendReactMessage
  L2_2 = NUI_EVENTS
  L2_2 = L2_2.SET_VISIBLE
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = UI
  L1_2 = L1_2.SendReactMessage
  L2_2 = NUI_EVENTS
  L2_2 = L2_2.CONTEXT_MENU
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = SetTimeout
  L2_2 = 100
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = UI
    L0_3 = L0_3.SendReactMessage
    L1_3 = NUI_EVENTS
    L1_3 = L1_3.SET_VISIBLE
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L7_1.ContextMenu = L8_1
L7_1 = UI
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = {}
  if A0_2 then
    L2_2 = next
    L3_2 = A0_2.options
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L1_2 = A0_2.options
  end
  else
    L1_2 = BodyCams
  end
  if L1_2 then
    L2_2 = next
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = pairs
      L3_2 = L1_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.location
        if "" == L8_2 then
          L8_2 = GetStreetNameFromCoords
          L9_2 = L7_2.playerCoords
          L8_2 = L8_2(L9_2)
          L7_2.location = L8_2
        end
        L8_2 = L7_2.playerId
        L9_2 = MyServerId
        if L8_2 == L9_2 then
          L8_2 = dbg
          L8_2 = L8_2.debug
          L9_2 = "Bodycams: You have active bodycam on yourself, removing from UI!"
          L8_2(L9_2)
          L1_2[L6_2] = nil
        end
      end
    end
  end
  L2_2 = Wait
  L3_2 = 0
  L2_2(L3_2)
  L2_2 = {}
  if A0_2 then
    L3_2 = A0_2.title
    if L3_2 then
      goto lbl_58
    end
  end
  L3_2 = ""
  ::lbl_58::
  L2_2.title = L3_2
  L2_2.options = L1_2
  L2_2.showState = true
  L3_2 = Config
  L3_2 = L3_2.Debug
  if L3_2 then
    L3_2 = tprint
    L4_2 = L2_2
    L3_2(L4_2)
  end
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.SET_VISIBLE
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.BODYCAMS
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L7_1.BodyCams = L8_1
L7_1 = UI
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = {}
  if A0_2 then
    L2_2 = next
    L3_2 = A0_2.options
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L1_2 = A0_2.options
  end
  else
    L1_2 = Reports
  end
  L2_2 = {}
  if A0_2 then
    L3_2 = A0_2.title
    if L3_2 then
      goto lbl_25
    end
  end
  L3_2 = ""
  ::lbl_25::
  L2_2.title = L3_2
  L2_2.options = L1_2
  L2_2.showState = true
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.SET_VISIBLE
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = UI
  L3_2 = L3_2.SendReactMessage
  L4_2 = NUI_EVENTS
  L4_2 = L4_2.REPORTS
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L7_1.ReportMenu = L8_1
L7_1 = UI
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L1_1 = L1_2
  L1_2 = SetNuiFocus
  L2_2 = true
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = UI
  L1_2 = L1_2.SendReactMessage
  L2_2 = NUI_EVENTS
  L2_2 = L2_2.SET_VISIBLE
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = {}
  if A0_2 and A0_2 then
    L1_2 = A0_2
  else
    L2_2 = {}
    L3_2 = Config
    L3_2 = L3_2.Cuffing
    L3_2 = L3_2.Minigame
    L3_2 = L3_2.speed
    if not L3_2 then
      L3_2 = 3
    end
    L2_2.speed = L3_2
    L3_2 = Config
    L3_2 = L3_2.Cuffing
    L3_2 = L3_2.Minigame
    L3_2 = L3_2.maxFails
    if not L3_2 then
      L3_2 = 1
    end
    L2_2.maxFails = L3_2
    L3_2 = Config
    L3_2 = L3_2.Cuffing
    L3_2 = L3_2.Minigame
    L3_2 = L3_2.maxRevs
    if not L3_2 then
      L3_2 = 1
    end
    L2_2.maxRevs = L3_2
    L3_2 = Config
    L3_2 = L3_2.Cuffing
    L3_2 = L3_2.Minigame
    L3_2 = L3_2.neededPicks
    if not L3_2 then
      L3_2 = 1
    end
    L2_2.neededPicks = L3_2
    L1_2 = L2_2
  end
  L2_2 = UI
  L2_2 = L2_2.SendReactMessage
  L3_2 = NUI_EVENTS
  L3_2 = L3_2.START_MINIGAME
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_1
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L1_1 = L3_2
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  return L2_2
end
L7_1.StartMinigame = L8_1
L7_1 = UI
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = UI
  L0_2 = L0_2.SendReactMessage
  L1_2 = NUI_EVENTS
  L1_2 = L1_2.SET_VISIBLE
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = UI
  L0_2 = L0_2.SendReactMessage
  L1_2 = NUI_EVENTS
  L1_2 = L1_2.STOP_MINIGAME
  L0_2(L1_2)
end
L7_1.StopMinigame = L8_1
L7_1 = UI
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = A0_2
  L3_2.data = A1_2
  L2_2(L3_2)
end
L7_1.SendReactMessage = L8_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Framework
  L0_2 = L0_2.job
  if L0_2 then
    L0_2 = Framework
    L0_2 = L0_2.job
    L0_2 = L0_2.name
    L1_2 = L0_2
    L0_2 = L0_2.lower
    L0_2 = L0_2(L1_2)
    L1_2 = tonumber
    L2_2 = Framework
    L2_2 = L2_2.job
    L2_2 = L2_2.grade
    L1_2 = L1_2(L2_2)
    L2_2 = Config
    L2_2 = L2_2.BodyCams
    L2_2 = L2_2.RestrictSpectateByGrades
    if not L2_2 then
      L2_2 = 0
    end
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "BodyCams: Required grade is %s - player has: %s"
    L5_2 = L2_2
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Config
    L3_2 = L3_2.JobGroups
    L3_2 = L3_2[L0_2]
    if L3_2 then
      L3_2 = Config
      L3_2 = L3_2.BodyCams
      L3_2 = L3_2.RestrictByGrades
      if not L3_2 or not (L1_2 >= L2_2) then
      end
      L3_2 = dbg
      L3_2 = L3_2.debug
      L4_2 = "Has access to open bodycams feed, loading UI!"
      L3_2(L4_2)
      L3_2 = UI
      L3_2 = L3_2.BodyCams
      L3_2()
      goto lbl_63
      L3_2 = dbg
      L3_2 = L3_2.critical
      L4_2 = "You dont have permission to see bodycams feed, required grade is: %s"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = dbg
      L3_2 = L3_2.debug
      L4_2 = "You are in job: %s which is not allowed for bodycams!"
      L5_2 = L0_2
      L3_2(L4_2, L5_2)
    end
  else
    L0_2 = dbg
    L0_2 = L0_2.debug
    L1_2 = "Failed to open bodycams feed - failed to find Framework.job (not any cached data!)"
    L0_2(L1_2)
  end
  ::lbl_63::
end
OpenBodyCams = L7_1
L7_1 = RegisterCommand
L8_1 = Config
L8_1 = L8_1.BodyCams
L8_1 = L8_1.CommandName
if not L8_1 then
  L8_1 = "bodycams"
end
function L9_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.BodyCams
  L0_2 = L0_2.EnableCommand
  if not L0_2 then
    return
  end
  L0_2 = OpenBodyCams
  L0_2()
end
L10_1 = false
L7_1(L8_1, L9_1, L10_1)
