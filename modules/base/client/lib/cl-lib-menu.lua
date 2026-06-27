local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.currentLabel = nil
L0_1.currentName = nil
L1_1 = Config
L1_1 = L1_1.Menu
L0_1.currentLibrary = L1_1
L1_1 = Config
L1_1 = L1_1.Menu
L0_1.useLibrary = L1_1
L1_1 = {}
L0_1.Menus = L1_1
Frontend = L0_1
L0_1 = UI
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.Menu
  L5_2 = Menu
  L5_2 = L5_2.OX
  if L4_2 == L5_2 then
    L4_2 = UI
    L5_2 = L4_2
    L4_2 = L4_2.Ox
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L4_2 = Config
    L4_2 = L4_2.Menu
    L5_2 = Menu
    L5_2 = L5_2.ESX_CONTEXT
    if L4_2 ~= L5_2 then
      L4_2 = Config
      L4_2 = L4_2.Menu
      L5_2 = Menu
      L5_2 = L5_2.ESX_MENU
      if L4_2 ~= L5_2 then
        goto lbl_33
      end
    end
    L4_2 = UI
    L5_2 = L4_2
    L4_2 = L4_2.Esx
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
    goto lbl_56
    ::lbl_33::
    L4_2 = Config
    L4_2 = L4_2.Menu
    L5_2 = Menu
    L5_2 = L5_2.RCORE
    if L4_2 == L5_2 then
      L4_2 = UI
      L5_2 = L4_2
      L4_2 = L4_2.Rcore
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    else
      L4_2 = Config
      L4_2 = L4_2.Menu
      L5_2 = Menu
      L5_2 = L5_2.QB
      if L4_2 == L5_2 then
        L4_2 = UI
        L5_2 = L4_2
        L4_2 = L4_2.QBMenu
        L6_2 = A1_2
        L4_2 = L4_2(L5_2, L6_2)
        L3_2 = L4_2
      end
    end
  end
  ::lbl_56::
  L4_2 = A2_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1.ParseData = L1_1
L0_1 = UI
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Config
  L1_2 = L1_2.Menu
  L2_2 = Menu
  L2_2 = L2_2.QB
  if L1_2 == L2_2 then
    L1_2 = exports
    L2_2 = Menu
    L2_2 = L2_2.QB
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2
    L1_2 = L1_2.closeMenu
    L1_2(L2_2)
    A0_2.currentName = nil
  else
    L1_2 = Config
    L1_2 = L1_2.Menu
    L2_2 = Menu
    L2_2 = L2_2.OX
    if L1_2 == L2_2 then
      L1_2 = lib
      if not L1_2 then
        L1_2 = dbg
        L1_2 = L1_2.debug
        L2_2 = "FE:CloseMenu - failed, ox_lib is not defined in fxmanifest.lua!"
        return L1_2(L2_2)
      end
      L1_2 = lib
      L1_2 = L1_2.hideContext
      L1_2()
      A0_2.currentName = nil
    else
      L1_2 = Config
      L1_2 = L1_2.Menu
      L2_2 = Menu
      L2_2 = L2_2.ESX_MENU
      if L1_2 == L2_2 then
        L1_2 = Framework
        if not L1_2 then
          L1_2 = dbg
          L1_2 = L1_2.debug
          L2_2 = "FE:CloseMenu - failed, es_extended is not detected!"
          return L1_2(L2_2)
        end
        L1_2 = Framework
        L1_2 = L1_2.UI
        L1_2 = L1_2.Menu
        L1_2 = L1_2.CloseAll
        L1_2()
      else
        L1_2 = Config
        L1_2 = L1_2.Menu
        L2_2 = Menu
        L2_2 = L2_2.ESX_CONTEXT
        if L1_2 == L2_2 then
          L1_2 = exports
          L2_2 = Menu
          L2_2 = L2_2.ESX_CONTEXT
          L1_2 = L1_2[L2_2]
          L2_2 = L1_2
          L1_2 = L1_2.Close
          L1_2(L2_2)
          A0_2.currentName = nil
        else
          L1_2 = Config
          L1_2 = L1_2.Menu
          L2_2 = Menu
          L2_2 = L2_2.RCORE
          if L1_2 == L2_2 then
            L1_2 = Menu
            L1_2 = L1_2.CloseMenu
            L2_2 = A0_2.currentName
            L1_2(L2_2)
            A0_2.currentName = nil
          else
            L1_2 = Config
            L1_2 = L1_2.Menu
            L2_2 = Menu
            L2_2 = L2_2.NONE
            if L1_2 ~= L2_2 then
              L1_2 = Config
              L1_2 = L1_2.Menu
              if nil ~= L1_2 then
                goto lbl_95
              end
            end
            L1_2 = UI
            L2_2 = L1_2
            L1_2 = L1_2.CloseMenuStandalone
            L3_2 = A0_2.currentName
            L1_2(L2_2, L3_2)
            A0_2.currentName = nil
          end
        end
      end
    end
  end
  ::lbl_95::
end
L0_1.CloseMenu = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = {}
    L2_3 = nil
    L3_3 = ipairs
    L4_3 = A0_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = {}
      L10_3 = L8_3.header
      if not L10_3 then
        L10_3 = L8_3.title
        if not L10_3 then
          L10_3 = "Untitled"
        end
      end
      L9_3.title = L10_3
      L10_3 = L8_3.isCopy
      if not L10_3 then
        L10_3 = false
      end
      L9_3.isCopy = L10_3
      L10_3 = L8_3.value
      if not L10_3 then
        L10_3 = nil
      end
      L9_3.value = L10_3
      L10_3 = L8_3.params
      if L10_3 then
        L10_3 = L8_3.params
        L10_3 = L10_3.icon
        if L10_3 then
          goto lbl_36
        end
      end
      L10_3 = nil
      ::lbl_36::
      L9_3.icon = L10_3
      L10_3 = L8_3.params
      if L10_3 then
        L10_3 = L8_3.params
        L10_3 = L10_3.event
        if L10_3 then
          goto lbl_45
        end
      end
      L10_3 = nil
      ::lbl_45::
      L9_3.event = L10_3
      L10_3 = L8_3.params
      if L10_3 then
        L10_3 = L8_3.params
        L10_3 = L10_3.isServer
        if L10_3 then
          goto lbl_54
        end
      end
      L10_3 = nil
      ::lbl_54::
      L9_3.isServer = L10_3
      L10_3 = L8_3.params
      if L10_3 then
        L10_3 = L8_3.params
        L10_3 = L10_3.args
        if L10_3 then
          goto lbl_63
        end
      end
      L10_3 = nil
      ::lbl_63::
      L9_3.args = L10_3
      L10_3 = L8_3.params
      if L10_3 then
        L10_3 = L8_3.params
        L10_3 = L10_3.notUnpack
        if L10_3 then
          goto lbl_72
        end
      end
      L10_3 = nil
      ::lbl_72::
      L9_3.notUnpack = L10_3
      L10_3 = L8_3.disabled
      if not L10_3 then
        L10_3 = false
      end
      L9_3.disabled = L10_3
      L10_3 = L8_3.onHoverId
      if not L10_3 then
        L10_3 = nil
      end
      L9_3.onHoverId = L10_3
      L10_3 = L8_3.isMenuHeader
      if L10_3 then
        L2_3 = L8_3.header
      else
        L10_3 = L8_3.submenu
        if L10_3 then
          L10_3 = L2_2
          L11_3 = L8_3.submenu
          L10_3 = L10_3(L11_3)
          L9_3.submenu = L10_3
        end
        L10_3 = table
        L10_3 = L10_3.insert
        L11_3 = L1_3
        L12_3 = L9_3
        L10_3(L11_3, L12_3)
      end
    end
    L3_3 = L1_3
    L4_3 = L2_3
    return L3_3, L4_3
  end
  L3_2 = L2_2
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = {}
  L5_2.title = L4_2
  L6_2 = A1_2.desc
  if not L6_2 then
    L6_2 = ""
  end
  L5_2.desc = L6_2
  L6_2 = A0_2.currentName
  L5_2.id = L6_2
  L5_2.options = L3_2
  L5_2.showState = true
  L6_2 = UI
  L6_2 = L6_2.ContextMenu
  L7_2 = L5_2
  L6_2(L7_2)
end
L0_1.Rcore = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = {}
    L2_3 = A0_3.header
    if not L2_3 then
      L2_3 = A0_3.title
    end
    L1_3.label = L2_3
    L2_3 = A0_3.params
    if L2_3 then
      L2_3 = A0_3.params
      L2_3 = L2_3.args
    end
    L1_3.args = L2_3
    L2_3 = A0_3.header
    if L2_3 then
      L2_3 = A0_3.txt
      if L2_3 then
        L2_3 = A0_3.header
        L3_3 = A0_3.txt
        if L2_3 ~= L3_3 then
          L2_3 = A0_3.header
          L3_3 = " - "
          L4_3 = A0_3.txt
          L2_3 = L2_3 .. L3_3 .. L4_3
          L1_3.title = L2_3
      end
    end
    else
      L2_3 = A0_3.title
      if L2_3 then
        L2_3 = A0_3.description
        if L2_3 then
          L2_3 = A0_3.title
          L3_3 = " - "
          L4_3 = A0_3.description
          L2_3 = L2_3 .. L3_3 .. L4_3
          L1_3.title = L2_3
        end
      end
    end
    L2_3 = A0_3.header
    if L2_3 then
      L2_3 = A0_3.header
      L1_3.title = L2_3
    end
    L2_3 = A0_3.params
    if L2_3 then
      L2_3 = A0_3.params
      L2_3 = L2_3.event
      if L2_3 then
        L2_3 = A0_3.params
        L2_3 = L2_3.isServer
        if not L2_3 then
          L2_3 = A0_3.params
          L2_3 = L2_3.event
          L1_3.event = L2_3
      end
      else
        L2_3 = A0_3.params
        L2_3 = L2_3.isServer
        if L2_3 then
          L2_3 = A0_3.params
          L2_3 = L2_3.event
          if L2_3 then
            L2_3 = A0_3.params
            L2_3 = L2_3.event
            L1_3.serverEvent = L2_3
          end
        end
      end
      L2_3 = A0_3.params
      L2_3 = L2_3.icon
      if L2_3 then
        L2_3 = A0_3.params
        L2_3 = L2_3.icon
        L1_3.icon = L2_3
      end
      L2_3 = A0_3.params
      L2_3 = L2_3.onClick
      if L2_3 then
        L2_3 = type
        L3_3 = A0_3.params
        L3_3 = L3_3.onClick
        L2_3 = L2_3(L3_3)
        if "function" == L2_3 then
          L2_3 = A0_3.params
          L2_3 = L2_3.onClick
          L1_3.onClick = L2_3
        end
      end
    end
    L2_3 = A0_3.disabled
    if L2_3 then
      L1_3.disabled = true
    end
    return L1_3
  end
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = ipairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L2_2
      L9_3 = L7_3
      L8_3 = L8_3(L9_3)
      L9_3 = L7_3.isMenuHeader
      if L9_3 then
        L8_3.disabled = true
      end
      L9_3 = L7_3.submenu
      if L9_3 then
        L9_3 = {}
        L8_3.submenu = L9_3
        L9_3 = L3_2
        L10_3 = L7_3.submenu
        L11_3 = {}
        L12_3 = L8_3.submenu
        L11_3.options = L12_3
        L9_3(L10_3, L11_3)
      end
      L9_3 = table
      L9_3 = L9_3.insert
      L10_3 = A1_3.options
      L11_3 = L8_3
      L9_3(L10_3, L11_3)
    end
  end
  L4_2 = {}
  L5_2 = {}
  L4_2.options = L5_2
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = Config
  L5_2 = L5_2.Menu
  L6_2 = Menu
  L6_2 = L6_2.ESX_MENU
  if L5_2 == L6_2 then
    L5_2 = UI
    L6_2 = L5_2
    L5_2 = L5_2.RenderESXMenu
    L7_2 = L4_2
    L8_2 = A0_2.currentName
    L9_2 = A0_2.currentLabel
    L5_2(L6_2, L7_2, L8_2, L9_2)
  else
    L5_2 = Config
    L5_2 = L5_2.Menu
    L6_2 = Menu
    L6_2 = L6_2.ESX_CONTEXT
    if L5_2 == L6_2 then
      L5_2 = UI
      L6_2 = L5_2
      L5_2 = L5_2.RenderESXContext
      L7_2 = L4_2
      L8_2 = A0_2.currentName
      L9_2 = A0_2.currentLabel
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L0_1.Esx = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    return
  end
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = table
    L2_2 = L2_2.remove
    L3_2 = A1_2
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = dbg
    L2_2 = L2_2.debug
    L3_2 = "Frontend - removed isMenuHeader from array."
    L2_2(L3_2)
  end
end
L0_1.RemoveHeaderFromArray = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = UI
  L3_2 = L2_2
  L2_2 = L2_2.RemoveHeaderFromArray
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = {}
    L3_3.id = A1_3
    L4_3 = c
    L5_3 = A0_2.currentLabel
    L4_3 = L4_3(L5_3)
    L3_3.title = L4_3
    L4_3 = {}
    L3_3.options = L4_3
    if A2_3 then
      L4_3 = table
      L4_3 = L4_3.insert
      L5_3 = L3_3.options
      L6_3 = {}
      L7_3 = _U
      L8_3 = "MENUS.GO_BACK_BUTTON_LABEL"
      L7_3 = L7_3(L8_3)
      L6_3.title = L7_3
      L6_3.menu = A2_3
      L4_3(L5_3, L6_3)
    end
    L4_3 = promise
    L4_3 = L4_3.new
    L4_3 = L4_3()
    L5_3 = #A0_3
    L6_3 = ipairs
    L7_3 = A0_3
    L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
    for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
      L12_3 = {}
      L13_3 = L11_3.header
      if L13_3 then
        L13_3 = L11_3.header
        L12_3.title = L13_3
      end
      L13_3 = L11_3.description
      if L13_3 then
        L13_3 = L11_3.description
        L12_3.description = L13_3
      end
      L13_3 = L11_3.params
      if L13_3 then
        L13_3 = L11_3.params
        L13_3 = L13_3.event
        if L13_3 then
          L13_3 = L11_3.params
          L13_3 = L13_3.isServer
          if not L13_3 then
            L13_3 = L11_3.params
            L13_3 = L13_3.event
            L12_3.event = L13_3
          end
        end
      end
      L13_3 = L11_3.params
      if L13_3 then
        L13_3 = L11_3.params
        L13_3 = L13_3.icon
        if L13_3 then
          L13_3 = L11_3.params
          L13_3 = L13_3.icon
          L12_3.icon = L13_3
        end
      end
      L13_3 = L11_3.params
      if L13_3 then
        L13_3 = L11_3.params
        L13_3 = L13_3.isServer
        if L13_3 then
          L13_3 = L11_3.params
          L13_3 = L13_3.event
          if L13_3 then
            L13_3 = L11_3.params
            L13_3 = L13_3.event
            L12_3.serverEvent = L13_3
            L13_3 = L11_3.params
            L13_3 = L13_3.args
            L12_3.args = L13_3
          end
        end
      end
      L13_3 = L11_3.params
      if L13_3 then
        L13_3 = L11_3.params
        if L13_3 then
          L13_3 = L11_3.params
          L13_3 = L13_3.args
        end
        L12_3.args = L13_3
      end
      L13_3 = L11_3.disabled
      if L13_3 then
        L12_3.disabled = true
      end
      L13_3 = L11_3.submenu
      if L13_3 then
        L13_3 = A1_3
        L14_3 = "_submenu_"
        L15_3 = tostring
        L16_3 = L10_3
        L15_3 = L15_3(L16_3)
        L13_3 = L13_3 .. L14_3 .. L15_3
        L12_3.menu = L13_3
        L14_3 = L2_2
        L15_3 = L11_3.submenu
        L16_3 = L13_3
        L17_3 = A1_3
        L14_3(L15_3, L16_3, L17_3)
      end
      L13_3 = L3_3.options
      L14_3 = L3_3.options
      L14_3 = #L14_3
      L14_3 = L14_3 + 1
      L13_3[L14_3] = L12_3
      L13_3 = L3_3.options
      L13_3 = #L13_3
      if L5_3 == L13_3 then
        L14_3 = L4_3
        L13_3 = L4_3.resolve
        L15_3 = true
        L13_3(L14_3, L15_3)
      end
    end
    L6_3 = Citizen
    L6_3 = L6_3.Await
    L7_3 = L4_3
    L6_3(L7_3)
    L6_3 = lib
    L6_3 = L6_3.registerContext
    L7_3 = L3_3
    L6_3(L7_3)
  end
  L3_2 = L2_2
  L4_2 = A1_2
  L5_2 = A0_2.currentName
  L6_2 = nil
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Wait
  L4_2 = 0
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
L0_1.Ox = L1_1
L0_1 = {}
L1_1 = {}
L2_1 = UI
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  function L2_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L3_3 = {}
    L4_3 = L0_1
    L4_3 = L4_3[A1_3]
    if L4_3 then
      L4_3 = exports
      L4_3 = L4_3["qb-menu"]
      L5_3 = L4_3
      L4_3 = L4_3.openMenu
      L6_3 = L0_1
      L6_3 = L6_3[A1_3]
      L4_3(L5_3, L6_3)
      return
    end
    if A2_3 then
      L4_3 = table
      L4_3 = L4_3.insert
      L5_3 = L3_3
      L6_3 = {}
      L7_3 = _U
      L8_3 = "MENUS.GO_BACK_BUTTON_LABEL"
      L7_3 = L7_3(L8_3)
      L6_3.header = L7_3
      L7_3 = {}
      L7_3.event = "qb-go-back"
      L6_3.params = L7_3
      L4_3(L5_3, L6_3)
      L4_3 = AddEventHandler
      L5_3 = "qb-go-back"
      function L6_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = L1_1
        L0_4 = #L0_4
        if L0_4 > 0 then
          L0_4 = table
          L0_4 = L0_4.remove
          L1_4 = L1_1
          L0_4 = L0_4(L1_4)
          L1_4 = exports
          L1_4 = L1_4["qb-menu"]
          L2_4 = L1_4
          L1_4 = L1_4.openMenu
          L3_4 = L0_4
          L1_4(L2_4, L3_4)
        end
      end
      L4_3(L5_3, L6_3)
    end
    L4_3 = ipairs
    L5_3 = A0_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      L10_3 = {}
      L11_3 = L9_3.header
      if L11_3 then
        L11_3 = L9_3.header
        L10_3.header = L11_3
      end
      L11_3 = L9_3.description
      if L11_3 then
        L11_3 = L9_3.description
        L10_3.txt = L11_3
      end
      L11_3 = L9_3.params
      if L11_3 then
        L11_3 = L9_3.params
        L11_3 = L11_3.isClient
        if L11_3 then
          L11_3 = {}
          L12_3 = L9_3.params
          L12_3 = L12_3.event
          L11_3.event = L12_3
          L12_3 = L9_3.params
          L12_3 = L12_3.args
          L11_3.args = L12_3
          L10_3.params = L11_3
      end
      else
        L11_3 = L9_3.params
        if L11_3 then
          L11_3 = L9_3.params
          L11_3 = L11_3.isServer
          if L11_3 then
            L11_3 = {}
            L12_3 = L9_3.params
            L12_3 = L12_3.event
            L11_3.event = L12_3
            L12_3 = L9_3.params
            L12_3 = L12_3.args
            L11_3.args = L12_3
            L11_3.isServer = true
            L10_3.params = L11_3
          end
        end
      end
      L11_3 = L9_3.params
      if L11_3 then
        L11_3 = L9_3.params
        L11_3 = L11_3.icon
        if L11_3 then
          L11_3 = L9_3.params
          L11_3 = L11_3.icon
          L10_3.icon = L11_3
        end
      end
      L11_3 = L9_3.disabled
      if L11_3 then
        L10_3.disabled = true
      end
      L11_3 = L9_3.submenu
      if L11_3 then
        L11_3 = L10_3.params
        if not L11_3 then
          L11_3 = {}
        end
        L10_3.params = L11_3
        L11_3 = A1_3
        L12_3 = "_submenu_"
        L13_3 = tostring
        L14_3 = L8_3
        L13_3 = L13_3(L14_3)
        L11_3 = L11_3 .. L12_3 .. L13_3
        L12_3 = L10_3.params
        L13_3 = "qb-open-submenu-"
        L14_3 = L11_3
        L13_3 = L13_3 .. L14_3
        L12_3.event = L13_3
        L12_3 = L10_3.params
        L13_3 = L9_3.submenu
        L12_3.args = L13_3
        L12_3 = AddEventHandler
        L13_3 = L10_3.params
        L13_3 = L13_3.event
        function L14_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4
          L1_4 = table
          L1_4 = L1_4.insert
          L2_4 = L1_1
          L3_4 = L3_3
          L1_4(L2_4, L3_4)
          L2_4 = L11_3
          L1_4 = L0_1
          L1_4 = L1_4[L2_4]
          if L1_4 then
            L1_4 = exports
            L1_4 = L1_4["qb-menu"]
            L2_4 = L1_4
            L1_4 = L1_4.openMenu
            L4_4 = L11_3
            L3_4 = L0_1
            L3_4 = L3_4[L4_4]
            L1_4(L2_4, L3_4)
          else
            L1_4 = L2_2
            L2_4 = A0_4
            L3_4 = L11_3
            L4_4 = true
            L1_4(L2_4, L3_4, L4_4)
          end
        end
        L12_3(L13_3, L14_3)
      end
      L11_3 = #L3_3
      L11_3 = L11_3 + 1
      L3_3[L11_3] = L10_3
    end
    L4_3 = L0_1
    L4_3[A1_3] = L3_3
    L4_3 = exports
    L4_3 = L4_3["qb-menu"]
    L5_3 = L4_3
    L4_3 = L4_3.openMenu
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  L3_2 = L2_2
  L4_2 = A1_2
  L5_2 = A0_2.currentName
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = true
  return L3_2
end
L2_1.QBMenu = L3_1
L2_1 = UI
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A4_2 then
    A4_2 = false
  end
  if not A1_2 then
    L5_2 = error
    L6_2 = "Frontend - failed to create menu, undefined name."
    return L5_2(L6_2)
  end
  if not A3_2 then
    L5_2 = error
    L6_2 = "Frontend - failed to create menu, undefined menu data."
    return L5_2(L6_2)
  end
  if not A2_2 then
    L5_2 = error
    L6_2 = "Frontend - failed to create menu, undefined menu menuLabel."
    return L5_2(L6_2)
  end
  L5_2 = Config
  L5_2 = L5_2.Menu
  if not L5_2 then
    L5_2 = error
    L6_2 = "Undefined library."
    return L5_2(L6_2)
  end
  L5_2 = Frontend
  L5_2 = L5_2.Menus
  L5_2 = L5_2[A1_2]
  if not L5_2 then
    L5_2 = Frontend
    L5_2 = L5_2.Menus
    L6_2 = {}
    L6_2.data = A3_2
    L5_2[A1_2] = L6_2
    A0_2.currentName = A1_2
  else
    A0_2.currentName = A1_2
  end
  L5_2 = A0_2.currentName
  if not L5_2 then
    L5_2 = dbg
    L5_2 = L5_2.critical
    L6_2 = "Failed to get currentName [%s]"
    L7_2 = A0_2.currentName
    return L5_2(L6_2, L7_2)
  end
  A0_2.currentLabel = A2_2
  L5_2 = dbg
  L5_2 = L5_2.debug
  L6_2 = "Using frontend library -> [%s]"
  L7_2 = Config
  L7_2 = L7_2.Menu
  L5_2(L6_2, L7_2)
  L5_2 = Config
  L5_2 = L5_2.Menu
  L6_2 = Menu
  L6_2 = L6_2.QB
  if L5_2 == L6_2 then
    if A4_2 then
      L5_2 = UI
      L6_2 = L5_2
      L5_2 = L5_2.ParseData
      L7_2 = A3_2
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = dbg
          L1_3 = L1_3.debug
          L2_3 = "Opened menu named [%s]"
          L3_3 = A0_2.currentName
          L1_3(L2_3, L3_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L5_2 = Config
    L5_2 = L5_2.Menu
    L6_2 = Menu
    L6_2 = L6_2.OX
    if L5_2 == L6_2 then
      L5_2 = lib
      if not L5_2 then
        L5_2 = error
        L6_2 = [[
Frontend - failed to create menu, ox_lib not hooked with prison resource. 
Please add ox_lib into rcore_police/fxmanifest.lua
]]
        L7_2 = message
        L6_2 = L6_2 .. L7_2
        return L5_2(L6_2)
      end
      if A4_2 then
        L5_2 = UI
        L6_2 = L5_2
        L5_2 = L5_2.ParseData
        L7_2 = A3_2
        function L8_2(A0_3)
          local L1_3, L2_3, L3_3
          if A0_3 then
            L1_3 = dbg
            L1_3 = L1_3.debug
            L2_3 = "Opened menu named [%s]"
            L3_3 = A0_2.currentName
            L1_3(L2_3, L3_3)
            L1_3 = lib
            L1_3 = L1_3.showContext
            L2_3 = A0_2.currentName
            L1_3(L2_3)
          end
        end
        L5_2(L6_2, L7_2, L8_2)
      end
    else
      L5_2 = Config
      L5_2 = L5_2.Menu
      L6_2 = Menu
      L6_2 = L6_2.ESX_CONTEXT
      if L5_2 ~= L6_2 then
        L5_2 = Config
        L5_2 = L5_2.Menu
        L6_2 = Menu
        L6_2 = L6_2.ESX_MENU
        if L5_2 ~= L6_2 then
          L5_2 = Config
          L5_2 = L5_2.Menu
          L6_2 = Menu
          L6_2 = L6_2.RCORE
          if L5_2 ~= L6_2 then
            goto lbl_130
          end
        end
      end
      L5_2 = Framework
      if not L5_2 then
        L5_2 = error
        L6_2 = "Frontend - failed to create menu, esx_menu_list or esx_context not hooked with prison resource - unk framework."
        return L5_2(L6_2)
      end
      if A4_2 then
        L5_2 = UI
        L6_2 = L5_2
        L5_2 = L5_2.ParseData
        L7_2 = A3_2
        function L8_2(A0_3)
          local L1_3, L2_3, L3_3
          if A0_3 then
            L1_3 = dbg
            L1_3 = L1_3.info
            L2_3 = "Opened menu named [%s]"
            L3_3 = A0_2.currentName
            L1_3(L2_3, L3_3)
          end
        end
        L5_2(L6_2, L7_2, L8_2)
        goto lbl_161
      end
    end
  end
  ::lbl_130::
  L5_2 = Config
  L5_2 = L5_2.Menu
  L6_2 = Menu
  L6_2 = L6_2.RCORE
  if L5_2 == L6_2 then
    if A4_2 then
      L5_2 = UI
      L6_2 = L5_2
      L5_2 = L5_2.ParseData
      L7_2 = A3_2
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = dbg
          L1_3 = L1_3.info
          L2_3 = "Opened menu named [%s]"
          L3_3 = A0_2.currentName
          L1_3(L2_3, L3_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
    end
  else
    L5_2 = Config
    L5_2 = L5_2.Menu
    L6_2 = Menu
    L6_2 = L6_2.NONE
    if L5_2 ~= L6_2 then
      L5_2 = Config
      L5_2 = L5_2.Menu
      if nil ~= L5_2 then
        goto lbl_161
      end
    end
    L5_2 = UI
    L6_2 = L5_2
    L5_2 = L5_2.CreateMenuStandalone
    L7_2 = A1_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  ::lbl_161::
  L5_2 = dbg
  L5_2 = L5_2.debug
  L6_2 = "Menu finished return state."
  L5_2(L6_2)
end
L2_1.CreateMenu = L3_1
