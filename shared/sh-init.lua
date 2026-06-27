local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
SH = L0_1
L0_1 = {}
Intervals = L0_1
L0_1 = {}
Maps = L0_1
L0_1 = require
L1_1 = "glm"
L0_1 = L0_1(L1_1)
glm = L0_1
L0_1 = isResourceLoaded
L1_1 = "ox_lib"
L0_1 = L0_1(L1_1)
if L0_1 then
  L0_1 = "%s.lua"
  L1_1 = L0_1
  L0_1 = L0_1.format
  L2_1 = "init"
  L0_1 = L0_1(L1_1, L2_1)
  L1_1 = LoadResourceFile
  L2_1 = "ox_lib"
  L3_1 = L0_1
  L1_1 = L1_1(L2_1, L3_1)
  L2_1 = assert
  L3_1 = load
  L4_1 = L1_1
  L5_1 = "@@ox_lib/%s"
  L6_1 = L5_1
  L5_1 = L5_1.format
  L7_1 = L0_1
  L5_1, L6_1, L7_1, L8_1 = L5_1(L6_1, L7_1)
  L3_1, L4_1, L5_1, L6_1, L7_1, L8_1 = L3_1(L4_1, L5_1, L6_1, L7_1, L8_1)
  L2_1 = L2_1(L3_1, L4_1, L5_1, L6_1, L7_1, L8_1)
  L3_1 = L2_1
  L3_1()
end
L0_1 = isResourceLoaded
L1_1 = "ND_Core"
L0_1 = L0_1(L1_1)
if L0_1 then
  L0_1 = "%s.lua"
  L1_1 = L0_1
  L0_1 = L0_1.format
  L2_1 = "init"
  L0_1 = L0_1(L1_1, L2_1)
  L1_1 = LoadResourceFile
  L2_1 = "ND_Core"
  L3_1 = L0_1
  L1_1 = L1_1(L2_1, L3_1)
  L2_1 = assert
  L3_1 = load
  L4_1 = L1_1
  L5_1 = "@@ND_Core/%s"
  L6_1 = L5_1
  L5_1 = L5_1.format
  L7_1 = L0_1
  L5_1, L6_1, L7_1, L8_1 = L5_1(L6_1, L7_1)
  L3_1, L4_1, L5_1, L6_1, L7_1, L8_1 = L3_1(L4_1, L5_1, L6_1, L7_1, L8_1)
  L2_1 = L2_1(L3_1, L4_1, L5_1, L6_1, L7_1, L8_1)
  L3_1 = L2_1
  L3_1()
end
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = xpcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
  end
  L4_2 = debug
  L4_2 = L4_2.traceback
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  return L2_2
end
doesExportExistInResource = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 0
  L3_2 = 250
  while true do
    L4_2 = A0_2
    L4_2 = L4_2()
    if L4_2 then
      break
    end
    L4_2 = Wait
    L5_2 = L3_2
    L4_2(L5_2)
    L2_2 = L2_2 + L3_2
    if A1_2 <= L2_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = true
  return L4_2
end
WaitFor = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    L2_3 = A0_3
    L1_3 = A0_3.match
    L3_3 = "^_U%b()$"
    L1_3 = L1_3(L2_3, L3_3)
    if not L1_3 then
      L2_3 = A0_3
      L1_3 = A0_3.match
      L3_3 = "^vec3%b()$"
      L1_3 = L1_3(L2_3, L3_3)
      if not L1_3 then
        L2_3 = A0_3
        L1_3 = A0_3.match
        L3_3 = "^vector3%b()$"
        L1_3 = L1_3(L2_3, L3_3)
        if not L1_3 then
          L2_3 = A0_3
          L1_3 = A0_3.match
          L3_3 = "^ZONE_TYPE%..+$"
          L1_3 = L1_3(L2_3, L3_3)
          if not L1_3 then
            L2_3 = A0_3
            L1_3 = A0_3.match
            L3_3 = "^MAP_TYPES%..+$"
            L1_3 = L1_3(L2_3, L3_3)
            if not L1_3 then
              L2_3 = A0_3
              L1_3 = A0_3.match
              L3_3 = "^MAPS%..+$"
              L1_3 = "string" == L1_3 and L1_3
            end
          end
        end
      end
    end
    return L1_3
  end
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L2_3 = type
    L3_3 = A0_3
    L2_3 = L2_3(L3_3)
    if not A1_3 then
      A1_3 = 1
    end
    L3_3 = string
    L3_3 = L3_3.rep
    L4_3 = "    "
    L5_3 = A1_3
    L3_3 = L3_3(L4_3, L5_3)
    if "string" == L2_3 then
      L4_3 = L2_2
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      if L4_3 then
        return A0_3
      else
        L4_3 = string
        L4_3 = L4_3.format
        L5_3 = "%q"
        L6_3 = A0_3
        return L4_3(L5_3, L6_3)
      end
    elseif "number" == L2_3 or "boolean" == L2_3 then
      L4_3 = tostring
      L5_3 = A0_3
      return L4_3(L5_3)
    elseif "table" == L2_3 then
      L4_3 = A0_3.x
      if L4_3 then
        L4_3 = A0_3.y
        if L4_3 then
          L4_3 = A0_3.z
          if L4_3 then
            L4_3 = string
            L4_3 = L4_3.format
            L5_3 = "vec3(%.6f, %.6f, %.6f)"
            L6_3 = A0_3.x
            L7_3 = A0_3.y
            L8_3 = A0_3.z
            return L4_3(L5_3, L6_3, L7_3, L8_3)
          end
        end
      end
      L4_3 = "{\n"
      L5_3 = pairs
      L6_3 = A0_3
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
      for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
        L11_3 = type
        L12_3 = L9_3
        L11_3 = L11_3(L12_3)
        if "string" == L11_3 then
          L11_3 = string
          L11_3 = L11_3.format
          L12_3 = "%s%s = "
          L13_3 = L3_3
          L14_3 = L9_3
          L11_3 = L11_3(L12_3, L13_3, L14_3)
          if L11_3 then
            goto lbl_82
          end
        end
        L11_3 = string
        L11_3 = L11_3.format
        L12_3 = "%s[%s] = "
        L13_3 = L3_3
        L14_3 = tostring
        L15_3 = L9_3
        L14_3, L15_3, L16_3 = L14_3(L15_3)
        L11_3 = L11_3(L12_3, L13_3, L14_3, L15_3, L16_3)
        ::lbl_82::
        L12_3 = L4_3
        L13_3 = L11_3
        L14_3 = L3_2
        L15_3 = L10_3
        L16_3 = A1_3 + 1
        L14_3 = L14_3(L15_3, L16_3)
        L15_3 = ",\n"
        L12_3 = L12_3 .. L13_3 .. L14_3 .. L15_3
        L4_3 = L12_3
      end
      L5_3 = L4_3
      L6_3 = string
      L6_3 = L6_3.rep
      L7_3 = "    "
      L8_3 = A1_3 - 1
      L6_3 = L6_3(L7_3, L8_3)
      L7_3 = "}"
      L5_3 = L5_3 .. L6_3 .. L7_3
      L4_3 = L5_3
      return L4_3
    else
      L4_3 = string
      L4_3 = L4_3.format
      L5_3 = "%q"
      L6_3 = tostring
      L7_3 = A0_3 or L7_3
      if not A0_3 then
        L7_3 = "nil"
      end
      L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L6_3(L7_3)
      return L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    end
  end
  L4_2 = "CreateThread(function()\n"
  L5_2 = L4_2
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "    Maps[%q] = %s\n"
  L8_2 = tostring
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = L3_2
  L10_2 = A1_2
  L11_2 = 2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = L5_2 .. L6_2
  L4_2 = L5_2
  L5_2 = L4_2
  L6_2 = "end)"
  L5_2 = L5_2 .. L6_2
  L4_2 = L5_2
  return L4_2
end
dumpTableLuaCode = L0_1
function L0_1(A0_2, A1_2)
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
dumpTable = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not A1_2 then
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    A1_2 = L3_2
  end
  L3_2 = GetCurrentResourceName
  L3_2 = L3_2()
  if A1_2 ~= L3_2 then
    L3_2 = dbg
    L3_2 = L3_2.debugAPI
    L4_2 = "Providing export emulation for export named: %s | resource: %s"
    L5_2 = A0_2
    L6_2 = A1_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = AddEventHandler
  L4_2 = "__cfx_export_%s_%s"
  L5_2 = L4_2
  L4_2 = L4_2.format
  L6_2 = A1_2
  L7_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = dbg
    L1_3 = L1_3.debugAPI
    L2_3 = "Emulator was called from %s | emulate-resource: %s"
    L3_3 = GetInvokingResource
    L3_3 = L3_3()
    L4_3 = A1_2
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_3
    L2_3 = A2_2
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2)
end
provideExport = L0_1
function L0_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pcall
  L3_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = ...
  L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if not L2_2 then
    L4_2 = dbg
    L4_2 = L4_2.critical
    L5_2 = "Safe call for function named (%s) result: %s"
    L6_2 = A1_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
safeCallFunction = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = "leo"
  L2_2(L3_2, L4_2)
  if A0_2 then
    L2_2 = next
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = pairs
      L3_2 = A0_2
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
extractJobNames = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetNumResources
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetResourceByFindIndex
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 == A0_2 then
      L7_2 = GetResourceState
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = "started" == L7_2 or "starting" == L7_2
      return L8_2
    end
  end
  L2_2 = false
  return L2_2
end
isResourcePresentProvideless = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetNumResources
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetResourceByFindIndex
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = string
    L7_2 = L7_2.match
    L8_2 = L6_2
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = isResourcePresentProvideless
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        return L6_2
      end
    end
  end
end
FindTargetResource = L0_1
L0_1 = extractJobNames
L1_1 = Config
L1_1 = L1_1.JobGroups
if not L1_1 then
  L1_1 = {}
end
L0_1 = L0_1(L1_1)
PoliceJobs = L0_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
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
          L1_2 = Config
          L1_2 = L1_2.Cuffing
          L1_2.DisableInventoryWhileCuffed = false
        end
      end
    end
  end
end
L0_1(L1_1)
L0_1 = Config
L0_1 = L0_1.DebugError
if not L0_1 then
  L0_1 = false
end
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L1_1
    L2_2 = {}
    L2_2.stepCount = 0
    L3_2 = {}
    L2_2.stepData = L3_2
    L1_2[A0_2] = L2_2
  end
end
StartDebugSession = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = DisplayCurrentRecordSteps
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L1_1
    L1_2[A0_2] = nil
  end
end
DestroyDebugSession = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L3_2 = L2_2.stepCount
      L3_2 = L3_2 + 1
      L2_2.stepCount = L3_2
      L3_2 = L2_2.stepData
      L4_2 = L2_2.stepCount
      L3_2[L4_2] = A1_2
    end
  end
end
DebugRecordStep = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L2_2 = ipairs
      L3_2 = L1_2.stepData
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = print
        L9_2 = "^0Step name: ^1"
        L10_2 = tostring
        L11_2 = L7_2
        L10_2 = L10_2(L11_2)
        L9_2 = L9_2 .. L10_2
        L8_2(L9_2)
      end
      L2_2 = print
      L3_2 = "^5=====^0"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^0Last step before the error: ^1"
      L4_2 = tostring
      L5_2 = L1_2.stepData
      L6_2 = L1_2.stepData
      L6_2 = #L6_2
      L5_2 = L5_2[L6_2]
      L4_2 = L4_2(L5_2)
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    end
  end
end
DisplayCurrentRecordSteps = L2_1
if L0_1 then
  L2_1 = AddEventHandler
  L3_1 = RegisterNetEvent
  L4_1 = CreateThread
  L5_1 = RegisterCommand
  L6_1 = RegisterNUICallback
  function L7_1(A0_2, A1_2)
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
            goto lbl_176
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
        L16_2 = "["
        L17_2 = tostring
        L18_2 = L13_2
        L17_2 = L17_2(L18_2)
        L18_2 = "]"
        L16_2 = L16_2 .. L17_2 .. L18_2
        L15_2 = L16_2
        goto lbl_89
        ::lbl_82::
        L16_2 = "['"
        L17_2 = tostring
        L18_2 = L13_2
        L17_2 = L17_2(L18_2)
        L18_2 = "']"
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
        goto lbl_157
        ::lbl_113::
        L16_2 = type
        L17_2 = L14_2
        L16_2 = L16_2(L17_2)
        if "table" == L16_2 then
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
        ::lbl_157::
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
          goto lbl_189
          ::lbl_176::
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
        ::lbl_189::
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
        L12_2 = "}"
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
          goto lbl_225
          L5_2 = L9_2 or L5_2
        end
      end
      L5_2 = L5_2 - 1
      goto lbl_225
      do break end
      ::lbl_225::
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
      L7_2 = print
      L8_2 = L6_2
      L7_2(L8_2)
    end
    return L6_2
  end
  function L8_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L5_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
      L3_3 = xpcall
      function L4_3()
        local L0_4, L1_4, L2_4, L3_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L0_4(L1_4, L2_4, L3_4)
      end
      L5_3 = debug
      L5_3 = L5_3.traceback
      L3_3, L4_3 = L3_3(L4_3, L5_3)
      if not L3_3 then
        L5_3 = {}
        L5_3[1] = A0_3
        L5_3[2] = A1_3
        L5_3[3] = A2_3
        L6_3 = print
        L7_3 = "^5=========================^0"
        L6_3(L7_3)
        L6_3 = print
        L7_3 = "^2Error in: ^1RegisterCommand^0"
        L6_3(L7_3)
        L6_3 = print
        L7_3 = "^2Event name: ^1"
        L8_3 = A0_2
        L9_3 = "^0"
        L7_3 = L7_3 .. L8_3 .. L9_3
        L6_3(L7_3)
        L6_3 = print
        L7_3 = "^5=========================^0"
        L6_3(L7_3)
        L6_3 = DisplayCurrentRecordSteps
        L7_3 = A0_2
        L6_3(L7_3)
        L6_3 = print
        L7_3 = "^5=========================^0"
        L6_3(L7_3)
        L6_3 = pairs
        L7_3 = L5_3
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        for L10_3, L11_3 in L6_3, L7_3, L8_3, L9_3 do
          L12_3 = print
          L13_3 = "^0Argument key: ^1"
          L14_3 = L10_3
          L13_3 = L13_3 .. L14_3
          L12_3(L13_3)
          L12_3 = print
          L13_3 = "^0Argument value type: ^1"
          L14_3 = type
          L15_3 = L11_3
          L14_3 = L14_3(L15_3)
          L13_3 = L13_3 .. L14_3
          L12_3(L13_3)
          L12_3 = print
          L13_3 = " "
          L12_3(L13_3)
          L12_3 = type
          L13_3 = L11_3
          L12_3 = L12_3(L13_3)
          if "table" == L12_3 then
            L12_3 = print
            L13_3 = "^0Argument value: ^1"
            L14_3 = tostring
            L15_3 = L11_3
            L14_3 = L14_3(L15_3)
            L13_3 = L13_3 .. L14_3
            L12_3(L13_3)
            L12_3 = L7_1
            L13_3 = L11_3
            L12_3(L13_3)
          else
            L12_3 = print
            L13_3 = "^0Argument value: ^1"
            L14_3 = tostring
            L15_3 = L11_3
            L14_3 = L14_3(L15_3)
            L13_3 = L13_3 .. L14_3
            L12_3(L13_3)
          end
          L12_3 = print
          L13_3 = "^5=====^0"
          L12_3(L13_3)
        end
        L6_3 = print
        L7_3 = "^5=========================^0"
        L6_3(L7_3)
        L6_3 = print
        L7_3 = L4_3
        L6_3(L7_3)
        L6_3 = print
        L7_3 = "^5=========================^0"
        L6_3(L7_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  RegisterCommand = L8_1
  function L8_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    if not A1_2 then
      L2_2 = L3_1
      L3_2 = A0_2
      L2_2(L3_2)
      return
    end
    L2_2 = L3_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3, A9_3, A10_3, A11_3)
      local L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      L12_3 = xpcall
      function L13_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L4_4 = A3_3
        L5_4 = A4_3
        L6_4 = A5_3
        L7_4 = A6_3
        L8_4 = A7_3
        L9_4 = A8_3
        L10_4 = A9_3
        L11_4 = A10_3
        L12_4 = A11_3
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
      end
      L14_3 = debug
      L14_3 = L14_3.traceback
      L12_3, L13_3 = L12_3(L13_3, L14_3)
      if not L12_3 then
        L14_3 = {}
        L14_3[1] = A0_3
        L14_3[2] = A1_3
        L14_3[3] = A2_3
        L14_3[4] = A3_3
        L14_3[5] = A4_3
        L14_3[6] = A5_3
        L14_3[7] = A6_3
        L14_3[8] = A7_3
        L14_3[9] = A8_3
        L14_3[10] = A9_3
        L14_3[11] = A10_3
        L14_3[12] = A11_3
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^2Error in: ^1RegisterNetEvent^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^2Event name: ^1"
        L17_3 = A0_2
        L18_3 = "^0"
        L16_3 = L16_3 .. L17_3 .. L18_3
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = DisplayCurrentRecordSteps
        L16_3 = A0_2
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = pairs
        L16_3 = L14_3
        L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3)
        for L19_3, L20_3 in L15_3, L16_3, L17_3, L18_3 do
          L21_3 = print
          L22_3 = "^0Argument key: ^1"
          L23_3 = L19_3
          L22_3 = L22_3 .. L23_3
          L21_3(L22_3)
          L21_3 = print
          L22_3 = "^0Argument value type: ^1"
          L23_3 = type
          L24_3 = L20_3
          L23_3 = L23_3(L24_3)
          L22_3 = L22_3 .. L23_3
          L21_3(L22_3)
          L21_3 = print
          L22_3 = " "
          L21_3(L22_3)
          L21_3 = type
          L22_3 = L20_3
          L21_3 = L21_3(L22_3)
          if "table" == L21_3 then
            L21_3 = print
            L22_3 = "^0Argument value: ^1"
            L23_3 = tostring
            L24_3 = L20_3
            L23_3 = L23_3(L24_3)
            L22_3 = L22_3 .. L23_3
            L21_3(L22_3)
            L21_3 = L7_1
            L22_3 = L20_3
            L21_3(L22_3)
          else
            L21_3 = print
            L22_3 = "^0Argument value: ^1"
            L23_3 = tostring
            L24_3 = L20_3
            L23_3 = L23_3(L24_3)
            L22_3 = L22_3 .. L23_3
            L21_3(L22_3)
          end
          L21_3 = print
          L22_3 = "^5=====^0"
          L21_3(L22_3)
        end
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = L13_3
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = ""
        L16_3 = 1
        L17_3 = 12
        L18_3 = 1
        for L19_3 = L16_3, L17_3, L18_3 do
          L20_3 = L14_3[L19_3]
          L21_3 = type
          L22_3 = L20_3
          L21_3 = L21_3(L22_3)
          if "table" == L21_3 then
            L21_3 = L15_3
            L22_3 = L7_1
            L23_3 = L20_3
            L24_3 = true
            L22_3 = L22_3(L23_3, L24_3)
            L23_3 = ","
            L21_3 = L21_3 .. L22_3 .. L23_3
            L15_3 = L21_3
          else
            L21_3 = type
            L22_3 = L20_3
            L21_3 = L21_3(L22_3)
            if "string" == L21_3 then
              L21_3 = L15_3
              L22_3 = "'"
              L23_3 = L20_3
              L24_3 = "',"
              L21_3 = L21_3 .. L22_3 .. L23_3 .. L24_3
              L15_3 = L21_3
            else
              L21_3 = L15_3
              L22_3 = tostring
              L23_3 = L20_3
              L22_3 = L22_3(L23_3)
              L23_3 = ","
              L21_3 = L21_3 .. L22_3 .. L23_3
              L15_3 = L21_3
            end
          end
        end
        L16_3 = print
        L17_3 = "^0Replication trigger event:"
        L16_3(L17_3)
        L16_3 = print
        L17_3 = "^1TriggerEvent('"
        L18_3 = A0_2
        L19_3 = "', "
        L21_3 = L15_3
        L20_3 = L15_3.gsub
        L22_3 = "\n"
        L23_3 = ""
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = L20_3
        L20_3 = L20_3.sub
        L22_3 = 1
        L23_3 = -2
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = ")"
        L17_3 = L17_3 .. L18_3 .. L19_3 .. L20_3 .. L21_3
        L16_3(L17_3)
        L16_3 = print
        L17_3 = "^5=========================^0"
        L16_3(L17_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  RegisterNetEvent = L8_1
  function L8_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L6_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3, A9_3, A10_3, A11_3)
      local L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      L12_3 = xpcall
      function L13_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L4_4 = A3_3
        L5_4 = A4_3
        L6_4 = A5_3
        L7_4 = A6_3
        L8_4 = A7_3
        L9_4 = A8_3
        L10_4 = A9_3
        L11_4 = A10_3
        L12_4 = A11_3
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
      end
      L14_3 = debug
      L14_3 = L14_3.traceback
      L12_3, L13_3 = L12_3(L13_3, L14_3)
      if not L12_3 then
        L14_3 = {}
        L14_3[1] = A0_3
        L14_3[2] = A1_3
        L14_3[3] = A2_3
        L14_3[4] = A3_3
        L14_3[5] = A4_3
        L14_3[6] = A5_3
        L14_3[7] = A6_3
        L14_3[8] = A7_3
        L14_3[9] = A8_3
        L14_3[10] = A9_3
        L14_3[11] = A10_3
        L14_3[12] = A11_3
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^2Error in: ^1RegisterNUICallback^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^2Event name: ^1"
        L17_3 = A0_2
        L18_3 = "^0"
        L16_3 = L16_3 .. L17_3 .. L18_3
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = DisplayCurrentRecordSteps
        L16_3 = A0_2
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = pairs
        L16_3 = L14_3
        L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3)
        for L19_3, L20_3 in L15_3, L16_3, L17_3, L18_3 do
          L21_3 = print
          L22_3 = "^0Argument key: ^1"
          L23_3 = L19_3
          L22_3 = L22_3 .. L23_3
          L21_3(L22_3)
          L21_3 = print
          L22_3 = "^0Argument value type: ^1"
          L23_3 = type
          L24_3 = L20_3
          L23_3 = L23_3(L24_3)
          L22_3 = L22_3 .. L23_3
          L21_3(L22_3)
          L21_3 = print
          L22_3 = " "
          L21_3(L22_3)
          L21_3 = type
          L22_3 = L20_3
          L21_3 = L21_3(L22_3)
          if "table" == L21_3 then
            L21_3 = print
            L22_3 = "^0Argument value: ^1"
            L23_3 = tostring
            L24_3 = L20_3
            L23_3 = L23_3(L24_3)
            L22_3 = L22_3 .. L23_3
            L21_3(L22_3)
            L21_3 = L7_1
            L22_3 = L20_3
            L21_3(L22_3)
          else
            L21_3 = print
            L22_3 = "^0Argument value: ^1"
            L23_3 = tostring
            L24_3 = L20_3
            L23_3 = L23_3(L24_3)
            L22_3 = L22_3 .. L23_3
            L21_3(L22_3)
          end
          L21_3 = print
          L22_3 = "^5=====^0"
          L21_3(L22_3)
        end
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = L13_3
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = ""
        L16_3 = 1
        L17_3 = 12
        L18_3 = 1
        for L19_3 = L16_3, L17_3, L18_3 do
          L20_3 = L14_3[L19_3]
          L21_3 = type
          L22_3 = L20_3
          L21_3 = L21_3(L22_3)
          if "table" == L21_3 then
            L21_3 = L15_3
            L22_3 = L7_1
            L23_3 = L20_3
            L24_3 = true
            L22_3 = L22_3(L23_3, L24_3)
            L23_3 = ","
            L21_3 = L21_3 .. L22_3 .. L23_3
            L15_3 = L21_3
          else
            L21_3 = type
            L22_3 = L20_3
            L21_3 = L21_3(L22_3)
            if "string" == L21_3 then
              L21_3 = L15_3
              L22_3 = "'"
              L23_3 = L20_3
              L24_3 = "',"
              L21_3 = L21_3 .. L22_3 .. L23_3 .. L24_3
              L15_3 = L21_3
            else
              L21_3 = L15_3
              L22_3 = tostring
              L23_3 = L20_3
              L22_3 = L22_3(L23_3)
              L23_3 = ","
              L21_3 = L21_3 .. L22_3 .. L23_3
              L15_3 = L21_3
            end
          end
        end
        L16_3 = print
        L17_3 = "^0Replication trigger event:"
        L16_3(L17_3)
        L16_3 = print
        L17_3 = "^1TriggerEvent('__cfx_nui:"
        L18_3 = A0_2
        L19_3 = "', "
        L21_3 = L15_3
        L20_3 = L15_3.gsub
        L22_3 = "\n"
        L23_3 = ""
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = L20_3
        L20_3 = L20_3.sub
        L22_3 = 1
        L23_3 = -2
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = ")"
        L17_3 = L17_3 .. L18_3 .. L19_3 .. L20_3 .. L21_3
        L16_3(L17_3)
        L16_3 = print
        L17_3 = "^5=========================^0"
        L16_3(L17_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  RegisterNUICallback = L8_1
  function L8_1(A0_2, A1_2)
    local L2_2, L3_2
    L2_2 = L4_1
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
      L0_3 = xpcall
      L1_3 = A0_2
      L2_3 = debug
      L2_3 = L2_3.traceback
      L0_3, L1_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L2_3 = print
        L3_3 = "========================="
        L2_3(L3_3)
        L2_3 = print
        L3_3 = "^2Error in: ^1CreateThread^0"
        L2_3(L3_3)
        L2_3 = print
        L3_3 = "^1"
        L4_3 = A1_2
        if not L4_3 then
          L4_3 = "non defined"
        end
        L5_3 = "^0"
        L3_3 = L3_3 .. L4_3 .. L5_3
        L2_3(L3_3)
        L2_3 = print
        L3_3 = "========================="
        L2_3(L3_3)
        L2_3 = DisplayCurrentRecordSteps
        L3_3 = A1_2
        L2_3(L3_3)
        L2_3 = print
        L3_3 = "^5=========================^0"
        L2_3(L3_3)
        L2_3 = print
        L3_3 = L1_3
        L2_3(L3_3)
        L2_3 = print
        L3_3 = "========================="
        L2_3(L3_3)
      end
    end
    L2_2(L3_2)
  end
  CreateThread = L8_1
  function L8_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2
    L2_2 = L2_1
    L3_2 = A0_2
    function L4_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3, A7_3, A8_3, A9_3, A10_3, A11_3)
      local L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3
      L12_3 = xpcall
      function L13_3()
        local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4
        L0_4 = A1_2
        L1_4 = A0_3
        L2_4 = A1_3
        L3_4 = A2_3
        L4_4 = A3_3
        L5_4 = A4_3
        L6_4 = A5_3
        L7_4 = A6_3
        L8_4 = A7_3
        L9_4 = A8_3
        L10_4 = A9_3
        L11_4 = A10_3
        L12_4 = A11_3
        L0_4(L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4)
      end
      L14_3 = debug
      L14_3 = L14_3.traceback
      L12_3, L13_3 = L12_3(L13_3, L14_3)
      if not L12_3 then
        L14_3 = {}
        L14_3[1] = A0_3
        L14_3[2] = A1_3
        L14_3[3] = A2_3
        L14_3[4] = A3_3
        L14_3[5] = A4_3
        L14_3[6] = A5_3
        L14_3[7] = A6_3
        L14_3[8] = A7_3
        L14_3[9] = A8_3
        L14_3[10] = A9_3
        L14_3[11] = A10_3
        L14_3[12] = A11_3
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^2Error in: ^1AddEventHandler^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^2Event name: ^1"
        L17_3 = A0_2
        L18_3 = "^0"
        L16_3 = L16_3 .. L17_3 .. L18_3
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = DisplayCurrentRecordSteps
        L16_3 = A0_2
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = pairs
        L16_3 = L14_3
        L15_3, L16_3, L17_3, L18_3 = L15_3(L16_3)
        for L19_3, L20_3 in L15_3, L16_3, L17_3, L18_3 do
          L21_3 = print
          L22_3 = "^0Argument key: ^1"
          L23_3 = L19_3
          L22_3 = L22_3 .. L23_3
          L21_3(L22_3)
          L21_3 = print
          L22_3 = "^0Argument value type: ^1"
          L23_3 = type
          L24_3 = L20_3
          L23_3 = L23_3(L24_3)
          L22_3 = L22_3 .. L23_3
          L21_3(L22_3)
          L21_3 = print
          L22_3 = " "
          L21_3(L22_3)
          L21_3 = type
          L22_3 = L20_3
          L21_3 = L21_3(L22_3)
          if "table" == L21_3 then
            L21_3 = print
            L22_3 = "^0Argument value: ^1"
            L23_3 = tostring
            L24_3 = L20_3
            L23_3 = L23_3(L24_3)
            L22_3 = L22_3 .. L23_3
            L21_3(L22_3)
            L21_3 = L7_1
            L22_3 = L20_3
            L21_3(L22_3)
          else
            L21_3 = print
            L22_3 = "^0Argument value: ^1"
            L23_3 = tostring
            L24_3 = L20_3
            L23_3 = L23_3(L24_3)
            L22_3 = L22_3 .. L23_3
            L21_3(L22_3)
          end
          L21_3 = print
          L22_3 = "^5=====^0"
          L21_3(L22_3)
        end
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = print
        L16_3 = L13_3
        L15_3(L16_3)
        L15_3 = print
        L16_3 = "^5=========================^0"
        L15_3(L16_3)
        L15_3 = ""
        L16_3 = 1
        L17_3 = 12
        L18_3 = 1
        for L19_3 = L16_3, L17_3, L18_3 do
          L20_3 = L14_3[L19_3]
          L21_3 = type
          L22_3 = L20_3
          L21_3 = L21_3(L22_3)
          if "table" == L21_3 then
            L21_3 = L15_3
            L22_3 = L7_1
            L23_3 = L20_3
            L24_3 = true
            L22_3 = L22_3(L23_3, L24_3)
            L23_3 = ","
            L21_3 = L21_3 .. L22_3 .. L23_3
            L15_3 = L21_3
          else
            L21_3 = type
            L22_3 = L20_3
            L21_3 = L21_3(L22_3)
            if "string" == L21_3 then
              L21_3 = L15_3
              L22_3 = "'"
              L23_3 = L20_3
              L24_3 = "',"
              L21_3 = L21_3 .. L22_3 .. L23_3 .. L24_3
              L15_3 = L21_3
            else
              L21_3 = L15_3
              L22_3 = tostring
              L23_3 = L20_3
              L22_3 = L22_3(L23_3)
              L23_3 = ","
              L21_3 = L21_3 .. L22_3 .. L23_3
              L15_3 = L21_3
            end
          end
        end
        L16_3 = print
        L17_3 = "^0Replication trigger event:"
        L16_3(L17_3)
        L16_3 = print
        L17_3 = "^1TriggerEvent('"
        L18_3 = A0_2
        L19_3 = "', "
        L21_3 = L15_3
        L20_3 = L15_3.gsub
        L22_3 = "\n"
        L23_3 = ""
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = L20_3
        L20_3 = L20_3.sub
        L22_3 = 1
        L23_3 = -2
        L20_3 = L20_3(L21_3, L22_3, L23_3)
        L21_3 = ")"
        L17_3 = L17_3 .. L18_3 .. L19_3 .. L20_3 .. L21_3
        L16_3(L17_3)
        L16_3 = print
        L17_3 = "^5=========================^0"
        L16_3(L17_3)
      end
    end
    L2_2(L3_2, L4_2)
  end
  AddEventHandler = L8_1
end
