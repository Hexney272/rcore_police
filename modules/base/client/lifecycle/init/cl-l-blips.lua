local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L0_1.__index = L0_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = setmetatable
  L4_2 = {}
  L5_2 = L0_1
  L3_2 = L3_2(L4_2, L5_2)
  L3_2.id = A0_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = TRACK_TYPE
    L4_2 = L4_2.PED
  end
  L3_2.type = L4_2
  L4_2 = AddBlipForCoord
  L5_2 = A1_2.x
  L6_2 = A1_2.y
  L7_2 = A1_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.handle = L4_2
  L3_2.cachedLabel = nil
  L5_2 = L3_2
  L4_2 = L3_2.setStyle
  L4_2(L5_2)
  return L3_2
end
L0_1.new = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = A0_2.cachedLabel
  if L1_2 then
    L1_2 = A0_2.cachedLabel
    return L1_2
  end
  L1_2 = "Unknown"
  L2_2 = A0_2.type
  L3_2 = TRACK_TYPE
  L3_2 = L3_2.PED
  if L2_2 == L3_2 then
    L2_2 = GroupsService
    L2_2 = L2_2.GetCharacterDataByServerId
    L3_2 = A0_2.id
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = Config
      L3_2 = L3_2.Blips
      L3_2 = L3_2.LabelFormat
      if not L3_2 then
        L3_2 = "[{grade}] {name}"
      end
      L4_2 = {}
      L5_2 = L2_2.grade_name
      if not L5_2 then
        L5_2 = "No Grade"
      end
      L4_2["{grade}"] = L5_2
      L5_2 = L2_2.name
      if not L5_2 then
        L5_2 = "No Name"
      end
      L4_2["{name}"] = L5_2
      L5_2 = L2_2.group
      if not L5_2 then
        L5_2 = "No Dept"
      end
      L4_2["{department}"] = L5_2
      L5_2 = pairs
      L6_2 = L4_2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L12_2 = L3_2
        L11_2 = L3_2.gsub
        L13_2 = L9_2
        L14_2 = L10_2
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L3_2 = L11_2
      end
      L1_2 = L3_2
    end
  end
  A0_2.cachedLabel = L1_2
  return L1_2
end
L0_1.getLabel = L1_1
L1_1 = Config
L1_1 = L1_1.Blips
L1_1 = L1_1.SpritesByState
if not L1_1 then
  L1_1 = {}
end
L2_1 = Config
L2_1 = L2_1.Blips
L2_1 = L2_1.Blip
if not L2_1 then
  L2_1 = {}
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.handle
  if not L1_2 then
    return
  end
  L1_2 = SetBlipDisplay
  L2_2 = A0_2.handle
  L3_2 = L2_1.Display
  if not L3_2 then
    L3_2 = 2
  end
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipCategory
  L2_2 = A0_2.handle
  L3_2 = L2_1.Category
  if not L3_2 then
    L3_2 = 7
  end
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipScale
  L2_2 = A0_2.handle
  L3_2 = L2_1.Scale
  if not L3_2 then
    L3_2 = 1.0
  end
  L1_2(L2_2, L3_2)
  L1_2 = SetBlipAsShortRange
  L2_2 = A0_2.handle
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.type
  L2_2 = TRACK_TYPE
  L2_2 = L2_2.PED
  if L1_2 == L2_2 then
    L1_2 = L1_1.Walk
    if not L1_2 then
      L1_2 = {}
    end
    L2_2 = SetBlipSprite
    L3_2 = A0_2.handle
    L4_2 = L1_2.sprite
    if not L4_2 then
      L4_2 = 60
    end
    L2_2(L3_2, L4_2)
    L2_2 = SetBlipColour
    L3_2 = A0_2.handle
    L4_2 = L1_2.color
    if not L4_2 then
      L4_2 = 0
    end
    L2_2(L3_2, L4_2)
    L2_2 = ShowHeadingIndicatorOnBlip
    L3_2 = A0_2.handle
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.getLabel
  L1_2 = L1_2(L2_2)
  L2_2 = Config
  L2_2 = L2_2.Blips
  L2_2 = L2_2.Font
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = BeginTextCommandSetBlipName
  L4_2 = "STRING"
  L3_2(L4_2)
  L3_2 = L2_2.Enable
  if L3_2 then
    L3_2 = L2_2.Name
    if L3_2 then
      L3_2 = AddTextComponentString
      L4_2 = "<font face='%s'>%s</font>"
      L5_2 = L4_2
      L4_2 = L4_2.format
      L6_2 = L2_2.Name
      L7_2 = L1_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  else
    L3_2 = AddTextComponentString
    L4_2 = L1_2
    L3_2(L4_2)
  end
  L3_2 = EndTextCommandSetBlipName
  L4_2 = A0_2.handle
  L3_2(L4_2)
end
L0_1.setStyle = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.handle
  if L2_2 then
    L2_2 = SetBlipCoords
    L3_2 = A0_2.handle
    L4_2 = A1_2.x
    L5_2 = A1_2.y
    L6_2 = A1_2.z
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.updateCoords = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2.cachedLabel = nil
  L2_2 = A0_2
  L1_2 = A0_2.setStyle
  L1_2(L2_2)
end
L0_1.updateLabel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.handle
  if L1_2 then
    L1_2 = RemoveBlip
    L2_2 = A0_2.handle
    L1_2(L2_2)
    A0_2.handle = nil
  end
end
L0_1.remove = L3_1
L3_1 = {}
L4_1 = {}
L3_1.active = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.id
    L9_2 = L7_2.type
    L10_2 = L7_2.coords
    L11_2 = TRACK_TYPE
    L11_2 = L11_2.PED
    if L9_2 == L11_2 then
      L11_2 = MyServerId
      if L8_2 == L11_2 then
        goto lbl_32
      end
    end
    L11_2 = A0_2.active
    L11_2 = L11_2[L8_2]
    if not L11_2 then
      L11_2 = A0_2.active
      L12_2 = L0_1.new
      L13_2 = L8_2
      L14_2 = L10_2
      L15_2 = L9_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2[L8_2] = L12_2
    else
      L11_2 = A0_2.active
      L11_2 = L11_2[L8_2]
      L13_2 = L11_2
      L12_2 = L11_2.updateCoords
      L14_2 = L10_2
      L12_2(L13_2, L14_2)
    end
    ::lbl_32::
  end
end
L3_1.updateBatch = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.active
  L2_2 = L2_2[A1_2]
  if L2_2 then
    L2_2 = A0_2.active
    L2_2 = L2_2[A1_2]
    L3_2 = L2_2
    L2_2 = L2_2.remove
    L2_2(L3_2)
    L2_2 = A0_2.active
    L2_2[A1_2] = nil
  end
end
L3_1.remove = L4_1
L4_1 = RegisterNetEvent
L5_1 = "rcore_police:client:updateBlipsBatch"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  if "" == L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.updateBatch
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "rcore_police:client:removeBlip"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  if "" == L1_2 then
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.remove
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L4_1(L5_1, L6_1)
