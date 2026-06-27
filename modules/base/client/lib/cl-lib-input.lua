local L0_1, L1_1
L0_1 = UI
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A2_2 then
    L4_2 = UI
    L5_2 = L4_2
    L4_2 = L4_2.ParseInputData
    L6_2 = A1_2
    function L7_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        L1_3 = A3_2
        L2_3 = A0_3
        L1_3(L2_3)
      end
    end
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.CreateInput = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.Input
  L5_2 = Input
  L5_2 = L5_2.OX
  if L4_2 == L5_2 then
    L4_2 = UI
    L5_2 = L4_2
    L4_2 = L4_2.CreateOXInput
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L3_2 = L4_2
  else
    L4_2 = Config
    L4_2 = L4_2.Input
    L5_2 = Input
    L5_2 = L5_2.QB
    if L4_2 == L5_2 then
      L4_2 = UI
      L5_2 = L4_2
      L4_2 = L4_2.CreateQBInput
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L4_2
    else
      L4_2 = Config
      L4_2 = L4_2.Input
      L5_2 = Input
      L5_2 = L5_2.RCORE
      if L4_2 == L5_2 then
        L4_2 = UI
        L5_2 = L4_2
        L4_2 = L4_2.CreateRCOREInput
        L6_2 = A1_2
        L4_2 = L4_2(L5_2, L6_2)
        L3_2 = L4_2
      end
    end
  end
  L4_2 = A2_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1.ParseInputData = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2.inputs
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = {}
    L10_2 = L8_2.type
    if not L10_2 then
      L10_2 = "input"
    end
    L9_2.type = L10_2
    L10_2 = L8_2.text
    if not L10_2 then
      L10_2 = ""
    end
    L9_2.label = L10_2
    L10_2 = L8_2.description
    if not L10_2 then
      L10_2 = ""
    end
    L9_2.description = L10_2
    L10_2 = L8_2.isRequired
    if not L10_2 then
      L10_2 = false
    end
    L9_2.required = L10_2
    L10_2 = L8_2.icon
    if L10_2 then
      L10_2 = L8_2.icon
      L9_2.icon = L10_2
    end
    L2_2 = L9_2
  end
  L3_2 = A1_2.header
  if not L3_2 then
    L3_2 = "Dialog title"
  end
  L4_2 = L2_2.label
  if not L4_2 then
    L4_2 = "Dialog description"
  end
  L5_2 = promise
  L5_2 = L5_2.new
  L5_2 = L5_2()
  L6_2 = Input
  L6_2 = L6_2.Show
  L7_2 = L3_2
  L8_2 = L4_2
  function L9_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = A0_3.state
    L2_3 = A0_3.amount
    if L1_3 then
      L3_3 = Input
      L3_3 = L3_3.Hide
      L3_3()
      L3_3 = L5_2
      L4_3 = L3_3
      L3_3 = L3_3.resolve
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    else
      L3_3 = Input
      L3_3 = L3_3.Hide
      L3_3()
      L3_3 = L5_2
      L4_3 = L3_3
      L3_3 = L3_3.resolve
      L5_3 = nil
      L3_3(L4_3, L5_3)
    end
  end
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = Citizen
  L6_2 = L6_2.Await
  L7_2 = L5_2
  return L6_2(L7_2)
end
L0_1.CreateRCOREInput = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    return
  end
  L2_2 = exports
  L3_2 = Inputs
  L3_2 = L3_2.QB
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.ShowInput
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.CreateQBInput = L1_1
L0_1 = UI
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if not A1_2 then
    return
  end
  L2_2 = lib
  if not L2_2 then
    return
  end
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2.inputs
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = {}
    L10_2 = L8_2.type
    if not L10_2 then
      L10_2 = "input"
    end
    L9_2.type = L10_2
    L10_2 = L8_2.text
    if not L10_2 then
      L10_2 = ""
    end
    L9_2.label = L10_2
    L10_2 = L8_2.description
    if not L10_2 then
      L10_2 = ""
    end
    L9_2.description = L10_2
    L10_2 = L8_2.isRequired
    if not L10_2 then
      L10_2 = false
    end
    L9_2.required = L10_2
    L10_2 = L8_2.icon
    if L10_2 then
      L10_2 = L8_2.icon
      L9_2.icon = L10_2
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = A1_2.header
  if not L3_2 then
    L3_2 = "Dialog title"
  end
  L4_2 = lib
  L4_2 = L4_2.inputDialog
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  return L4_2
end
L0_1.CreateOXInput = L1_1
