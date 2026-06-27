local L0_1, L1_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = MySQL
  if not L0_2 then
    return
  end
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = " SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = DATABASE() "
  L2_2 = {}
  L0_2 = L0_2(L1_2, L2_2)
  TABLES = L0_2
  L0_2 = db
  L0_2 = L0_2.InitDatabase
  L0_2()
  L0_2 = TriggerEvent
  L1_2 = "rcore_police:server:databaseReady"
  L0_2(L1_2)
end
L0_1(L1_1)
