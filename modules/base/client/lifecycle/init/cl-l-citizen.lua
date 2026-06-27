local L0_1, L1_1, L2_1
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "ShowInvoice"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = safeCallFunction
    L3_2 = HandleInvoice
    L4_2 = MENU_ACTIONS
    L4_2 = L4_2.INVOCE_CITIZEN
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = NetworkService
L0_1 = L0_1.RegisterNetEvent
L1_1 = "RequestInvoice"
function L2_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = safeCallFunction
    L2_2 = CreateInvoice
    L3_2 = "RequestInvoice"
    L4_2 = ...
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
