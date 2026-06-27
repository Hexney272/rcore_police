local L0_1, L1_1, L2_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:createInvoice"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  if not A0_2 then
    return
  end
  if not A1_2 then
    return
  end
  L3_2 = safeCallFunction
  L4_2 = CreateInvoice
  L5_2 = "CREATE_INVOICE"
  L6_2 = L2_2
  L7_2 = A0_2
  L8_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
