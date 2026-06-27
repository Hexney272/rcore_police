local L0_1, L1_1, L2_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L0_2 = true
  L1_2 = "resource.prison"
  L2_2 = IsAceAllowed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = Config
    L2_2 = L2_2.Framework
    L3_2 = Framework
    L3_2 = L3_2.NONE
    if L2_2 ~= L3_2 then
      goto lbl_77
    end
    L2_2 = pairs
    L3_2 = PermissionMap
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if not L0_2 then
        break
      end
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = Ace
        L14_2 = L14_2.Allow
        L15_2 = L6_2
        L16_2 = L13_2
        L14_2(L15_2, L16_2)
        L14_2 = Ace
        L14_2 = L14_2.CanGroup
        L15_2 = L6_2
        L16_2 = L13_2
        L14_2 = L14_2(L15_2, L16_2)
        L0_2 = L14_2
        if not L0_2 then
          L14_2 = print
          L15_2 = string
          L15_2 = L15_2.format
          L16_2 = "^1You are running standalone server without framework, please add ace_permissions!"
          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L14_2 = 1
          L15_2 = 5
          L16_2 = 1
          for L17_2 = L14_2, L15_2, L16_2 do
            L18_2 = print
            L19_2 = string
            L19_2 = L19_2.format
            L20_2 = "^1Ace Permissions failed! You probably forgot to add add_ace to server.cfg"
            L19_2, L20_2 = L19_2(L20_2)
            L18_2(L19_2, L20_2)
          end
          L14_2 = print
          L15_2 = string
          L15_2 = L15_2.format
          L16_2 = "^1https://documentation.rcore.cz/paid-resources/rcore_police/installation"
          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
          L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          break
        end
      end
    end
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    L3_2 = Framework
    L3_2 = L3_2.NONE
    if L2_2 == L3_2 then
      L2_2 = print
      L3_2 = "^3============================================================^7\n^3[Ace Permissions - Configuration Required]^7\n------------------------------------------------------------\n- For this resource to handle permissions correctly, \n  you need to register the required ACE permissions \n  inside your ^5server.cfg^7.  \n- Checking your ace permissions its not going to work without it.\n\n^2Please visit the setup guide here:^7\n\240\159\148\151 https://documentation.rcore.cz/paid-resources/rcore_police/installation#define-items-1\n------------------------------------------------------------\n^3============================================================^7\n"
      L2_2(L3_2)
    end
  end
  ::lbl_77::
end
L0_1(L1_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "%s_%s"
  L3_2 = GetCurrentResourceName
  L3_2 = L3_2()
  L4_2 = A0_2
  return L1_2(L2_2, L3_2, L4_2)
end
L1_1 = {}
Ace = L1_1
L1_1 = Ace
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ExecuteCommand
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "add_principal %s %s"
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1.AddPrincipal = L2_1
L1_1 = Ace
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ExecuteCommand
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "remove_principal %s %s"
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L1_1.RemovePrincipal = L2_1
L1_1 = Ace
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ExecuteCommand
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "add_ace %s %s allow"
  L5_2 = A0_2
  L6_2 = L0_1
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1.Allow = L2_1
L1_1 = Ace
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ExecuteCommand
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "add_ace %s %s deny"
  L5_2 = A0_2
  L6_2 = L0_1
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1.Deny = L2_1
L1_1 = Ace
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = IsPlayerAceAllowed
  L3_2 = A0_2
  L4_2 = L0_1
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  return L2_2(L3_2, L4_2, L5_2)
end
L1_1.Can = L2_1
L1_1 = Ace
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = IsPrincipalAceAllowed
  L3_2 = A0_2
  L4_2 = L0_1
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  return L2_2(L3_2, L4_2, L5_2)
end
L1_1.CanGroup = L2_1
