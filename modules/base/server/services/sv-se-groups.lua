local L0_1, L1_1
L0_1 = GroupsService
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Object
  L2_2 = L2_2.getStorage
  L3_2 = STORAGE_GROUPS
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    L4_2 = ERROR_STATES
    L4_2 = L4_2.NO_STORAGE_FOUND
    return L3_2, L4_2
  end
  if not A0_2 then
    L3_2 = false
    L4_2 = ERROR_STATES
    L4_2 = L4_2.PLAYER_ID_IS_NOT_PROVIDED
    return L3_2, L4_2
  end
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "number" ~= L3_2 then
    L3_2 = false
    L4_2 = ERROR_STATES
    L4_2 = L4_2.PLAYER_ID_IS_NOT_A_NUMBER
    return L3_2, L4_2
  end
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 <= 0 then
    L3_2 = false
    L4_2 = ERROR_STATES
    L4_2 = L4_2.PLAYER_WITH_THIS_ID_IS_OFFLINE
    return L3_2, L4_2
  end
  L3_2 = pcall
  function L4_2()
    local L0_3, L1_3
    L0_3 = Framework
    L0_3 = L0_3.getIdentifier
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 then
    L5_2 = false
    L6_2 = ERROR_STATES
    L6_2 = L6_2.PLAYER_IDENTIFIER_NOT_FOUND
    return L5_2, L6_2
  end
  L5_2 = GroupsService
  L5_2 = L5_2.IsPlayerMemberOfGroup
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  if not L5_2 then
    L7_2 = false
    L8_2 = ERROR_STATES
    L8_2 = L8_2.PLAYER_ALREADY_IN_GROUP
    return L7_2, L8_2
  end
  if not A1_2 and L6_2 then
    A1_2 = L6_2.group
  end
  L7_2 = L2_2.removePlayer
  L8_2 = L4_2
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = "REMOVED_PLAYER"
  return L7_2, L8_2
end
L0_1.RemovePlayer = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.NO_STORAGE_FOUND
    return L2_2, L3_2
  end
  L2_2 = L1_2.updateGlobalState
  L3_2 = A0_2
  return L2_2(L3_2)
end
L0_1.UpdateGlobalState = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.NO_STORAGE_FOUND
    return L2_2, L3_2
  end
  L2_2 = L1_2.getGlobalStateData
  L3_2 = A0_2
  return L2_2(L3_2)
end
L0_1.GetGlobalStateData = L1_1
L0_1 = GroupsService
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Object
  L0_2 = L0_2.getStorage
  L1_2 = STORAGE_GROUPS
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    L1_2 = false
    L2_2 = ERROR_STATES
    L2_2 = L2_2.NO_STORAGE_FOUND
    return L1_2, L2_2
  end
  L1_2 = L0_2.returnAllGroups
  return L1_2()
end
L0_1.GetGroups = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.NO_STORAGE_FOUND
    return L2_2, L3_2
  end
  if not A0_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.PLAYER_ID_IS_NOT_PROVIDED
    return L2_2, L3_2
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" ~= L2_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.PLAYER_ID_IS_NOT_A_NUMBER
    return L2_2, L3_2
  end
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 <= 0 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.PLAYER_WITH_THIS_ID_IS_OFFLINE
    return L2_2, L3_2
  end
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    L4_2 = false
    L5_2 = "UPDATE_NOT_IN_GROUP_TARGET_PLAYER"
    return L4_2, L5_2
  end
  L4_2 = OfficerModel
  L4_2 = L4_2()
  L5_2 = pcall
  function L6_2()
    local L0_3, L1_3
    L0_3 = Framework
    L0_3 = L0_3.getIdentifier
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = pcall
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = Framework
    L0_3 = L0_3.getJob
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = ConvertPlayerJobToStructure
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L2_3 = false
      return L2_3
    end
    return L1_3
  end
  L7_2, L8_2 = L7_2(L8_2)
  if not L5_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_IDENTIFIER_NOT_FOUND
    return L9_2, L10_2
  end
  if not L7_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_JOB_NOT_FOUND
    return L9_2, L10_2
  end
  if not L8_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_JOB_NOT_FOUND
    return L9_2, L10_2
  end
  L9_2 = Config
  L9_2 = L9_2.JobGroups
  L10_2 = L8_2.group
  L9_2 = L9_2[L10_2]
  if nil == L9_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_JOB_GROUP_NOT_FOUND
    return L9_2, L10_2
  end
  L4_2.playerId = A0_2
  L4_2.identifier = L6_2
  L9_2 = L8_2.group
  L4_2.group = L9_2
  L9_2 = L8_2.grade
  L4_2.grade = L9_2
  L9_2 = L8_2.grade_name
  L4_2.grade_name = L9_2
  L9_2 = Framework
  L9_2 = L9_2.getCharacterShortName
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = ""
  end
  L4_2.name = L9_2
  L9_2 = DutyService
  L9_2 = L9_2.IsPlayerInService
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = false
  end
  L4_2.duty = L9_2
  L9_2 = L1_2.updatePlayer
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = "UPDATED_MEMBER"
  return L9_2, L10_2
end
L0_1.UpdatePlayer = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.NO_STORAGE_FOUND
    return L2_2, L3_2
  end
  if not A0_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.PLAYER_ID_IS_NOT_PROVIDED
    return L2_2, L3_2
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" ~= L2_2 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.PLAYER_ID_IS_NOT_A_NUMBER
    return L2_2, L3_2
  end
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 <= 0 then
    L2_2 = false
    L3_2 = ERROR_STATES
    L3_2 = L3_2.PLAYER_WITH_THIS_ID_IS_OFFLINE
    return L2_2, L3_2
  end
  L2_2 = GroupsService
  L2_2 = L2_2.IsPlayerMemberOfGroup
  L3_2 = A0_2
  L2_2, L3_2 = L2_2(L3_2)
  if L2_2 then
    L4_2 = false
    L5_2 = ERROR_STATES
    L5_2 = L5_2.PLAYER_ALREADY_IN_GROUP
    return L4_2, L5_2
  end
  L4_2 = OfficerModel
  L4_2 = L4_2()
  L5_2 = pcall
  function L6_2()
    local L0_3, L1_3
    L0_3 = Framework
    L0_3 = L0_3.getIdentifier
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = pcall
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = Framework
    L0_3 = L0_3.getJob
    L1_3 = A0_2
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      L1_3 = false
      return L1_3
    end
    L1_3 = ConvertPlayerJobToStructure
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    if not L1_3 then
      L2_3 = false
      return L2_3
    end
    return L1_3
  end
  L7_2, L8_2 = L7_2(L8_2)
  if not L5_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_IDENTIFIER_NOT_FOUND
    return L9_2, L10_2
  end
  if not L7_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_JOB_NOT_FOUND
    return L9_2, L10_2
  end
  if not L8_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_JOB_NOT_FOUND
    return L9_2, L10_2
  end
  L9_2 = Config
  L9_2 = L9_2.JobGroups
  L10_2 = L8_2.group
  L9_2 = L9_2[L10_2]
  if nil == L9_2 then
    L9_2 = false
    L10_2 = ERROR_STATES
    L10_2 = L10_2.PLAYER_JOB_GROUP_NOT_FOUND
    return L9_2, L10_2
  end
  L4_2.playerId = A0_2
  L4_2.identifier = L6_2
  L9_2 = L8_2.group
  L4_2.group = L9_2
  L9_2 = L8_2.grade
  L4_2.grade = L9_2
  L9_2 = L8_2.grade_name
  L4_2.grade_name = L9_2
  L9_2 = Framework
  L9_2 = L9_2.getCharacterShortName
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = ""
  end
  L4_2.name = L9_2
  L9_2 = DutyService
  L9_2 = L9_2.IsPlayerInService
  L10_2 = A0_2
  L9_2 = L9_2(L10_2)
  if not L9_2 then
    L9_2 = false
  end
  L4_2.duty = L9_2
  L9_2 = L1_2.addPlayer
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = ERROR_STATES
  L10_2 = L10_2.PLAYER_ADDED_TO_GROUP
  return L9_2, L10_2
end
L0_1.AddPlayer = L1_1
L0_1 = GroupsService
function L1_1()
  local L0_2, L1_2
  L0_2 = Object
  L0_2 = L0_2.getStorage
  L1_2 = STORAGE_GROUPS
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L1_2 = L0_2.countAllDepartments
  return L1_2()
end
L0_1.GetAllDeparmentsCount = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.groups
  L2_2 = L2_2[A0_2]
  return L2_2
end
L0_1.GetGroupByName = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = L1_2.getGroupPlayersByDerpartmentName
  L3_2 = A0_2
  return L2_2(L3_2)
end
L0_1.GetGroupPlayersByDerpartmentName = L1_1
L0_1 = GroupsService
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Object
  L1_2 = L1_2.getStorage
  L2_2 = STORAGE_GROUPS
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  if not A0_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "number" ~= L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 <= 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = Framework
    L0_3 = L0_3.getIdentifier
    L1_3 = A0_2
    return L0_3(L1_3)
  end
  L2_2, L3_2 = L2_2(L3_2)
  if not L2_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L1_2.hasMember
  L5_2 = L3_2
  return L4_2(L5_2)
end
L0_1.IsPlayerMemberOfGroup = L1_1
L0_1 = GroupsService
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = ConvertPlayerJobToStructure
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.group
  L5_2 = GroupsService
  L5_2 = L5_2.IsPlayerMemberOfGroup
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = Config
  L7_2 = L7_2.JobGroups
  L7_2 = L7_2[L4_2]
  L7_2 = nil ~= L7_2
  L8_2 = L6_2 or L8_2
  if L6_2 then
    L8_2 = L6_2.group
  end
  if not L7_2 and L5_2 and L8_2 then
    L9_2 = GroupsService
    L9_2 = L9_2.RemovePlayer
    L10_2 = A0_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = dbg
    L9_2 = L9_2.debug
    L10_2 = "Removed player %s (%s) from group %s"
    L11_2 = A0_2
    L12_2 = GetPlayerName
    L13_2 = A0_2
    L12_2 = L12_2(L13_2)
    L13_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  if L7_2 then
    if not L5_2 then
      L9_2 = GroupsService
      L9_2 = L9_2.AddPlayer
      L10_2 = A0_2
      L9_2(L10_2)
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Added player %s (%s) to group %s"
      L11_2 = A0_2
      L12_2 = GetPlayerName
      L13_2 = A0_2
      L12_2 = L12_2(L13_2)
      L13_2 = L4_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    elseif L8_2 ~= L4_2 then
      L9_2 = GroupsService
      L9_2 = L9_2.RemovePlayer
      L10_2 = A0_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
      L9_2 = GroupsService
      L9_2 = L9_2.AddPlayer
      L10_2 = A0_2
      L9_2(L10_2)
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Switched player %s (%s) from group %s to group %s"
      L11_2 = A0_2
      L12_2 = GetPlayerName
      L13_2 = A0_2
      L12_2 = L12_2(L13_2)
      L13_2 = L8_2
      L14_2 = L4_2
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    else
      L9_2 = GroupsService
      L9_2 = L9_2.UpdatePlayer
      L10_2 = A0_2
      L9_2(L10_2)
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Updated player %s (%s) in group %s"
      L11_2 = A0_2
      L12_2 = GetPlayerName
      L13_2 = A0_2
      L12_2 = L12_2(L13_2)
      L13_2 = L4_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
  L9_2 = GroupsService
  L9_2 = L9_2.GetGroupByName
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  if L9_2 then
    L10_2 = dbg
    L10_2 = L10_2.debug
    L11_2 = "Player %s (%s) job updated to %s for reason: %s | Group size: %s"
    L12_2 = A0_2
    L13_2 = GetPlayerName
    L14_2 = A0_2
    L13_2 = L13_2(L14_2)
    L14_2 = L4_2
    L15_2 = A2_2 or L15_2
    if not A2_2 then
      L15_2 = "N/A"
    end
    L17_2 = L9_2
    L16_2 = L9_2.GetSize
    L16_2, L17_2 = L16_2(L17_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  end
end
L0_1.HandlePlayerJobUpdate = L1_1
