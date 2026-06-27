local L0_1, L1_1, L2_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = Framework
  L0_2 = L0_2.CachePoliceGroups
  L0_2, L1_2 = L0_2()
  if not L0_2 then
    return
  end
  L2_2 = RegisterDepartments
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1(L1_1)
L0_1 = {}
L1_1 = {}
L2_1 = IsDuplicityVersion
L2_1 = L2_1()
if L2_1 then
  function L2_1(A0_2, A1_2, A2_2, A3_2)
    local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L4_2 = GetAvailableItemsForGrade
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
    if not L5_2 then
      L6_2 = false
      return L6_2
    end
    L7_2 = A2_2
    L6_2 = A2_2.lower
    L6_2 = L6_2(L7_2)
    L7_2 = 1
    L8_2 = #L4_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L4_2[L10_2]
      L11_2 = L11_2.name
      L12_2 = L11_2
      L11_2 = L11_2.lower
      L11_2 = L11_2(L12_2)
      if L11_2 == L6_2 then
        L11_2 = true
        return L11_2
      end
    end
    L7_2 = false
    return L7_2
  end
  CanAccessItem = L2_1
  function L2_1(A0_2, A1_2, A2_2, A3_2)
    local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
    L4_2 = GetAvailableItemsForGrade
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
    if not L5_2 then
      L6_2 = nil
      return L6_2
    end
    L7_2 = A2_2
    L6_2 = A2_2.lower
    L6_2 = L6_2(L7_2)
    L7_2 = 1
    L8_2 = #L4_2
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = L4_2[L10_2]
      L11_2 = L11_2.name
      L12_2 = L11_2
      L11_2 = L11_2.lower
      L11_2 = L11_2(L12_2)
      if L11_2 == L6_2 then
        L11_2 = L4_2[L10_2]
        return L11_2
      end
    end
    L7_2 = nil
    return L7_2
  end
  GetItemStorageData = L2_1
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 then
    L1_2 = next
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = pairs
      L2_2 = A0_2
      L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
      for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
        L7_2 = Config
        L7_2 = L7_2.JobGroups
        L7_2 = L7_2[L5_2]
        if not L7_2 then
          L7_2 = Config
          L7_2 = L7_2.JobGroups
          L8_2 = {}
          L7_2[L5_2] = L8_2
        end
        L7_2 = Config
        L7_2 = L7_2.JobGroups
        L7_2 = L7_2[L5_2]
        L8_2 = L7_2.Store
        if not L8_2 then
          L8_2 = Config
          L8_2 = L8_2.ItemShop
          L8_2 = L8_2.DefaultDepartmentTemplate
          L7_2.Store = L8_2
          L8_2 = dbg
          L8_2 = L8_2.debug
          L9_2 = "Department: Registering store for %s from Config.ItemShop.DefaultDepartmentTemplate"
          L10_2 = L5_2
          L8_2(L9_2, L10_2)
        end
        L8_2 = L7_2.VehiclesToGrade
        if not L8_2 then
          L8_2 = Config
          L8_2 = L8_2.Garage
          L8_2 = L8_2.DefaultDepartmentTemplate
          L7_2.VehiclesToGrade = L8_2
          L8_2 = dbg
          L8_2 = L8_2.debug
          L9_2 = "Department: Registering vehicles for %s from Config.ItemShop.DefaultDepartmentTemplate"
          L10_2 = L5_2
          L8_2(L9_2, L10_2)
        end
        L8_2 = L7_2.Outfits
        if not L8_2 then
          L8_2 = Config
          L8_2 = L8_2.Outfits
          L8_2 = L8_2.DefaultDepartmentTemplate
          L7_2.Outfits = L8_2
        end
      end
    end
  end
end
RegisterDepartments = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L3_2 = "outfits-%s-%d-%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = L1_1
  L4_2 = L4_2[L3_2]
  if L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.outfit
    L5_2 = true
    L6_2 = "CACHED"
    return L4_2, L5_2, L6_2
  end
  L4_2 = Config
  L4_2 = L4_2.JobGroups
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = L4_2.Outfits
  end
  if not L4_2 then
    L5_2 = {}
    L6_2 = false
    L7_2 = "NO_DEPARTMENT_OUTFIT_DATA"
    return L5_2, L6_2, L7_2
  end
  L5_2 = {}
  L6_2 = L4_2.storage
  L7_2 = {}
  L8_2 = Config
  L8_2 = L8_2.Outfits
  L8_2 = L8_2.ShownOwnGradeOutfitsOnly
  L8_2 = A1_2 or L8_2
  if not L8_2 or not A1_2 then
    L8_2 = 0
  end
  L9_2 = A1_2
  L10_2 = L8_2
  L11_2 = L9_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L4_2.access
    L14_2 = L14_2[L13_2]
    if L14_2 then
      L15_2 = L14_2[1]
      if "*" == L15_2 or A2_2 then
        L15_2 = {}
        L16_2 = pairs
        L17_2 = L6_2
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2 in L16_2, L17_2, L18_2, L19_2 do
          L21_2 = table
          L21_2 = L21_2.insert
          L22_2 = L15_2
          L23_2 = L20_2
          L21_2(L22_2, L23_2)
        end
        L16_2 = table
        L16_2 = L16_2.sort
        L17_2 = L15_2
        L16_2(L17_2)
        L16_2 = ipairs
        L17_2 = L15_2
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
          L22_2 = L6_2[L21_2]
          L23_2 = table
          L23_2 = L23_2.insert
          L24_2 = L5_2
          L25_2 = L22_2
          L23_2(L24_2, L25_2)
        end
        L16_2 = L1_1
        L17_2 = {}
        L17_2.outfit = L5_2
        L16_2[L3_2] = L17_2
        L16_2 = L5_2
        L17_2 = true
        L18_2 = "HAS_ACCESS"
        return L16_2, L17_2, L18_2
      end
      L15_2 = ipairs
      L16_2 = L14_2
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
        L7_2[L20_2] = true
      end
    end
  end
  L10_2 = {}
  L11_2 = pairs
  L12_2 = L7_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2 in L11_2, L12_2, L13_2, L14_2 do
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = L10_2
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
  end
  L11_2 = table
  L11_2 = L11_2.sort
  L12_2 = L10_2
  L11_2(L12_2)
  L11_2 = 1
  L12_2 = #L10_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L10_2[L14_2]
    L16_2 = L6_2[L15_2]
    if L16_2 then
      L17_2 = table
      L17_2 = L17_2.insert
      L18_2 = L5_2
      L19_2 = L16_2
      L17_2(L18_2, L19_2)
    end
  end
  L11_2 = L1_1
  L12_2 = {}
  L12_2.outfit = L5_2
  L11_2[L3_2] = L12_2
  L11_2 = L5_2
  L12_2 = true
  L13_2 = "HAS_ACCESS"
  return L11_2, L12_2, L13_2
end
GetAvailableOutfitsForGrade = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2
  L4_2 = ZONE_TYPE
  L4_2 = L4_2.GARAGE_AIR
  L4_2 = A3_2 == L4_2
  L5_2 = "vehicles-%s-%d-%s"
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L0_1
  L6_2 = L6_2[L5_2]
  if L6_2 then
    L6_2 = L0_1
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.vehicles
    L7_2 = true
    L8_2 = "CACHED"
    return L6_2, L7_2, L8_2
  end
  L6_2 = Config
  L6_2 = L6_2.JobGroups
  L6_2 = L6_2[A0_2]
  if L6_2 then
    L6_2 = L6_2.VehiclesToGrade
  end
  if not L6_2 then
    L7_2 = {}
    L8_2 = false
    L9_2 = "NO_DEPARTMENT_VEHICLE_DATA"
    return L7_2, L8_2, L9_2
  end
  L7_2 = {}
  L8_2 = L6_2.storage
  L9_2 = {}
  L10_2 = 0
  L11_2 = A1_2
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = L6_2.access
    L14_2 = L14_2[L13_2]
    if L14_2 then
      L15_2 = L14_2[1]
      if "*" == L15_2 or A2_2 then
        L15_2 = {}
        L16_2 = pairs
        L17_2 = L8_2
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2 in L16_2, L17_2, L18_2, L19_2 do
          L21_2 = table
          L21_2 = L21_2.insert
          L22_2 = L15_2
          L23_2 = L20_2
          L21_2(L22_2, L23_2)
        end
        L16_2 = table
        L16_2 = L16_2.sort
        L17_2 = L15_2
        L16_2(L17_2)
        L16_2 = ipairs
        L17_2 = L15_2
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
          L22_2 = L8_2[L21_2]
          if L4_2 then
            L23_2 = L22_2.isAir
            if not L23_2 then
              goto lbl_112
            end
          else
            L23_2 = L22_2.isAir
            if L23_2 then
          end
          else
            L23_2 = L22_2.price
            if not L23_2 then
              L23_2 = 0
            end
            L24_2 = Config
            L24_2 = L24_2.Garage
            L24_2 = L24_2.DepartmentsEnableBuyVehicles
            if not L24_2 then
              L23_2 = 0
            end
            L24_2 = table
            L24_2 = L24_2.insert
            L25_2 = L7_2
            L26_2 = {}
            L26_2.name = L21_2
            L27_2 = L22_2.label
            L26_2.label = L27_2
            L27_2 = L22_2.model
            L26_2.model = L27_2
            L26_2.price = L23_2
            L27_2 = L22_2.image
            L26_2.image = L27_2
            L24_2(L25_2, L26_2)
          end
          ::lbl_112::
        end
        L16_2 = L0_1
        L17_2 = {}
        L17_2.vehicles = L7_2
        L16_2[L5_2] = L17_2
        L16_2 = L7_2
        L17_2 = true
        L18_2 = "HAS_ACCESS"
        return L16_2, L17_2, L18_2
      end
      L15_2 = ipairs
      L16_2 = L14_2
      L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2)
      for L19_2, L20_2 in L15_2, L16_2, L17_2, L18_2 do
        L9_2[L20_2] = true
      end
    end
  end
  L10_2 = {}
  L11_2 = pairs
  L12_2 = L9_2
  L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
  for L15_2 in L11_2, L12_2, L13_2, L14_2 do
    L16_2 = table
    L16_2 = L16_2.insert
    L17_2 = L10_2
    L18_2 = L15_2
    L16_2(L17_2, L18_2)
  end
  L11_2 = table
  L11_2 = L11_2.sort
  L12_2 = L10_2
  L11_2(L12_2)
  L11_2 = 1
  L12_2 = #L10_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L10_2[L14_2]
    L16_2 = L8_2[L15_2]
    if L16_2 then
      L17_2 = L16_2.price
      if not L17_2 then
        L17_2 = 0
      end
      L18_2 = Config
      L18_2 = L18_2.Garage
      L18_2 = L18_2.DepartmentsEnableBuyVehicles
      if not L18_2 then
        L17_2 = 0
      end
      if L4_2 then
        L18_2 = L16_2.isAir
        if not L18_2 then
          goto lbl_194
        end
      else
        L18_2 = L16_2.isAir
        if L18_2 then
      end
      else
        L18_2 = table
        L18_2 = L18_2.insert
        L19_2 = L7_2
        L20_2 = {}
        L20_2.name = L15_2
        L21_2 = L16_2.label
        L20_2.label = L21_2
        L21_2 = L16_2.model
        L20_2.model = L21_2
        L20_2.price = L17_2
        L21_2 = L16_2.image
        L20_2.image = L21_2
        L18_2(L19_2, L20_2)
      end
    end
    ::lbl_194::
  end
  L11_2 = L0_1
  L12_2 = {}
  L12_2.vehicles = L7_2
  L11_2[L5_2] = L12_2
  L11_2 = L7_2
  L12_2 = true
  L13_2 = "HAS_ACCESS"
  return L11_2, L12_2, L13_2
end
GetAvailableVehiclesForGrade = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  if not A0_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "GetAvailableItemsForGrade: Failed to get job"
    return L3_2(L4_2)
  end
  if not A1_2 then
    L3_2 = dbg
    L3_2 = L3_2.debug
    L4_2 = "GetAvailableItemsForGrade: Failed to get grade"
    return L3_2(L4_2)
  end
  L3_2 = "%s-%d"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  if L4_2 then
    L4_2 = L0_1
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.items
    L5_2 = true
    L6_2 = "CACHED"
    return L4_2, L5_2, L6_2
  end
  L4_2 = Config
  L4_2 = L4_2.JobGroups
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = L4_2.Store
  end
  if not L4_2 then
    L5_2 = {}
    L6_2 = false
    L7_2 = "NO_DEPARTMENT_DATA"
    return L5_2, L6_2, L7_2
  end
  L5_2 = L4_2.mode
  L6_2 = SHOP_STATE
  L6_2 = L6_2.ORDER_BY_BOSS
  if L5_2 == L6_2 then
    L5_2 = A2_2
    if not L5_2 then
      L6_2 = dbg
      L6_2 = L6_2.debug
      L7_2 = "The department store can be opened by boss only! Since SHOP_STATE is set to SHOP_STATE.ORDER_BY_BOSS!"
      L6_2(L7_2)
      L6_2 = {}
      L7_2 = false
      L8_2 = "SHOP_STATE_REQUIRED_BOSS"
      return L6_2, L7_2, L8_2
    end
  end
  L5_2 = {}
  L6_2 = L4_2.storage
  L7_2 = {}
  L8_2 = 0
  L9_2 = A1_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L4_2.access
    L12_2 = L12_2[L11_2]
    if L12_2 then
      L13_2 = L12_2[1]
      if "*" == L13_2 or A2_2 then
        L13_2 = {}
        L14_2 = pairs
        L15_2 = L6_2
        L14_2, L15_2, L16_2, L17_2 = L14_2(L15_2)
        for L18_2 in L14_2, L15_2, L16_2, L17_2 do
          L19_2 = table
          L19_2 = L19_2.insert
          L20_2 = L13_2
          L21_2 = L18_2
          L19_2(L20_2, L21_2)
        end
        L14_2 = table
        L14_2 = L14_2.sort
        L15_2 = L13_2
        L14_2(L15_2)
        L14_2 = 1
        L15_2 = #L13_2
        L16_2 = 1
        for L17_2 = L14_2, L15_2, L16_2 do
          L18_2 = L13_2[L17_2]
          L19_2 = L6_2[L18_2]
          L20_2 = table
          L20_2 = L20_2.insert
          L21_2 = L5_2
          L22_2 = {}
          L22_2.name = L18_2
          L23_2 = L19_2.label
          L22_2.label = L23_2
          L23_2 = L19_2.count
          L22_2.count = L23_2
          L23_2 = L19_2.price
          L22_2.price = L23_2
          L20_2(L21_2, L22_2)
        end
        L14_2 = L0_1
        L15_2 = {}
        L15_2.items = L5_2
        L14_2[L3_2] = L15_2
        L14_2 = L5_2
        L15_2 = true
        L16_2 = "HAS_ACCESS"
        return L14_2, L15_2, L16_2
      end
      L13_2 = 1
      L14_2 = #L12_2
      L15_2 = 1
      for L16_2 = L13_2, L14_2, L15_2 do
        L17_2 = L12_2[L16_2]
        L7_2[L17_2] = true
      end
    end
  end
  L8_2 = {}
  L9_2 = pairs
  L10_2 = L7_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2 in L9_2, L10_2, L11_2, L12_2 do
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L8_2
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
  end
  L9_2 = table
  L9_2 = L9_2.sort
  L10_2 = L8_2
  L9_2(L10_2)
  L9_2 = 1
  L10_2 = #L8_2
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L8_2[L12_2]
    L14_2 = L6_2[L13_2]
    if L14_2 then
      L15_2 = table
      L15_2 = L15_2.insert
      L16_2 = L5_2
      L17_2 = {}
      L17_2.name = L13_2
      L18_2 = L14_2.label
      L17_2.label = L18_2
      L18_2 = L14_2.count
      L17_2.count = L18_2
      L18_2 = L14_2.price
      L17_2.price = L18_2
      L15_2(L16_2, L17_2)
    end
  end
  L9_2 = L0_1
  L10_2 = {}
  L10_2.items = L5_2
  L9_2[L3_2] = L10_2
  L9_2 = L5_2
  L10_2 = true
  L11_2 = "HAS_ACCESS"
  return L9_2, L10_2, L11_2
end
GetAvailableItemsForGrade = L2_1
