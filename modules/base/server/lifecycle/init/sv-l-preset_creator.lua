local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestPresetCreation"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.isAdmin
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = saveLuaTableToFile
  L4_2 = "%s.lua"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if not A1_2 then
    A1_2 = 0
  end
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.rep
  L4_2 = " "
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L2_2
  L6_2 = "{"
  L4_2(L5_2, L6_2)
  L4_2 = true
  L5_2 = 1
  L6_2 = pairs
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2 in L6_2, L7_2, L8_2, L9_2 do
    if L10_2 ~= L5_2 then
      L4_2 = false
      break
    end
    L5_2 = L5_2 + 1
  end
  L6_2 = pairs
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = ""
    if not L4_2 then
      L13_2 = type
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      if "string" == L13_2 then
        L14_2 = L10_2
        L13_2 = L10_2.match
        L15_2 = "^[a-zA-Z_][a-zA-Z0-9_]*$"
        L13_2 = L13_2(L14_2, L15_2)
        if L13_2 then
          L13_2 = L10_2
          L14_2 = " = "
          L13_2 = L13_2 .. L14_2
          L12_2 = L13_2
      end
      else
        L13_2 = string
        L13_2 = L13_2.format
        L14_2 = "[%q] = "
        L15_2 = tostring
        L16_2 = L10_2
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L12_2 = L13_2
      end
    end
    L13_2 = ""
    L14_2 = type
    L15_2 = L11_2
    L14_2 = L14_2(L15_2)
    if "table" == L14_2 then
      L14_2 = tableToLuaCode
      L15_2 = L11_2
      L16_2 = A1_2 + 4
      L14_2 = L14_2(L15_2, L16_2)
      L13_2 = L14_2
    else
      L14_2 = type
      L15_2 = L11_2
      L14_2 = L14_2(L15_2)
      if "string" == L14_2 then
        L15_2 = L11_2
        L14_2 = L11_2.match
        L16_2 = "^vec3%b()$"
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L15_2 = L11_2
          L14_2 = L11_2.match
          L16_2 = "^vector3%b()$"
          L14_2 = L14_2(L15_2, L16_2)
          if not L14_2 then
            L15_2 = L11_2
            L14_2 = L11_2.match
            L16_2 = "^_U%b()$"
            L14_2 = L14_2(L15_2, L16_2)
            if not L14_2 then
              goto lbl_96
            end
          end
        end
        L13_2 = L11_2
        goto lbl_150
        ::lbl_96::
        L15_2 = L12_2
        L14_2 = L12_2.find
        L16_2 = "label"
        L14_2 = L14_2(L15_2, L16_2)
        if L14_2 then
          L15_2 = L11_2
          L14_2 = L11_2.match
          L16_2 = "^ZONES_LABELS%.[A-Z_]+$"
          L14_2 = L14_2(L15_2, L16_2)
          if L14_2 then
            L14_2 = "_U(\""
            L15_2 = L11_2
            L16_2 = "\")"
            L14_2 = L14_2 .. L15_2 .. L16_2
            L13_2 = L14_2
        end
        else
          L15_2 = L12_2
          L14_2 = L12_2.find
          L16_2 = "type"
          L14_2 = L14_2(L15_2, L16_2)
          if L14_2 then
            L15_2 = L11_2
            L14_2 = L11_2.match
            L16_2 = "^[A-Z_]+$"
            L14_2 = L14_2(L15_2, L16_2)
            if L14_2 then
              L14_2 = "ZONE_TYPE."
              L15_2 = L11_2
              L14_2 = L14_2 .. L15_2
              L13_2 = L14_2
          end
          else
            L14_2 = string
            L14_2 = L14_2.format
            L15_2 = "%q"
            L16_2 = L11_2
            L14_2 = L14_2(L15_2, L16_2)
            L13_2 = L14_2
          end
        end
      else
        L14_2 = type
        L15_2 = L11_2
        L14_2 = L14_2(L15_2)
        if "boolean" == L14_2 then
          if L11_2 then
            L14_2 = "true"
            L13_2 = L14_2 or L13_2
          end
          if not L14_2 then
            L13_2 = "false"
          end
        else
          L14_2 = tostring
          L15_2 = L11_2
          L14_2 = L14_2(L15_2)
          L13_2 = L14_2
        end
      end
    end
    ::lbl_150::
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L2_2
    L16_2 = string
    L16_2 = L16_2.format
    L17_2 = "%s    %s%s,"
    L18_2 = L3_2
    L19_2 = L12_2
    L20_2 = L13_2
    L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L2_2
  L8_2 = L3_2
  L9_2 = "}"
  L8_2 = L8_2 .. L9_2
  L6_2(L7_2, L8_2)
  L6_2 = table
  L6_2 = L6_2.concat
  L7_2 = L2_2
  L8_2 = "\n"
  return L6_2(L7_2, L8_2)
end
tableToLuaCode = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = "CreateThread(function()"
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "    Maps[%q] = %s"
  L7_2 = A0_2
  L8_2 = tableToLuaCode
  L9_2 = A1_2
  L10_2 = 4
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_2
  L5_2 = "end)"
  L3_2(L4_2, L5_2)
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L2_2
  L5_2 = "\n"
  return L3_2(L4_2, L5_2)
end
generateLuaCodeForMap = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetCurrentResourceName
  L3_2 = L3_2()
  L4_2 = generateLuaCodeForMap
  L5_2 = A2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = SaveResourceFile
  L6_2 = L3_2
  L7_2 = "data/maps/%s"
  L8_2 = L7_2
  L7_2 = L7_2.format
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L9_2 = -1
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
saveLuaTableToFile = L0_1
