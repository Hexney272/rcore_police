local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
db = L0_1
L0_1 = {}
spawnVehicleSessions = L0_1
L0_1 = {}
DutyService = L0_1
L0_1 = {}
SocietyService = L0_1
L0_1 = {}
ImageService = L0_1
L0_1 = {}
GarageService = L0_1
L0_1 = {}
InventoryService = L0_1
L0_1 = {}
GroupsService = L0_1
L0_1 = {}
UseableItemsCooldowns = L0_1
L0_1 = {}
UsedItemsCache = L0_1
L0_1 = {}
EmergencyCalls = L0_1
L0_1 = {}
RegisteredItems = L0_1
L0_1 = {}
ServerItems = L0_1
L0_1 = createDeployer
L0_1 = L0_1()
AssetDeployer = L0_1
L0_1 = {}
GlobalCache = L0_1
L0_1 = false
L1_1 = RegisterCommand
L2_1 = "police_check_allow_command"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if 0 ~= A0_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = [[

[Scanner] Access denied!
Only the ^1server console^7 can allow the conflict scan.
]]
    L2_2(L3_2)
    return
  end
  L2_2 = true
  L0_1 = L2_2
  L2_2 = dbg
  L2_2 = L2_2.info
  L3_2 = "[Scanner] Scan command ENABLED for this session.\n\226\134\146 Run ^3police_check_conflicts^7 next to start the scan.\n\n---------------- WARNING ----------------\nThis command is ^1HEAVY^7 on the server!\nDO NOT run this on a live server or with players online!\n-----------------------------------------\n"
  L2_2(L3_2)
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterCommand
L2_1 = "police_check_conflicts"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if 0 ~= A0_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = [[

[Scanner] Access denied!
Only the ^1server console^7 can start the scan.
]]
    L2_2(L3_2)
    return
  end
  L2_2 = L0_1
  if not L2_2 then
    L2_2 = dbg
    L2_2 = L2_2.critical
    L3_2 = [[
[Scanner] Access denied!
You must run ^3police_check_allow_command^7 first!

---------------- WARNING ----------------
This is a ^1heavy^7 operation.
DO NOT use on a live server!
-----------------------------------------
]]
    L2_2(L3_2)
    return
  end
  L2_2 = false
  L0_1 = L2_2
  L2_2 = dbg
  L2_2 = L2_2.info
  L3_2 = [[

[Scanner] Starting police event scan...
]]
  L2_2(L3_2)
  L2_2 = TriggerEvent
  L3_2 = "rcore_police:server:internal:startScanner"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = AssetDeployer
  if L0_2 then
    L0_2 = AssetDeployer
    L1_2 = L0_2
    L0_2 = L0_2.registerDefaultCommand
    L2_2 = "policesetup"
    L0_2(L1_2, L2_2)
    L0_2 = AssetDeployer
    L1_2 = L0_2
    L0_2 = L0_2.registerResetDeployCommand
    L0_2(L1_2)
    L0_2 = AssetDeployer
    L1_2 = L0_2
    L0_2 = L0_2.setSaveDeployInCache
    L2_2 = true
    L0_2(L1_2, L2_2)
    L0_2 = AssetDeployer
    L1_2 = L0_2
    L0_2 = L0_2.suggestDeploys
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
  L0_2 = isResourcePresentProvideless
  L1_2 = PoliceResources
  L1_2 = L1_2.ESX
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.info
    L1_2 = "Detected %s on your server, remove it!"
    L2_2 = PoliceResources
    L2_2 = L2_2.ESX
    L0_2(L1_2, L2_2)
  end
  L0_2 = isResourcePresentProvideless
  L1_2 = PoliceResources
  L1_2 = L1_2.QB
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.info
    L1_2 = "Detected %s on your server, remove it!"
    L2_2 = PoliceResources
    L2_2 = L2_2.QB
    L0_2(L1_2, L2_2)
  end
  L0_2 = isResourcePresentProvideless
  L1_2 = PoliceResources
  L1_2 = L1_2.QBOX
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = dbg
    L0_2 = L0_2.info
    L1_2 = "Detected %s on your server, remove it!"
    L2_2 = PoliceResources
    L2_2 = L2_2.QBOX
    L0_2(L1_2, L2_2)
  end
  L0_2 = Config
  L0_2 = L0_2.Inventory
  L1_2 = Inventory
  L1_2 = L1_2.OX
  if L0_2 == L1_2 then
    L0_2 = Config
    L0_2 = L0_2.Framework
    L1_2 = Framework
    L1_2 = L1_2.QBCore
    if L0_2 == L1_2 then
      L0_2 = GetResourceMetadata
      L1_2 = Inventory
      L1_2 = L1_2.OX
      L2_2 = "version"
      L3_2 = 0
      L0_2 = L0_2(L1_2, L2_2, L3_2)
      if L0_2 then
        L1_2 = IsVersionEqual
        L2_2 = L0_2
        L3_2 = "2.41.0"
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = print
          L2_2 = "^3============================================================^7\n^3[ox_inventory | QBCore Bridge Warning]^7\n------------------------------------------------------------\n - You are running ^5ox_inventory v2.41.0^7 with QBCore.\n - The official QBCore bridge was discontinued by Ox.\n - This version has known ^3invBusy bugs^7:\n     \226\128\162 17.8.2024 - server/qbx: invalid statebag access (Linden)\n     \226\128\162 15.9.2024 - client: replicate invBusy state (Linden)\n     \226\128\162  6.2.2025 - client/inventory: invalid statebag index (#1881, Scully)\n\n \226\154\160\239\184\143  Because of these issues,\n     ^3Cuffing.DisableInventoryWhileCuffed^7 has been auto-disabled.\n\n \226\156\133 Recommended solution:\n     Use the maintained community fork with QBCore support:\n     ^5https://github.com/TheOrderFivem/ox_inventory/releases/download/2.44.6/ox_inventory.zip\n------------------------------------------------------------\n^3============================================================^7\n"
          L1_2(L2_2)
        end
      end
    end
  end
  L0_2 = Config
  L0_2 = L0_2.Image
  L0_2 = L0_2.AllowCameraItem
  if L0_2 then
    L0_2 = isResourcePresentProvideless
    L1_2 = "screencapture"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = Config
      L0_2 = L0_2.Image
      L0_2.AllowCameraItem = false
      L0_2 = print
      L1_2 = "^3============================================================^7\n^3[Camera Feature Warning]^7\n------------------------------------------------------------\n - The feature ^5Image.AllowCameraItem^7 was enabled.\n - The required resource ^5screencapture^7 is NOT running.\n\n \226\154\160\239\184\143  Camera functionality has been ^1auto-disabled^7 to prevent errors.\n\n \226\156\133 To use this feature, install and run:\n     ^5https://github.com/itschip/screencapture/releases/download/v0.9.2/screencapture.zip\n------------------------------------------------------------\n^3============================================================^7\n"
      L0_2(L1_2)
    end
  end
  L0_2 = Config
  L0_2 = L0_2.Image
  L0_2 = L0_2.AllowCameraItem
  if L0_2 then
    L0_2 = isResourcePresentProvideless
    L1_2 = "screencapture"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LoadResourceFile
      L1_2 = "screencapture"
      L2_2 = "game/nui/dist/index.html"
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L1_2 = Config
        L1_2 = L1_2.Image
        L1_2.AllowCameraItem = false
        L1_2 = print
        L2_2 = "^3============================================================^7\n^3[Camera Feature Warning]^7\n------------------------------------------------------------\n - The feature ^5Image.AllowCameraItem^7 was enabled.\n - The resource ^5screencapture^7 is running.\n - You are NOT running the bundled version.\n\n \226\154\160\239\184\143  Camera functionality has been ^1auto-disabled^7 to prevent errors with the source version.\n\n \226\156\133 To use this feature, install the bundled version:\n     ^5https://github.com/itschip/screencapture/releases/download/v0.9.2/screencapture.zip\n------------------------------------------------------------\n^3============================================================^7\n"
        L1_2(L2_2)
      end
    end
  end
end
L1_1(L2_1)
L1_1 = RegisterCommand
L2_1 = "departments"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = GroupsService
  L3_2 = L3_2.GetGroups
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = next
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = tprint
      L5_2 = L3_2
      L4_2(L5_2)
    end
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterCommand
L2_1 = "rcore_police_debug_enviroment"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if 0 == A0_2 then
    L3_2 = A1_2[1]
    if not L3_2 then
      L3_2 = "police"
    end
    L4_2 = Object
    L4_2 = L4_2.getStorage
    L5_2 = STORAGE_GARAGE
    L4_2 = L4_2(L5_2)
    L5_2 = FindTargetResource
    if L5_2 then
      L5_2 = FindTargetResource
      L6_2 = "identity"
      L5_2 = L5_2(L6_2)
    end
    L6_2 = FindTargetResource
    if L6_2 then
      L6_2 = FindTargetResource
      L7_2 = "multichar"
      L6_2 = L6_2(L7_2)
    end
    L7_2 = FindTargetResource
    if L7_2 then
      L7_2 = FindTargetResource
      L8_2 = "fuel"
      L7_2 = L7_2(L8_2)
    end
    L8_2 = FindTargetResource
    if L8_2 then
      L8_2 = FindTargetResource
      L9_2 = "banking"
      L8_2 = L8_2(L9_2)
    end
    L9_2 = FindTargetResource
    if L9_2 then
      L9_2 = FindTargetResource
      L10_2 = "society"
      L9_2 = L9_2(L10_2)
    end
    L10_2 = FindTargetResource
    if L10_2 then
      L10_2 = FindTargetResource
      L11_2 = "target"
      L10_2 = L10_2(L11_2)
    end
    if not L5_2 then
      L5_2 = "NOT_FOUND"
    end
    if not L6_2 then
      L6_2 = "NOT_FOUND"
    end
    if not L7_2 then
      L7_2 = "NOT_FOUND"
    end
    if not L9_2 then
      L9_2 = "NOT_FOUND"
    end
    if not L10_2 then
      taget = "NOT_FOUND"
    end
    L11_2 = ValidMapData
    if L11_2 then
      L11_2 = next
      L12_2 = ValidMapData
      L11_2 = L11_2(L12_2)
      if L11_2 then
        L11_2 = print
        L12_2 = "Listing active supported map presets:"
        L11_2(L12_2)
        L11_2 = tprint
        L12_2 = ValidMapData
        L11_2(L12_2)
      end
    end
    L11_2 = {}
    L12_2 = GetResourceMetadata
    L13_2 = GetCurrentResourceName
    L13_2 = L13_2()
    L14_2 = "version"
    L15_2 = 0
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L11_2.police_version = L12_2
    L12_2 = {}
    L12_2.note = "Third party search has nothing with integration functionality!"
    L13_2 = {}
    L13_2.identity = L5_2
    L13_2.multichar = L6_2
    L13_2.fuel = L7_2
    L13_2.society = L9_2
    L13_2.banking = L8_2
    L13_2.target = L10_2
    L12_2.list = L13_2
    L11_2.third_party_search = L12_2
    L12_2 = {}
    if L4_2 then
      L13_2 = L4_2.getVehicleCount
      L14_2 = L3_2
      L13_2 = L13_2(L14_2)
      if L13_2 then
        goto lbl_108
      end
    end
    L13_2 = 0
    ::lbl_108::
    L12_2.vehicles_in_garage = L13_2
    L11_2.garage_stock_system = L12_2
    L12_2 = {}
    L13_2 = Config
    L13_2 = L13_2.Society
    L12_2.name = L13_2
    L13_2 = Config
    L13_2 = L13_2.Society
    if L13_2 then
      L13_2 = Config
      L13_2 = L13_2.Society
      L14_2 = Society
      L14_2 = L14_2.NONE
      if L13_2 ~= L14_2 then
        L13_2 = GetResourceMetadata
        L14_2 = Config
        L14_2 = L14_2.Society
        L15_2 = "version"
        L16_2 = 0
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        if L13_2 then
          goto lbl_134
        end
      end
    end
    L13_2 = "Undefined"
    ::lbl_134::
    L12_2.version = L13_2
    L13_2 = {}
    L14_2 = SocietyService
    L14_2 = L14_2.GetMoney
    L15_2 = L3_2
    L14_2 = L14_2(L15_2)
    L13_2.balance = L14_2
    L12_2.account = L13_2
    L11_2.society = L12_2
    L12_2 = {}
    L13_2 = Config
    L13_2 = L13_2.AutoDuty
    if L13_2 then
      L13_2 = "Enabled"
      if L13_2 then
        goto lbl_154
      end
    end
    L13_2 = "Disabled"
    ::lbl_154::
    L12_2.AutoDuty = L13_2
    L13_2 = Config
    L13_2 = L13_2.DutySystemState
    if L13_2 then
      L13_2 = "Enabled"
      if L13_2 then
        goto lbl_163
      end
    end
    L13_2 = "Disabled"
    ::lbl_163::
    L12_2.DutySystemState = L13_2
    L11_2.other = L12_2
    L12_2 = {}
    L13_2 = ZONE_TYPE
    L13_2 = L13_2.WEAPON_SHOP
    L14_2 = {}
    L15_2 = Config
    L15_2 = L15_2.ItemShop
    L15_2 = L15_2.Enable
    if L15_2 then
      L15_2 = "Rendering zone"
      if L15_2 then
        goto lbl_180
      end
    end
    L15_2 = "Zone disabled"
    ::lbl_180::
    L14_2.state = L15_2
    L14_2.variable = "Config.ItemShop.Enable"
    L12_2[L13_2] = L14_2
    L13_2 = ZONE_TYPE
    L13_2 = L13_2.GARAGE_VEHICLE
    L14_2 = {}
    L15_2 = Config
    L15_2 = L15_2.Garage
    L15_2 = L15_2.Enable
    if L15_2 then
      L15_2 = "Rendering zone"
      if L15_2 then
        goto lbl_196
      end
    end
    L15_2 = "Zone disabled"
    ::lbl_196::
    L14_2.state = L15_2
    L14_2.variable = "Config.Garage.Enable"
    L12_2[L13_2] = L14_2
    L13_2 = ZONE_TYPE
    L13_2 = L13_2.DUTY
    L14_2 = {}
    L15_2 = Config
    L15_2 = L15_2.DutySystemState
    if L15_2 then
      L15_2 = "Rendering zone"
      if L15_2 then
        goto lbl_211
      end
    end
    L15_2 = "Zone disabled"
    ::lbl_211::
    L14_2.state = L15_2
    L14_2.variable = "Config.DutySystemState"
    L12_2[L13_2] = L14_2
    L13_2 = ZONE_TYPE
    L13_2 = L13_2.BOSS_MENU
    L14_2 = {}
    L15_2 = Config
    L15_2 = L15_2.BossMenu
    L15_2 = L15_2.Enable
    if L15_2 then
      L15_2 = "Rendering zone"
      if L15_2 then
        goto lbl_227
      end
    end
    L15_2 = "Zone disabled"
    ::lbl_227::
    L14_2.state = L15_2
    L14_2.variable = "Config.BossMenu.Enable"
    L12_2[L13_2] = L14_2
    L13_2 = ZONE_TYPE
    L13_2 = L13_2.CLOTHING_ROOM
    L14_2 = {}
    L15_2 = Config
    L15_2 = L15_2.Outfits
    L15_2 = L15_2.Enable
    if L15_2 then
      L15_2 = "Rendering zone"
      if L15_2 then
        goto lbl_243
      end
    end
    L15_2 = "Zone disabled"
    ::lbl_243::
    L14_2.state = L15_2
    L14_2.variable = "Config.Outfits.Enable"
    L12_2[L13_2] = L14_2
    L13_2 = ZONE_TYPE
    L13_2 = L13_2.GARAGE_AIR
    L14_2 = {}
    L15_2 = Config
    L15_2 = L15_2.Garage
    L15_2 = L15_2.Enable
    if L15_2 then
      L15_2 = "Rendering zone"
      if L15_2 then
        goto lbl_259
      end
    end
    L15_2 = "Zone disabled"
    ::lbl_259::
    L14_2.state = L15_2
    L14_2.variable = "Config.Garage.Enable"
    L12_2[L13_2] = L14_2
    L11_2.zones = L12_2
    L12_2 = {}
    L13_2 = Config
    L13_2 = L13_2.Tackle
    L13_2 = L13_2.Enable
    L12_2.tackle_enabled = L13_2
    L13_2 = Config
    L13_2 = L13_2.JobMenu
    L13_2 = L13_2.Enable
    L12_2.job_menu_enabled = L13_2
    L13_2 = Config
    L13_2 = L13_2.RadialMenu
    L13_2 = L13_2.Enable
    L12_2.radial_menu_enabled = L13_2
    L11_2.config = L12_2
    L12_2 = {}
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Framework
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Framework
    L15_2 = Framework
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Framework
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_300
      end
    end
    L14_2 = "Undefined"
    ::lbl_300::
    L13_2.version = L14_2
    L12_2.framework = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.InteractionsTarget
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.InteractionsTarget
    L15_2 = InteractionsTarget
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.InteractionsTarget
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_322
      end
    end
    L14_2 = "Undefined"
    ::lbl_322::
    L13_2.version = L14_2
    L12_2.target = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Inventory
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Inventory
    L15_2 = Inventory
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Inventory
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_344
      end
    end
    L14_2 = "Undefined"
    ::lbl_344::
    L13_2.version = L14_2
    L12_2.inventory = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Society
    if not L14_2 then
      L14_2 = "Undefined society"
    end
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Society
    if L14_2 then
      L14_2 = Config
      L14_2 = L14_2.Society
      L15_2 = Society
      L15_2 = L15_2.NONE
      if L14_2 ~= L15_2 then
        L14_2 = GetResourceMetadata
        L15_2 = Config
        L15_2 = L15_2.Society
        L16_2 = "version"
        L17_2 = 0
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        if L14_2 then
          goto lbl_373
        end
      end
    end
    L14_2 = "Undefined"
    ::lbl_373::
    L13_2.version = L14_2
    L12_2.society = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Keys
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Keys
    L15_2 = Keys
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Keys
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_395
      end
    end
    L14_2 = "Undefined"
    ::lbl_395::
    L13_2.version = L14_2
    L12_2.keys = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Garages
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Garages
    L15_2 = Garages
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Garages
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_417
      end
    end
    L14_2 = "Undefined"
    ::lbl_417::
    L13_2.version = L14_2
    L12_2.garage = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Invoices
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Invoices
    L15_2 = Invoices
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Invoices
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_439
      end
    end
    L14_2 = "Undefined"
    ::lbl_439::
    L13_2.version = L14_2
    L12_2.invoices = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Prison
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Prison
    L15_2 = Prison
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Prison
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_461
      end
    end
    L14_2 = "Undefined"
    ::lbl_461::
    L13_2.version = L14_2
    L12_2.prison = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.PG
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.PG
    L15_2 = Garages
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.PG
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_483
      end
    end
    L14_2 = "Undefined"
    ::lbl_483::
    L13_2.version = L14_2
    L12_2.pg = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Fuel
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Fuel
    L15_2 = Fuel
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Fuel
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_505
      end
    end
    L14_2 = "Undefined"
    ::lbl_505::
    L13_2.version = L14_2
    L12_2.fuel = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Licence
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Licence
    L15_2 = Licence
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Licence
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_527
      end
    end
    L14_2 = "Undefined"
    ::lbl_527::
    L13_2.version = L14_2
    L12_2.licence = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Menu
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Menu
    L15_2 = Menu
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Menu
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_549
      end
    end
    L14_2 = "Undefined"
    ::lbl_549::
    L13_2.version = L14_2
    L12_2.menu = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Notify
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Notify
    L15_2 = Notify
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Notify
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_571
      end
    end
    L14_2 = "Undefined"
    ::lbl_571::
    L13_2.version = L14_2
    L12_2.notify = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.MDT
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.MDT
    L15_2 = MDT
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.MDT
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_593
      end
    end
    L14_2 = "Undefined"
    ::lbl_593::
    L13_2.version = L14_2
    L12_2.mdt = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.TextUI
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.TextUI
    L15_2 = TextUI
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.TextUI
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_615
      end
    end
    L14_2 = "Undefined"
    ::lbl_615::
    L13_2.version = L14_2
    L12_2.textui = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Dispatch
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Dispatch
    L15_2 = Dispatch
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Dispatch
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_637
      end
    end
    L14_2 = "Undefined"
    ::lbl_637::
    L13_2.version = L14_2
    L12_2.dispatch = L13_2
    L13_2 = {}
    L14_2 = Config
    L14_2 = L14_2.Duty
    L13_2.name = L14_2
    L14_2 = Config
    L14_2 = L14_2.Duty
    L15_2 = Duty
    L15_2 = L15_2.NONE
    if L14_2 ~= L15_2 then
      L14_2 = GetResourceMetadata
      L15_2 = Config
      L15_2 = L15_2.Duty
      L16_2 = "version"
      L17_2 = 0
      L14_2 = L14_2(L15_2, L16_2, L17_2)
      if L14_2 then
        goto lbl_659
      end
    end
    L14_2 = "Undefined"
    ::lbl_659::
    L13_2.version = L14_2
    L12_2.duty = L13_2
    L11_2.integration = L12_2
    if L11_2 then
      L12_2 = type
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      if "table" == L12_2 then
        L12_2 = next
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        if L12_2 then
          L12_2 = print
          L13_2 = "Showing police enviroment data:"
          L12_2(L13_2)
          L12_2 = tprint
          L13_2 = L11_2
          L12_2(L13_2)
        end
      end
    end
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterCommand
L2_1 = "rcore_police_inventory_test_search_self"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L4_2 = Framework
  L4_2 = L4_2.isAdmin
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = StartClient
    L5_2 = L3_2
    L6_2 = "InventoryTestSearch"
    L7_2 = tonumber
    L8_2 = A1_2[1]
    L7_2, L8_2 = L7_2(L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterCommand
L2_1 = "rcore_police_inventory_test_stash_self"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L4_2 = Framework
  L4_2 = L4_2.isAdmin
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = InventoryService
    L4_2 = L4_2.RunTestStash
    if L4_2 then
      L4_2 = InventoryService
      L4_2 = L4_2.RunTestStash
      L5_2 = L3_2
      L4_2(L5_2)
    else
      L4_2 = dbg
      L4_2 = L4_2.critical
      L5_2 = "Stash test doesnt exist for inventory named: %s"
      L6_2 = Config
      L6_2 = L6_2.Inventory
      L4_2(L5_2, L6_2)
    end
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
L1_1 = RegisterCommand
L2_1 = "rcore_police_test_admin"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if 0 == A0_2 then
    return
  end
  L3_2 = A0_2
  L4_2 = Config
  L4_2 = L4_2.Framework
  L5_2 = Framework
  L5_2 = L5_2.NONE
  L4_2 = L4_2 == L5_2
  L5_2 = false
  if L4_2 then
    L6_2 = Ace
    L6_2 = L6_2.Can
    L7_2 = L3_2
    L8_2 = Permissions
    L8_2 = L8_2.HAS_SERVER_GROUP
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L5_2 = true
    end
  end
  L6_2 = {}
  L7_2 = Framework
  L7_2 = L7_2.isAdmin
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2.isAdmin = L7_2
  if L4_2 then
    L7_2 = Framework
    L7_2 = L7_2.getPlayerGroup
    if L7_2 then
      L7_2 = Framework
      L7_2 = L7_2.getPlayerGroup
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        goto lbl_45
      end
    end
  end
  L7_2 = "This is only for standalone servers"
  ::lbl_45::
  L6_2.playerGroup = L7_2
  L7_2 = IsPlayerAceAllowed
  L8_2 = L3_2
  L9_2 = "command"
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 then
    L7_2 = true
    if L7_2 then
      goto lbl_56
    end
  end
  L7_2 = false
  ::lbl_56::
  L6_2.playerAceNative = L7_2
  L6_2.playerAceLib = L5_2
  if not L4_2 then
    L7_2 = "playerAceLib server-group check only runs on standalone (Framework.NONE)."
    if L7_2 then
      goto lbl_64
    end
  end
  L7_2 = nil
  ::lbl_64::
  L6_2.notes = L7_2
  if L6_2 then
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" == L7_2 then
      L7_2 = next
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = dbg
        L7_2 = L7_2.info
        L8_2 = "Showing informations about your admin permissions"
        L7_2(L8_2)
        L7_2 = tprint
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
end
L4_1 = false
L1_1(L2_1, L3_1, L4_1)
