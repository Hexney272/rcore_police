local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L0_1.Database = true
L0_1.Framework = true
L0_1.Inventory = true
L0_1.Clothing = true
L0_1.Prison = true
L0_1.Invoices = true
L0_1.Dispatch = true
L0_1.Garages = true
L0_1.Fuel = true
L0_1.Licence = true
L0_1.Menu = true
L0_1.Notify = true
L0_1.Society = true
L0_1.TextUI = true
L0_1.Duty = true
L0_1.Keys = true
L0_1.PG = true
L0_1.MDT = true
L1_1 = {}
BridgeLoader = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2
  L2_2 = nil
  L3_2 = isResourcePresentProvideless
  L4_2 = Clothing
  L4_2 = L4_2.FAPPEARANCE
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetResourceMetadata
    L4_2 = Clothing
    L4_2 = L4_2.FAPPEARANCE
    L5_2 = "author"
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 and "wasabirobby" == L3_2 then
      L4_2 = Clothing
      L2_2 = L4_2.WASABI
    end
  end
  if L2_2 ~= A0_2 and L2_2 then
    L1_2 = L2_2
  end
  return L1_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2
  L2_2 = nil
  L3_2 = isResourcePresentProvideless
  L4_2 = Society
  L4_2 = L4_2.QB_BANKING
  L3_2 = L3_2(L4_2)
  if L3_2 and not L2_2 then
    L3_2 = GetResourceMetadata
    L4_2 = Society
    L4_2 = L4_2.QB_BANKING
    L5_2 = "version"
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L4_2 = "2.0.0"
      if L3_2 < L4_2 then
        L4_2 = isResourcePresentProvideless
        L5_2 = Society
        L5_2 = L5_2.QB_MANAGEMENT
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = Society
          L2_2 = L4_2.QB_MANAGEMENT
        end
      end
    end
  end
  L3_2 = isResourcePresentProvideless
  L4_2 = Society
  L4_2 = L4_2.QB_MANAGEMENT
  L3_2 = L3_2(L4_2)
  if L3_2 and not L2_2 then
    L3_2 = GetResourceMetadata
    L4_2 = Society
    L4_2 = L4_2.QB_BANKING
    L5_2 = "version"
    L6_2 = 0
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L4_2 = "2.0.0"
      if L3_2 >= L4_2 then
        L4_2 = isResourcePresentProvideless
        L5_2 = Society
        L5_2 = L5_2.QB_BANKING
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L4_2 = Society
          L2_2 = L4_2.QB_BANKING
        end
      end
    end
  end
  if L2_2 ~= A0_2 and L2_2 then
    L1_2 = L2_2
  end
  return L1_2
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = nil
  L3_2 = isResourcePresentProvideless
  L4_2 = Inventory
  L4_2 = L4_2.CHEEZA
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Inventory
    L2_2 = L3_2.CHEEZA
  end
  L3_2 = isResourcePresentProvideless
  L4_2 = Inventory
  L4_2 = L4_2.MF
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Inventory
    L2_2 = L3_2.MF
  end
  if L2_2 ~= A0_2 and L2_2 then
    L1_2 = L2_2
  end
  return L1_2
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = Bridges
  if not L0_2 then
    L0_2 = L0_1
  end
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Config
    L7_2 = L7_2[L5_2]
    L8_2 = AUTO_DETECT
    if L7_2 == L8_2 then
      L7_2 = _G
      L7_2 = L7_2[L5_2]
      if nil == L7_2 then
        L8_2 = dbg
        L8_2 = L8_2.critical
        L9_2 = "Auto detect for bridge %s failed. Please set it manually in the configuration file. [_G]"
        L10_2 = L5_2
        L8_2(L9_2, L10_2)
      else
        L8_2 = nil
        L9_2 = ORDERED_KEYS
        L9_2 = L9_2[L5_2]
        if L9_2 then
          L10_2 = ipairs
          L11_2 = L9_2
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
          for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
            L16_2 = L7_2[L15_2]
            L17_2 = isResourcePresentProvideless
            L18_2 = L16_2
            L17_2 = L17_2(L18_2)
            if L17_2 then
              L17_2 = NONE_RESOURCE
              if L16_2 ~= L17_2 then
                L8_2 = L15_2
                break
              end
            end
          end
        else
          L10_2 = pairs
          L11_2 = L7_2
          L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
          for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
            L16_2 = isResourcePresentProvideless
            L17_2 = L15_2
            L16_2 = L16_2(L17_2)
            if L16_2 then
              L16_2 = NONE_RESOURCE
              if L15_2 ~= L16_2 then
                L8_2 = L14_2
                break
              end
            end
          end
        end
        if nil ~= L8_2 then
          L10_2 = L7_2[L8_2]
          L11_2 = INVENTORY
          if L5_2 == L11_2 then
            L11_2 = L3_1
            L12_2 = L10_2
            L11_2 = L11_2(L12_2)
            L10_2 = L11_2
          end
          L11_2 = SOCIETY
          if L5_2 == L11_2 then
            L11_2 = L2_1
            L12_2 = L10_2
            L11_2 = L11_2(L12_2)
            L10_2 = L11_2
          end
          L11_2 = CLOTHING
          if L5_2 == L11_2 then
            L11_2 = L1_1
            L12_2 = L10_2
            L11_2 = L11_2(L12_2)
            L10_2 = L11_2
          end
          L11_2 = Config
          L11_2[L5_2] = L10_2
          L11_2 = dbg
          L11_2 = L11_2.debug
          L12_2 = "Auto detect for bridge %s succeeded: %s, %s"
          L13_2 = L5_2
          L14_2 = L8_2
          L15_2 = L10_2
          L11_2(L12_2, L13_2, L14_2, L15_2)
        else
          L10_2 = L7_2.NONE
          if nil ~= L10_2 then
            L10_2 = Config
            L11_2 = L7_2.NONE
            L10_2[L5_2] = L11_2
            L10_2 = dbg
            L10_2 = L10_2.debug
            L11_2 = "Auto detect for bridge %s succeeded: %s, %s"
            L12_2 = L5_2
            L13_2 = "NONE"
            L14_2 = L7_2.NONE
            L10_2(L11_2, L12_2, L13_2, L14_2)
          else
            L10_2 = dbg
            L10_2 = L10_2.critical
            L11_2 = "Auto detect for bridge %s failed. Please set it manually in the configuration file."
            L12_2 = L5_2
            L10_2(L11_2, L12_2)
          end
        end
      end
    else
      L7_2 = Config
      L7_2 = L7_2[L5_2]
      if nil ~= L7_2 then
        L7_2 = Config
        L7_2 = L7_2[L5_2]
        L8_2 = AUTO_DETECT
        if L7_2 ~= L8_2 then
          L7_2 = Config
          L7_2 = L7_2[L5_2]
          L8_2 = _G
          L8_2 = L8_2[L5_2]
          if nil == L8_2 then
            L9_2 = dbg
            L9_2 = L9_2.critical
            L10_2 = "Auto detect for bridge %s failed. Please set it manually in the configuration file. [_G]"
            L11_2 = L5_2
            L9_2(L10_2, L11_2)
          else
            L9_2 = nil
            L10_2 = ORDERED_KEYS
            L10_2 = L10_2[L5_2]
            if L10_2 then
              L11_2 = ipairs
              L12_2 = L10_2
              L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
              for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
                L17_2 = L8_2[L16_2]
                if L17_2 == L7_2 then
                  L18_2 = isResourcePresentProvideless
                  L19_2 = L17_2
                  L18_2 = L18_2(L19_2)
                  if L18_2 then
                    L18_2 = NONE_RESOURCE
                    if L17_2 ~= L18_2 then
                      L9_2 = L16_2
                      break
                    end
                  end
                end
              end
            else
              L11_2 = pairs
              L12_2 = L8_2
              L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
              for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
                if L16_2 == L7_2 then
                  L17_2 = isResourcePresentProvideless
                  L18_2 = L16_2
                  L17_2 = L17_2(L18_2)
                  if L17_2 then
                    L17_2 = NONE_RESOURCE
                    if L16_2 ~= L17_2 then
                      L9_2 = L15_2
                      break
                    end
                  end
                end
              end
            end
            if nil ~= L9_2 then
              L11_2 = L8_2[L9_2]
              L12_2 = INVENTORY
              if L5_2 == L12_2 then
                L12_2 = L3_1
                L13_2 = L11_2
                L12_2 = L12_2(L13_2)
                L11_2 = L12_2
              end
              L12_2 = Config
              L12_2[L5_2] = L11_2
              L12_2 = dbg
              L12_2 = L12_2.debug
              L13_2 = "Auto detect for bridge %s succeeded: %s, %s"
              L14_2 = L5_2
              L15_2 = L9_2
              L16_2 = L11_2
              L12_2(L13_2, L14_2, L15_2, L16_2)
            else
              L11_2 = L8_2.NONE
              if nil ~= L11_2 then
                L11_2 = Config
                L12_2 = L8_2.NONE
                L11_2[L5_2] = L12_2
                L11_2 = dbg
                L11_2 = L11_2.debug
                L12_2 = "Auto detect for bridge %s succeeded: %s, %s"
                L13_2 = L5_2
                L14_2 = "NONE"
                L15_2 = L8_2.NONE
                L11_2(L12_2, L13_2, L14_2, L15_2)
              else
                L11_2 = dbg
                L11_2 = L11_2.critical
                L12_2 = "Auto detect for bridge %s failed. Please set it manually in the configuration file."
                L13_2 = L5_2
                L11_2(L12_2, L13_2)
              end
            end
          end
      end
      else
        L7_2 = Config
        L7_2 = L7_2[L5_2]
        if nil == L7_2 then
          L7_2 = dbg
          L7_2 = L7_2.critical
          L8_2 = "Auto detect for bridge %s failed because the value was nil. Please set it manually in the configuration file."
          L9_2 = L5_2
          L7_2(L8_2, L9_2)
        end
      end
    end
  end
  L1_2 = TriggerEvent
  L2_2 = "rcore_police:server:internal:isBridgeReady"
  L1_2(L2_2)
end
L5_1 = CreateThread
function L6_1()
  local L0_2, L1_2
  L0_2 = L4_1
  L0_2()
end
L5_1(L6_1)
