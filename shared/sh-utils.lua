local L0_1, L1_1, L2_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = NONE_RESOURCE
  if A0_2 == L1_2 then
    L1_2 = true
    return L1_2
  end
  if "null" == A0_2 or nil == A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = GetResourceState
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = "started" == L1_2 or "starting" == L1_2
  return L2_2
end
isResourceLoaded = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%l"
  L4_2 = string
  L4_2 = L4_2.upper
  return L1_2(L2_2, L3_2, L4_2)
end
c = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = string
  L2_2 = L2_2.gmatch
  L3_2 = A0_2
  L4_2 = "%d+"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = tonumber
    L10_2 = L6_2
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  return L1_2
end
sVersion = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = sVersion
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = sVersion
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = #L2_2
  L6_2 = #L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 1
  L6_2 = L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L2_2[L8_2]
    if not L9_2 then
      L9_2 = 0
    end
    L10_2 = L3_2[L8_2]
    if not L10_2 then
      L10_2 = 0
    end
    if L9_2 ~= L10_2 then
      L11_2 = false
      return L11_2
    end
  end
  L5_2 = true
  return L5_2
end
IsVersionEqual = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = print
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = A0_2
  L4_2 = {}
  L4_2.indent = true
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
tprint = L0_1
function L0_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = print
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%s %s"
  L5_2 = A1_2
  L7_2 = A0_2
  L6_2 = A0_2.format
  L8_2 = ...
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
afprint = L0_1
function L0_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = print
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%s %s"
  L5_2 = A1_2
  L7_2 = A0_2
  L6_2 = A0_2.format
  L8_2 = ...
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
fprint = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = A0_2
  L3_2 = ...
  return L1_2(L2_2, L3_2)
end
sprint = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2 or nil
  if A0_2 then
    L2_2 = A0_2
    L1_2 = A0_2.match
    L3_2 = "^%d+$"
    L1_2 = L1_2(L2_2, L3_2)
    L1_2 = nil ~= L1_2
  end
  return L1_2
end
isNumber = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Config
  L1_2 = L1_2.SelectPlayers
  L1_2 = L1_2.ShowMode
  L2_2 = L1_2
  L1_2 = L1_2.upper
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if not L1_2 then
    L3_2 = SHOW_MODE
    L1_2 = L3_2.ID
  end
  L3_2 = SHOW_MODE
  L3_2 = L3_2.ID
  if L1_2 == L3_2 then
    L3_2 = "%s: #%s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = _U
    L6_2 = "SELECT_PLAYERS.PLAYER"
    L5_2 = L5_2(L6_2)
    L6_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  else
    L3_2 = SHOW_MODE
    L3_2 = L3_2.OOC_ID
    if L1_2 == L3_2 then
      L3_2 = "%s: %s #%s"
      L4_2 = L3_2
      L3_2 = L3_2.format
      L5_2 = _U
      L6_2 = "SELECT_PLAYERS.PLAYER"
      L5_2 = L5_2(L6_2)
      L6_2 = GetPlayerName
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      L7_2 = A0_2
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L2_2 = L3_2
    end
  end
  return L2_2
end
getPlayerLabelByShowMode = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Props
  L1_2 = L1_2.SpeedCamera
  L1_2 = L1_2.SpeedType
  L2_2 = L1_2
  L1_2 = L1_2.upper
  L1_2 = L1_2(L2_2)
  if "MPH" == L1_2 then
    L2_2 = A0_2 * 2.236936
    return L2_2
  elseif "KMH" == L1_2 then
    L2_2 = A0_2 * 3.6
    return L2_2
  else
    return A0_2
  end
end
getVehicleSpeed = L0_1
L0_1 = table
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L0_1.len = L1_1
L0_1 = table
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if "table" == L1_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.deepcopy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = table
      L10_2 = L10_2.deepcopy
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2[L9_2] = L10_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = table
    L5_2 = L5_2.deepcopy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
L0_1.deepcopy = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if "table" == L1_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L0_1
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = L0_1
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2[L9_2] = L10_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = L0_1
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
L1_1 = table
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = type
      L10_2 = L2_2[L7_2]
      L9_2 = L9_2(L10_2)
      if "table" == L9_2 then
        L9_2 = table
        L9_2 = L9_2.merge
        L10_2 = L2_2[L7_2]
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L2_2[L7_2] = L9_2
    end
    else
      L9_2 = L0_1
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L2_2[L7_2] = L9_2
    end
  end
  return L2_2
end
L1_1.merge = L2_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = string
    L11_2 = L11_2.format
    L12_2 = "^1%s.%s^7"
    L13_2 = A1_2
    L14_2 = L7_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  L5_2 = ", "
  return L3_2(L4_2, L5_2)
end
formatPossible = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  if nil ~= A0_2 then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "table" == L1_2 then
      L1_2 = true
      return L1_2
    end
    L1_2 = false
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
isTable = L1_1
L1_1 = table
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = isTable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = next
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if nil == L1_2 then
      L1_2 = true
      return L1_2
    else
      L1_2 = false
      return L1_2
    end
  else
    L1_2 = true
    return L1_2
  end
end
L1_1.isEmpty = L2_1
L1_1 = table
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
L1_1.size = L2_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = Config
  L2_2 = L2_2.DebugLevel
  if L2_2 then
    L2_2 = isTable
    L3_2 = Config
    L3_2 = L3_2.DebugLevel
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = table
      L2_2 = L2_2.isEmpty
      L3_2 = Config
      L3_2 = L3_2.DebugLevel
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = pairs
        L3_2 = Config
        L3_2 = L3_2.DebugLevel
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          if L7_2 == A0_2 then
            L1_2 = true
          end
        end
    end
    else
      L2_2 = Config
      L2_2 = L2_2.DebugLevel
      if A0_2 == L2_2 then
        L1_2 = true
      end
    end
  end
  return L1_2
end
isDebugAllowed = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = {}
  L0_2.prefix = "System"
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isDebugAllowed
    L2_3 = "INFO"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^5["
      L3_3 = L0_2.prefix
      L4_3 = " | info] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.info = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = isDebugAllowed
    L2_3 = "INFO"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^7"
      L3_3 = sprint
      L4_3 = A0_3
      L5_3 = ...
      L3_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  L0_2.init = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isDebugAllowed
    L2_3 = "SUCCESS"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^3["
      L3_3 = L0_2.prefix
      L4_3 = " | success] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.success = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isDebugAllowed
    L2_3 = "CRITICAL"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^1["
      L3_3 = L0_2.prefix
      L4_3 = " | critical] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.critical = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isDebugAllowed
    L2_3 = "ERROR"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^1["
      L3_3 = L0_2.prefix
      L4_3 = " | error] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.error = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isDebugAllowed
    L2_3 = "SECURITY"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^3["
      L3_3 = L0_2.prefix
      L4_3 = " | security] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.security = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = isDebugAllowed
    L2_3 = "SECURITY_SPAM"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = print
      L2_3 = "^3["
      L3_3 = L0_2.prefix
      L4_3 = " | security] ^7"
      L5_3 = sprint
      L6_3 = A0_3
      L7_3 = ...
      L5_3 = L5_3(L6_3, L7_3)
      L2_3 = L2_3 .. L3_3 .. L4_3 .. L5_3
      L1_3(L2_3)
    end
  end
  L0_2.securitySpam = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = Config
    L1_3 = L1_3.Debug
    if L1_3 then
      L1_3 = print
      L2_3 = "^4[BRIDGE] ^7"
      L3_3 = sprint
      L4_3 = A0_3
      L5_3 = ...
      L3_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  L0_2.bridge = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = Config
    L1_3 = L1_3.DebugClothing
    if L1_3 then
      L1_3 = print
      L2_3 = "^2[ Clothing module ] | debug] ^7"
      L3_3 = sprint
      L4_3 = A0_3
      L5_3 = ...
      L3_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  L0_2.debugClothing = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = isDebugAllowed
    L2_3 = "NETWORK"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = Config
      L1_3 = L1_3.Debug
      if L1_3 then
        L1_3 = print
        L2_3 = "^3[ Network | debug] ^7"
        L3_3 = sprint
        L4_3 = A0_3
        L5_3 = ...
        L3_3 = L3_3(L4_3, L5_3)
        L2_3 = L2_3 .. L3_3
        L1_3(L2_3)
      end
    end
  end
  L0_2.debugNetwork = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = Config
    L1_3 = L1_3.DebugAPI
    if L1_3 then
      L1_3 = print
      L2_3 = "^5[ API module ] | debug] ^7"
      L3_3 = sprint
      L4_3 = A0_3
      L5_3 = ...
      L3_3 = L3_3(L4_3, L5_3)
      L4_3 = [[

 ^3This debug message can be disabled in configs/config.lua - DebugAPI = false]]
      L2_3 = L2_3 .. L3_3 .. L4_3
      L1_3(L2_3)
    end
  end
  L0_2.debugAPI = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = Config
    L1_3 = L1_3.DebugInventory
    if L1_3 then
      L1_3 = print
      L2_3 = "^5[ Inventory module ] | debug] ^7"
      L3_3 = sprint
      L4_3 = A0_3
      L5_3 = ...
      L3_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
    end
  end
  L0_2.debugInventory = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = isDebugAllowed
    L2_3 = "DEBUG"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = Config
      L1_3 = L1_3.Debug
      if L1_3 then
        L1_3 = print
        L2_3 = "^3[ Debug ] ^7"
        L3_3 = sprint
        L4_3 = A0_3
        L5_3 = ...
        L3_3 = L3_3(L4_3, L5_3)
        L2_3 = L2_3 .. L3_3
        L1_3(L2_3)
      end
    end
  end
  L0_2.debug = L1_2
  function L1_2(A0_3, ...)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = isDebugAllowed
    L2_3 = "MENU"
    L1_3 = L1_3(L2_3)
    if L1_3 then
      L1_3 = Config
      L1_3 = L1_3.Debug
      if L1_3 then
        L1_3 = print
        L2_3 = "^3[ Menu ] ^7"
        L3_3 = sprint
        L4_3 = A0_3
        L5_3 = ...
        L3_3 = L3_3(L4_3, L5_3)
        L2_3 = L2_3 .. L3_3
        L1_3(L2_3)
      end
    end
  end
  L0_2.menu = L1_2
  function L1_2(A0_3)
    local L1_3
    L0_2.prefix = A0_3
  end
  L0_2.setupPrefix = L1_2
  function L1_2()
    local L0_3, L1_3
    L0_3 = L0_2.prefix
    return L0_3
  end
  L0_2.getPrefix = L1_2
  return L0_2
end
rdebug = L1_1
function L1_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = rdebug
  L1_2 = L1_2()
  L2_2 = L1_2.info
  L3_2 = A0_2
  L4_2 = ...
  L2_2(L3_2, L4_2)
end
dprint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = "./images/menu/"
  L2_2 = A0_2
  L3_2 = ".png"
  L1_2 = L1_2 .. L2_2 .. L3_2
  return L1_2
end
GetImageByName = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if not A0_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2.x
  if 0.0 == L2_2 then
    L2_2 = A0_2.y
    if 0.0 == L2_2 then
      L2_2 = true
      return L2_2
    end
  end
  L2_2 = #A1_2
  L3_2 = false
  L4_2 = 1
  L5_2 = L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = L7_2 % L2_2
    L9_2 = L9_2 + 1
    L9_2 = A1_2[L9_2]
    L10_2 = L8_2.y
    L11_2 = A0_2.y
    L10_2 = L10_2 > L11_2
    L11_2 = L9_2.y
    L12_2 = A0_2.y
    L11_2 = L11_2 > L12_2
    if L10_2 ~= L11_2 then
      L10_2 = A0_2.x
      L11_2 = L9_2.x
      L12_2 = L8_2.x
      L11_2 = L11_2 - L12_2
      L12_2 = A0_2.y
      L13_2 = L8_2.y
      L12_2 = L12_2 - L13_2
      L11_2 = L11_2 * L12_2
      L12_2 = L9_2.y
      L13_2 = L8_2.y
      L12_2 = L12_2 - L13_2
      L11_2 = L11_2 / L12_2
      L12_2 = L8_2.x
      L11_2 = L11_2 + L12_2
      if L10_2 < L11_2 then
        L3_2 = not L3_2
      end
    end
  end
  return L3_2
end
IsPointInPolygon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 0
  L4_2 = #A0_2
  L5_2 = ipairs
  L6_2 = A0_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L10_2.x
    L1_2 = L1_2 + L11_2
    L11_2 = L10_2.y
    L2_2 = L2_2 + L11_2
    L11_2 = L10_2.z
    L3_2 = L3_2 + L11_2
  end
  L5_2 = vector3
  L6_2 = L1_2 / L4_2
  L7_2 = L2_2 / L4_2
  L8_2 = L3_2 / L4_2
  return L5_2(L6_2, L7_2, L8_2)
end
CalculateCentroid = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = print
    L8_2 = "^3"
    L9_2 = L6_2.name
    L10_2 = "^7"
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2(L8_2)
    L7_2 = L6_2.version
    if L7_2 then
      L7_2 = print
      L8_2 = "^7version: ^3"
      L9_2 = L6_2.version
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.database
    if L7_2 then
      L7_2 = print
      L8_2 = "^7database: ^3"
      L9_2 = L6_2.database
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.debug
    if L7_2 then
      L7_2 = print
      L8_2 = "^7debug: ^3"
      L9_2 = L6_2.debug
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.locale
    if L7_2 then
      L7_2 = print
      L8_2 = "^7locale: ^3"
      L9_2 = L6_2.locale
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.preset
    if L7_2 then
      L7_2 = print
      L8_2 = "^7map: ^3"
      L9_2 = L6_2.preset
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.notify
    if L7_2 then
      L7_2 = print
      L8_2 = "^7notify: ^3"
      L9_2 = L6_2.notify
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.inventory
    if L7_2 then
      L7_2 = L6_2.inventory
      if "auto_detect" == L7_2 then
        L6_2.inventory = "none"
      end
      L7_2 = print
      L8_2 = "^7inventory: ^3"
      L9_2 = L6_2.inventory
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.dispatch
    if L7_2 then
      L7_2 = print
      L8_2 = "^7dispatch: ^3"
      L9_2 = L6_2.dispatch
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.clothing
    if L7_2 then
      L7_2 = print
      L8_2 = "^7clothing: ^3"
      L9_2 = L6_2.clothing
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.framework
    if L7_2 then
      L7_2 = print
      L8_2 = "^7framework: ^3"
      L9_2 = L6_2.framework
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.jailTime
    if L7_2 then
      L7_2 = print
      L8_2 = "^7jail time conversion: ^3"
      L9_2 = L6_2.jailTime
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.phone
    if L7_2 then
      L7_2 = print
      L8_2 = "^7phone: ^3"
      L9_2 = L6_2.phone
      if "auto_detect" == L9_2 then
        L9_2 = "Not any supported phone loaded"
        if L9_2 then
          goto lbl_115
        end
      end
      L9_2 = L6_2.phone
      ::lbl_115::
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.economy
    if L7_2 then
      L7_2 = print
      L8_2 = "^7economy item: ^3"
      L9_2 = L6_2.economy
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
    L7_2 = L6_2.docs
    if L7_2 then
      L7_2 = print
      L8_2 = [[

^7Docs: ^3 ]]
      L9_2 = L6_2.docs
      L8_2 = L8_2 .. L9_2
      L7_2(L8_2)
    end
  end
end
printResource = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if nil == A0_2 then
    return A1_2
  end
  L2_2 = tonumber
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if nil == L2_2 then
    if not A1_2 then
      A1_2 = 0
    end
    return A1_2
  end
  return L2_2
end
safeNumber = L1_1
L1_1 = IsDuplicityVersion
L1_1 = L1_1()
if L1_1 then
  function L1_1(A0_2, A1_2, ...)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
    L2_2 = GetCurrentResourceName
    L2_2 = L2_2()
    if not A1_2 then
      L3_2 = dbg
      L3_2 = L3_2.critical
      L4_2 = "Invalid event name for %s"
      L5_2 = L2_2
      return L3_2(L4_2, L5_2)
    end
    L3_2 = "%s:%s"
    L4_2 = L3_2
    L3_2 = L3_2.format
    L5_2 = L2_2
    L6_2 = "client:"
    L7_2 = A1_2
    L6_2 = L6_2 .. L7_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 then
      return
    end
    L4_2 = nil
    if -1 == A0_2 then
      L4_2 = "ALL PLAYERS"
    else
      L5_2 = GetPlayerName
      L6_2 = A0_2
      L5_2 = L5_2(L6_2)
      L4_2 = L5_2
    end
    L5_2 = dbg
    L5_2 = L5_2.debug
    L6_2 = "Starting client with %s for user %s | Target: %s"
    L7_2 = A1_2
    L8_2 = L4_2
    L9_2 = A0_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = 1000000
    L6_2 = TriggerClientEvent
    L7_2 = L3_2
    L8_2 = A0_2
    L9_2 = ...
    L6_2(L7_2, L8_2, L9_2)
  end
  StartClient = L1_1
else
  function L1_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = IsEntityAPed
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        goto lbl_12
      end
    end
    do return end
    ::lbl_12::
    if A1_2 then
      L2_2 = SetEntityInvincible
      L3_2 = A0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = SetPedCanBeTargetted
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = SetEntityCompletelyDisableCollision
      L3_2 = A0_2
      L4_2 = true
      L5_2 = true
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = SetEntityCanBeDamaged
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = SetPedCanRagdoll
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = FreezeEntityPosition
      L3_2 = A0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = SetEntityProofs
      L3_2 = A0_2
      L4_2 = false
      L5_2 = true
      L6_2 = false
      L7_2 = false
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L2_2 = SetBlockingOfNonTemporaryEvents
      L3_2 = A0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = SetPedCanRagdoll
      L3_2 = A0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = SetEntityInvincible
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = SetPedCanBeTargetted
      L3_2 = A0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = SetEntityCanBeDamaged
      L3_2 = A0_2
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = FreezeEntityPosition
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = SetEntityProofs
      L3_2 = A0_2
      L4_2 = false
      L5_2 = false
      L6_2 = false
      L7_2 = false
      L8_2 = false
      L9_2 = false
      L10_2 = false
      L11_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
      L2_2 = SetBlockingOfNonTemporaryEvents
      L3_2 = A0_2
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  MakePedIgnoreHitFromOtherPlayer = L1_1
  function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
    local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    if nil == A4_2 then
      A4_2 = "keyboard"
    end
    L6_2 = dbg
    L6_2 = L6_2.debug
    L7_2 = "Registering key %s %s %s"
    L8_2 = A3_2
    L9_2 = A1_2
    L10_2 = A2_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
    if nil ~= A5_2 then
      L6_2 = type
      L7_2 = A5_2
      L6_2 = L6_2(L7_2)
      if "table" == L6_2 then
        L6_2 = next
        L7_2 = A5_2
        L6_2 = L6_2(L7_2)
        if L6_2 then
          L6_2 = A5_2.state
          L7_2 = A5_2.cooldown
          L8_2 = nil
          if L6_2 then
            L9_2 = RegisterCommand
            L10_2 = A1_2
            L11_2 = A3_2
            L10_2 = L10_2 .. L11_2
            function L11_2()
              local L0_3, L1_3, L2_3
              L0_3 = GetGameTimer
              L0_3 = L0_3()
              L1_3 = L8_2
              if L1_3 then
                L1_3 = L8_2
                L1_3 = L0_3 - L1_3
                L2_3 = L7_2
                if L1_3 < L2_3 then
                  return
                end
              end
              L1_3 = GetGameTimer
              L1_3 = L1_3()
              L8_2 = L1_3
              L1_3 = A0_2
              L1_3()
            end
            L12_2 = false
            L9_2(L10_2, L11_2, L12_2)
          else
            L9_2 = RegisterCommand
            L10_2 = A1_2
            L11_2 = A3_2
            L10_2 = L10_2 .. L11_2
            L11_2 = A0_2
            L12_2 = false
            L9_2(L10_2, L11_2, L12_2)
          end
      end
    end
    else
      L6_2 = RegisterCommand
      L7_2 = A1_2
      L8_2 = A3_2
      L7_2 = L7_2 .. L8_2
      L8_2 = A0_2
      L9_2 = false
      L6_2(L7_2, L8_2, L9_2)
    end
    L6_2 = RegisterKeyMapping
    L7_2 = A1_2
    L8_2 = A3_2
    L7_2 = L7_2 .. L8_2
    L8_2 = "POLICE:"
    L9_2 = " "
    L10_2 = A2_2
    L8_2 = L8_2 .. L9_2 .. L10_2
    L9_2 = A4_2
    L10_2 = A3_2
    L6_2(L7_2, L8_2, L9_2, L10_2)
  end
  RegisterKey = L1_1
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = {}
  L5_2 = 1
  L6_2 = "{\n"
  while true do
    L7_2 = 0
    L8_2 = pairs
    L9_2 = A0_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L7_2 = L7_2 + 1
    end
    L8_2 = 1
    L9_2 = pairs
    L10_2 = A0_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L2_2[A0_2]
      if nil ~= L15_2 then
        L15_2 = L2_2[A0_2]
        if not (L8_2 >= L15_2) then
          goto lbl_211
        end
      end
      L15_2 = string
      L15_2 = L15_2.find
      L16_2 = L6_2
      L17_2 = "}"
      L19_2 = L6_2
      L18_2 = L6_2.len
      L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      if L15_2 then
        L15_2 = L6_2
        L16_2 = ",\n"
        L15_2 = L15_2 .. L16_2
        L6_2 = L15_2
      else
        L15_2 = string
        L15_2 = L15_2.find
        L16_2 = L6_2
        L17_2 = "\n"
        L19_2 = L6_2
        L18_2 = L6_2.len
        L18_2, L19_2, L20_2, L21_2 = L18_2(L19_2)
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
        if not L15_2 then
          L15_2 = L6_2
          L16_2 = "\n"
          L15_2 = L15_2 .. L16_2
          L6_2 = L15_2
        end
      end
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L4_2
      L17_2 = L6_2
      L15_2(L16_2, L17_2)
      L6_2 = ""
      L15_2 = nil
      L16_2 = type
      L17_2 = L13_2
      L16_2 = L16_2(L17_2)
      if "number" ~= L16_2 then
        L16_2 = type
        L17_2 = L13_2
        L16_2 = L16_2(L17_2)
        if "boolean" ~= L16_2 then
          goto lbl_82
        end
      end
      L16_2 = ""
      L17_2 = tostring
      L18_2 = L13_2
      L17_2 = L17_2(L18_2)
      L18_2 = ""
      L16_2 = L16_2 .. L17_2 .. L18_2
      L15_2 = L16_2
      goto lbl_89
      ::lbl_82::
      L16_2 = ""
      L17_2 = tostring
      L18_2 = L13_2
      L17_2 = L17_2(L18_2)
      L18_2 = ""
      L16_2 = L16_2 .. L17_2 .. L18_2
      L15_2 = L16_2
      ::lbl_89::
      L16_2 = type
      L17_2 = L14_2
      L16_2 = L16_2(L17_2)
      if "number" ~= L16_2 then
        L16_2 = type
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        if "boolean" ~= L16_2 then
          goto lbl_113
        end
      end
      L16_2 = L6_2
      L17_2 = string
      L17_2 = L17_2.rep
      L18_2 = "\t"
      L19_2 = L5_2
      L17_2 = L17_2(L18_2, L19_2)
      L18_2 = L15_2
      L19_2 = " = "
      L20_2 = tostring
      L21_2 = L14_2
      L20_2 = L20_2(L21_2)
      L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
      L6_2 = L16_2
      goto lbl_192
      ::lbl_113::
      L16_2 = type
      L17_2 = L14_2
      L16_2 = L16_2(L17_2)
      if "table" == L16_2 then
        L16_2 = type
        L17_2 = L13_2
        L16_2 = L16_2(L17_2)
        if "number" == L16_2 then
          L16_2 = L6_2
          L17_2 = string
          L17_2 = L17_2.rep
          L18_2 = "\t"
          L19_2 = L5_2
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = "{\n"
          L16_2 = L16_2 .. L17_2 .. L18_2
          L6_2 = L16_2
        else
          L16_2 = L6_2
          L17_2 = string
          L17_2 = L17_2.rep
          L18_2 = "\t"
          L19_2 = L5_2
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = L15_2
          L19_2 = " = {\n"
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
          L6_2 = L16_2
        end
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L3_2
        L18_2 = A0_2
        L16_2(L17_2, L18_2)
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = L3_2
        L18_2 = L14_2
        L16_2(L17_2, L18_2)
        L16_2 = L8_2 + 1
        L2_2[A0_2] = L16_2
        break
      else
        L16_2 = type
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        if "vector3" == L16_2 then
          L16_2 = L6_2
          L17_2 = string
          L17_2 = L17_2.rep
          L18_2 = "\t"
          L19_2 = L5_2
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = L15_2
          L19_2 = " = "
          L20_2 = tostring
          L21_2 = L14_2
          L20_2 = L20_2(L21_2)
          L21_2 = ""
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
          L6_2 = L16_2
        else
          L16_2 = L6_2
          L17_2 = string
          L17_2 = L17_2.rep
          L18_2 = "\t"
          L19_2 = L5_2
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = L15_2
          L19_2 = " = '"
          L20_2 = tostring
          L21_2 = L14_2
          L20_2 = L20_2(L21_2)
          L21_2 = "'"
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
          L6_2 = L16_2
        end
      end
      ::lbl_192::
      if L8_2 == L7_2 then
        L16_2 = L6_2
        L17_2 = "\n"
        L18_2 = string
        L18_2 = L18_2.rep
        L19_2 = "\t"
        L20_2 = L5_2 - 1
        L18_2 = L18_2(L19_2, L20_2)
        L19_2 = "}"
        L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2
        L6_2 = L16_2
      else
        L16_2 = L6_2
        L17_2 = ","
        L16_2 = L16_2 .. L17_2
        L6_2 = L16_2
        goto lbl_224
        ::lbl_211::
        if L8_2 == L7_2 then
          L15_2 = L6_2
          L16_2 = "\n"
          L17_2 = string
          L17_2 = L17_2.rep
          L18_2 = "\t"
          L19_2 = L5_2 - 1
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = "}"
          L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2
          L6_2 = L15_2
        end
      end
      ::lbl_224::
      L8_2 = L8_2 + 1
    end
    if 0 == L7_2 then
      L9_2 = L6_2
      L10_2 = "\n"
      L11_2 = string
      L11_2 = L11_2.rep
      L12_2 = "\t"
      L13_2 = L5_2 - 1
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = ""
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2
      L6_2 = L9_2
    end
    L9_2 = #L3_2
    if not (L9_2 > 0) then
      break
    end
    L9_2 = #L3_2
    A0_2 = L3_2[L9_2]
    L9_2 = #L3_2
    L3_2[L9_2] = nil
    L9_2 = L2_2[A0_2]
    if nil == L9_2 then
      L9_2 = L5_2 + 1
      if L9_2 then
        goto lbl_260
        L5_2 = L9_2 or L5_2
      end
    end
    L5_2 = L5_2 - 1
    goto lbl_260
    do break end
    ::lbl_260::
  end
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L4_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = table
  L7_2 = L7_2.concat
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L6_2 = L7_2
  if not A1_2 then
  end
  return L6_2
end
dumpTable = L1_1
