local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L1_2.__index = L1_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = setmetatable
    L2_3 = {}
    L3_3 = L1_2
    L1_3 = L1_3(L2_3, L3_3)
    L1_3.name = A0_3
    L2_3 = {}
    L2_3.balance = 0
    L1_3.society = L2_3
    L1_3.garageStock = 0
    L2_3 = {}
    L1_3.members = L2_3
    return L1_3
  end
  L1_2.new = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = A0_3.members
    if L2_3 then
      L2_3 = next
      L3_3 = A0_3.members
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = ipairs
        L3_3 = A0_3.members
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = L7_3.identifier
          L9_3 = A1_3.identifier
          if L8_3 == L9_3 then
            return
          end
        end
      end
    end
    L2_3 = table
    L2_3 = L2_3.insert
    L3_3 = A0_3.members
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
    L3_3 = A0_3
    L2_3 = A0_3.updateGlobalState
    L2_3(L3_3)
    L2_3 = TriggerLocalServerEvent
    L3_3 = "onGroups"
    L4_3 = "addMember"
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
    L3_3 = A0_3
    L2_3 = A0_3.SyncCount
    L2_3(L3_3)
    L2_3 = dbg
    L2_3 = L2_3.debug
    L3_3 = "Group %s: Player %s (%s) was added."
    L4_3 = A0_3.name
    L5_3 = GetPlayerName
    L6_3 = A1_3.playerId
    L5_3 = L5_3(L6_3)
    L6_3 = A1_3.playerId
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L1_2.addMember = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = A0_3.members
    if not L2_3 then
      return
    end
    L2_3 = ipairs
    L3_3 = A0_3.members
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.identifier
      L9_3 = A1_3.identifier
      if L8_3 == L9_3 then
        L8_3 = A0_3.members
        L8_3[L6_3] = A1_3
        L9_3 = A0_3
        L8_3 = A0_3.updateGlobalState
        L8_3(L9_3)
        L8_3 = TriggerLocalServerEvent
        L9_3 = "onGroups"
        L10_3 = "updateMember"
        L11_3 = A1_3
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = dbg
        L8_3 = L8_3.debug
        L9_3 = "Group %s: Player %s (%s) was updated."
        L10_3 = A0_3.name
        L11_3 = GetPlayerName
        L12_3 = A1_3.playerId
        L11_3 = L11_3(L12_3)
        L12_3 = A1_3.playerId
        L8_3(L9_3, L10_3, L11_3, L12_3)
        return
      end
    end
  end
  L1_2.updateMember = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = ipairs
    L3_3 = A0_3.members
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.identifier
      if L8_3 == A1_3 then
        L8_3 = table
        L8_3 = L8_3.remove
        L9_3 = A0_3.members
        L10_3 = L6_3
        L8_3(L9_3, L10_3)
        L9_3 = A0_3
        L8_3 = A0_3.updateGlobalState
        L8_3(L9_3)
        L8_3 = TriggerLocalServerEvent
        L9_3 = "onGroups"
        L10_3 = "removeMember"
        L11_3 = L7_3
        L8_3(L9_3, L10_3, L11_3)
        L9_3 = A0_3
        L8_3 = A0_3.SyncCount
        L8_3(L9_3)
        L8_3 = dbg
        L8_3 = L8_3.debug
        L9_3 = "Group %s: Player %s was removed."
        L10_3 = A0_3.name
        L11_3 = A1_3
        L8_3(L9_3, L10_3, L11_3)
        L8_3 = true
        return L8_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L1_2.removeMember = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_3
    L2_3 = L1_3.society
    if L2_3 then
      L2_3 = L1_3.society
      L3_3 = SocietyService
      L3_3 = L3_3.GetMoney
      L4_3 = A0_3.name
      L3_3 = L3_3(L4_3)
      L2_3.balance = L3_3
    end
    L2_3 = L1_3.garageStock
    if L2_3 then
      L2_3 = GarageService
      L2_3 = L2_3.GetStockCount
      L3_3 = A0_3.name
      L2_3 = L2_3(L3_3)
      L1_3.garageStock = L2_3
    end
    return A0_3
  end
  L1_2.getGlobalStateData = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_3
    L2_3 = L1_3.society
    if L2_3 then
      L2_3 = L1_3.society
      L3_3 = SocietyService
      L3_3 = L3_3.GetMoney
      L4_3 = A0_3.name
      L3_3 = L3_3(L4_3)
      L2_3.balance = L3_3
    end
    L2_3 = L1_3.garageStock
    if L2_3 then
      L2_3 = GarageService
      L2_3 = L2_3.GetStockCount
      L3_3 = A0_3.name
      L2_3 = L2_3(L3_3)
      L1_3.garageStock = L2_3
    end
    L2_3 = StartClient
    L3_3 = -1
    L4_3 = "UpdateSpecificGroupData"
    L5_3 = A0_3.name
    L6_3 = A0_3
    L2_3(L3_3, L4_3, L5_3, L6_3)
  end
  L1_2.updateGlobalState = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = "rcore_police_departments_count"
    L2_3 = GroupsService
    L2_3 = L2_3.GetAllDeparmentsCount
    L2_3 = L2_3()
    L3_3 = SetTimeout
    L4_3 = 500
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4
      L0_4 = TriggerClientEvent
      L1_4 = "police:SetCopCount"
      L2_4 = -1
      L3_4 = L2_3
      L0_4(L1_4, L2_4, L3_4)
    end
    L3_3(L4_3, L5_3)
    L3_3 = GlobalState
    if L3_3 then
      L3_3 = GlobalState
      L3_3[L1_3] = L2_3
    end
  end
  L1_2.SyncCount = L2_2
  function L2_2(A0_3, A1_3, ...)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L2_3 = next
    L3_3 = A0_3.members
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      return
    end
    L2_3 = pairs
    L3_3 = A0_3.members
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.playerId
      if L8_3 then
        L8_3 = StartClient
        L9_3 = L7_3.playerId
        L10_3 = A1_3
        L11_3 = ...
        L8_3(L9_3, L10_3, L11_3)
      end
    end
  end
  L1_2.StartEvent = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L2_3 = next
    L3_3 = A0_3.members
    L2_3 = L2_3(L3_3)
    if not L2_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Group %s: Failed to send group message since no members found."
      L4_3 = A0_3.name
      return L2_3(L3_3, L4_3)
    end
    L2_3 = pairs
    L3_3 = A0_3.members
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.playerId
      if L8_3 then
        L8_3 = Framework
        L8_3 = L8_3.sendNotification
        L9_3 = L7_3.playerId
        L10_3 = A1_3
        L8_3(L9_3, L10_3)
      end
    end
  end
  L1_2.Notify = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L2_3 = A0_3.members
    if L2_3 then
      L2_3 = next
      L3_3 = A0_3.members
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L2_3 = pairs
        L3_3 = A0_3.members
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = L7_3.identifier
          if L8_3 == A1_3 then
            L8_3 = true
            L9_3 = L7_3
            return L8_3, L9_3
          end
        end
      end
    end
    L2_3 = false
    return L2_3
  end
  L1_2.HasMember = L2_2
  function L2_2(A0_3)
    local L1_3
    L1_3 = A0_3.members
    if L1_3 then
      L1_3 = A0_3.members
      L1_3 = #L1_3
      if L1_3 then
        goto lbl_9
      end
    end
    L1_3 = 0
    ::lbl_9::
    return L1_3
  end
  L1_2.GetSize = L2_2
  L2_2 = {}
  L0_2.groups = L2_2
  L0_2.groupsRegistered = false
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_2.groups
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Groups storage: Group %s is not found as allowed in your config.lua."
      L4_3 = A0_3
      L2_3(L3_3, L4_3)
      L2_3 = false
      return L2_3
    end
    L3_3 = L1_3
    L2_3 = L1_3.getGlobalStateData
    return L2_3(L3_3)
  end
  L0_2.getGlobalStateData = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L0_3 = 0
    L1_3 = pairs
    L2_3 = L0_2.groups
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      if L6_3 then
        L7_3 = L6_3.members
        if L7_3 then
          L7_3 = pairs
          L8_3 = L6_3.members
          L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
          for L11_3, L12_3 in L7_3, L8_3, L9_3, L10_3 do
            L13_3 = L12_3.duty
            if L13_3 then
              L0_3 = L0_3 + 1
            end
          end
        end
      end
    end
    if L0_3 > 0 then
      L1_3 = "FOUND_ONLINE_PLAYERS"
      if L1_3 then
        goto lbl_32
      end
    end
    L1_3 = "NO_ONLINE_PLAYERS"
    ::lbl_32::
    L2_3 = TriggerLocalServerEvent
    L3_3 = "onGroups"
    L4_3 = "GetPoliceOnline"
    L5_3 = L0_3
    L6_3 = GetInvokingResource
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3()
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L2_3 = L0_3
    L3_3 = L1_3
    return L2_3, L3_3
  end
  L0_2.countAllDepartments = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L0_2.groups
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Groups storage: Group %s is not found as allowed in your config.lua."
      L4_3 = A0_3
      L2_3(L3_3, L4_3)
      L2_3 = false
      return L2_3
    end
    L3_3 = L1_3
    L2_3 = L1_3.updateGlobalState
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
  end
  L0_2.updateGlobalState = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if not A0_3 then
      L1_3 = dbg
      L1_3 = L1_3.critical
      L2_3 = "Groups storage: Player model is not provided."
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = A0_3.group
    if not L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.critical
      L2_3 = "Groups storage: Player model group is not provided."
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = A0_3.identifier
    if not L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.critical
      L2_3 = "Groups storage: Player model player id is not provided."
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.groupsRegistered
    if not L1_3 then
      L1_3 = WaitFor
      function L2_3()
        local L0_4, L1_4
        L0_4 = L0_2.groupsRegistered
        return L0_4
      end
      L3_3 = 12500
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L2_3 = dbg
        L2_3 = L2_3.critical
        L3_3 = "Failed to find registered groups!"
        L2_3(L3_3)
      end
    end
    L1_3 = L0_2.groups
    L2_3 = A0_3.group
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Groups storage: Group %s is not found as allowed in your config.lua."
      L4_3 = A0_3.group
      L2_3(L3_3, L4_3)
      L2_3 = false
      return L2_3
    end
    L3_3 = L1_3
    L2_3 = L1_3.addMember
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    L2_3 = true
    return L2_3
  end
  L0_2.addPlayer = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if not A0_3 then
      L1_3 = dbg
      L1_3 = L1_3.critical
      L2_3 = "Groups storage: Player model is not provided."
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = A0_3.group
    if not L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.critical
      L2_3 = "Groups storage: Player model group is not provided."
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = A0_3.identifier
    if not L1_3 then
      L1_3 = dbg
      L1_3 = L1_3.critical
      L2_3 = "Groups storage: Player model player id is not provided."
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = L0_2.groupsRegistered
    if not L1_3 then
      L1_3 = WaitFor
      function L2_3()
        local L0_4, L1_4
        L0_4 = L0_2.groupsRegistered
        return L0_4
      end
      L3_3 = 12500
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L2_3 = dbg
        L2_3 = L2_3.critical
        L3_3 = "Failed to find registered groups!"
        L2_3(L3_3)
      end
    end
    L1_3 = L0_2.groups
    L2_3 = A0_3.group
    L1_3 = L1_3[L2_3]
    if not L1_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Groups storage: Group %s is not found as allowed in your config.lua."
      L4_3 = A0_3.group
      L2_3(L3_3, L4_3)
      L2_3 = false
      return L2_3
    end
    L3_3 = L1_3
    L2_3 = L1_3.updateMember
    L4_3 = A0_3
    L2_3(L3_3, L4_3)
    L2_3 = true
    return L2_3
  end
  L0_2.updatePlayer = L2_2
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    if A1_3 then
      L2_3 = L0_2.groups
      L2_3 = L2_3[A1_3]
      if L2_3 then
        goto lbl_13
      end
    end
    L2_3 = dbg
    L2_3 = L2_3.critical
    L3_3 = "Groups storage: Group %s is not found."
    L4_3 = A1_3
    do return L2_3(L3_3, L4_3) end
    ::lbl_13::
    L2_3 = L0_2.groups
    L2_3 = L2_3[A1_3]
    L3_3 = L2_3
    L2_3 = L2_3.removeMember
    L4_3 = A0_3
    return L2_3(L3_3, L4_3)
  end
  L0_2.removePlayer = L2_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = pairs
    L2_3 = L0_2.groups
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L0_2.groups
      L7_3 = L7_3[L5_3]
      L8_3 = L7_3
      L7_3 = L7_3.HasMember
      L9_3 = A0_3
      L7_3, L8_3 = L7_3(L8_3, L9_3)
      if L7_3 then
        L9_3 = true
        L10_3 = L8_3
        return L9_3, L10_3
      end
    end
    L1_3 = false
    L2_3 = nil
    return L1_3, L2_3
  end
  L0_2.hasMember = L2_2
  function L2_2()
    local L0_3, L1_3
    L0_3 = L0_2.groups
    return L0_3
  end
  L0_2.returnAllGroups = L2_2
  function L2_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = pcall
    L2_3 = A0_3
    L3_3, L4_3, L5_3, L6_3, L7_3 = ...
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    if not L1_3 then
      L3_3 = print
      L4_3 = "Error:"
      L5_3 = L2_3
      L6_3 = A0_3
      L7_3 = ...
      L3_3(L4_3, L5_3, L6_3, L7_3)
    end
    L3_3 = L1_3
    L4_3 = L2_3
    return L3_3, L4_3
  end
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L1_3 = L0_2.groups
    L1_3 = L1_3[A0_3]
    if not L1_3 then
      L2_3 = dbg
      L2_3 = L2_3.critical
      L3_3 = "Groups storage: Group %s is not found."
      L4_3 = A0_3
      L2_3(L3_3, L4_3)
      L2_3 = {}
      return L2_3
    end
    L2_3 = {}
    L3_3 = L1_3.members
    if L3_3 then
      L3_3 = next
      L4_3 = L1_3.members
      L3_3 = L3_3(L4_3)
      if L3_3 then
        L3_3 = ipairs
        L4_3 = L1_3.members
        L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
        for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
          L9_3 = L8_3.playerId
          if L9_3 then
            L9_3 = table
            L9_3 = L9_3.insert
            L10_3 = L2_3
            L11_3 = L8_3.playerId
            L9_3(L10_3, L11_3)
          end
        end
      end
    end
    return L2_3
  end
  L0_2.getGroupPlayersByDerpartmentName = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = dbg
    L0_3 = L0_3.debug
    L1_3 = "Groups storage: Initialization registering groups."
    L0_3(L1_3)
    L0_3 = Config
    L0_3 = L0_3.JobGroups
    L0_3 = #L0_3
    if L0_3 <= 0 then
      L1_3 = table
      L1_3 = L1_3.size
      L2_3 = Config
      L2_3 = L2_3.JobGroups
      L1_3 = L1_3(L2_3)
      L0_3 = L1_3
    end
    L1_3 = Config
    L1_3 = L1_3.JobGroups
    if L1_3 then
      L1_3 = next
      L2_3 = Config
      L2_3 = L2_3.JobGroups
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = pairs
        L2_3 = Config
        L2_3 = L2_3.JobGroups
        L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
        for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
          L7_3 = Config
          L7_3 = L7_3.JobGroups
          L7_3 = L7_3[L5_3]
          if L7_3 then
            L7_3 = L0_2.groups
            L7_3 = L7_3[L5_3]
            if not L7_3 then
              L7_3 = L0_2.groups
              L8_3 = L1_2.new
              L9_3 = L5_3
              L8_3 = L8_3(L9_3)
              L7_3[L5_3] = L8_3
              L7_3 = DutyService
              L7_3 = L7_3.ActiveService
              if L7_3 then
                L7_3 = L2_2
                L8_3 = DutyService
                L8_3 = L8_3.ActiveService
                L9_3 = L5_3
                L7_3(L8_3, L9_3)
              end
              L7_3 = SocietyService
              L7_3 = L7_3.Register
              if L7_3 then
                L7_3 = L2_2
                L8_3 = SocietyService
                L8_3 = L8_3.Register
                L9_3 = L5_3
                L7_3(L8_3, L9_3)
              end
            end
          end
        end
        L1_3 = dbg
        L1_3 = L1_3.debug
        L2_3 = "Groups storage: Groups were registered with size: %s"
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
        L0_2.groupsRegistered = true
        L1_3 = L0_2.registerPlayers
        L1_3()
      end
    end
  end
  L0_2.registerGroups = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = GetPlayers
    L0_3 = L0_3()
    L1_3 = pairs
    L2_3 = L0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = tonumber
      L8_3 = L6_3
      L7_3 = L7_3(L8_3)
      if L7_3 then
        L8_3 = GroupsService
        L8_3 = L8_3.AddPlayer
        L9_3 = L7_3
        L8_3(L9_3)
      end
    end
  end
  L0_2.registerPlayers = L3_2
  return L0_2
end
GroupsStorage = L0_1
L0_1 = Object
L0_1 = L0_1.registerStorage
L1_1 = STORAGE_GROUPS
L2_1 = GroupsStorage
L2_1 = L2_1()
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "rcore_police:server:SetDuty"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = GroupsService
  L1_2 = L1_2.UpdatePlayer
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
