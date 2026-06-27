local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
L0_1[0] = "dside_f"
L0_1[1] = "pside_f"
L0_1[2] = "dside_r"
L0_1[3] = "pside_r"
L1_1 = {}
L1_1[0] = -1
L1_1[1] = 0
L1_1[2] = 1
L1_1[3] = 2
L2_1 = {}
L3_1 = -1
L2_1[L3_1] = 0
L2_1[0] = 1
L2_1[1] = 2
L2_1[2] = 3
L3_1 = {}
L4_1 = -1
L3_1[L4_1] = "seat_dside_f"
L3_1[0] = "seat_pside_f"
L3_1[1] = "seat_dside_r"
L3_1[2] = "seat_pside_r"
SeatToBoneName = L3_1
L3_1 = {}
L4_1 = -1
L5_1 = vector3
L6_1 = -0.5
L7_1 = 1.5
L8_1 = 0.0
L5_1 = L5_1(L6_1, L7_1, L8_1)
L3_1[L4_1] = L5_1
L4_1 = vector3
L5_1 = 0.5
L6_1 = 1.5
L7_1 = 0.0
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1[0] = L4_1
L4_1 = vector3
L5_1 = -0.5
L6_1 = -1.5
L7_1 = 0.0
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1[1] = L4_1
L4_1 = vector3
L5_1 = 0.5
L6_1 = -1.5
L7_1 = 0.0
L4_1 = L4_1(L5_1, L6_1, L7_1)
L3_1[2] = L4_1
L4_1 = false
L5_1 = Interactions
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = UtilsService
  L3_2 = L3_2.GetPlayerPedFromServerId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = Utils
  L5_2 = L5_2.GetClosestVehicleToPlayer
  L6_2 = L2_2
  L7_2 = 6.0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = dbg
  L6_2 = L6_2.debug
  L7_2 = "Checking if player is close to vehicle: %s"
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = false
  L7_2 = IsEntityAttachedToAnyPed
  L8_2 = L1_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L6_2 = true
    L7_2 = DetachEntity
    L8_2 = L1_2
    L9_2 = false
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
  end
  if L5_2 and L5_2 > 0 then
    L7_2 = GetClosestSeatToPlayer
    L8_2 = L5_2
    L9_2 = L2_2
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    if not L7_2 or not L8_2 then
      L9_2 = GetClosestSeatToPlayer
      L10_2 = L5_2
      L11_2 = L4_2
      L9_2, L10_2 = L9_2(L10_2, L11_2)
      L8_2 = L10_2
      L7_2 = L9_2
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Fallback: Found vehicle with seat & door id: %s %s"
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    else
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Origin: Found vehicle with seat & door id: %s %s"
      L11_2 = L7_2
      L12_2 = L8_2
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = DoesEntityExist
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = dbg
      L9_2 = L9_2.critical
      L10_2 = "Not existing vehicle - put player in vehicle!"
      return L9_2(L10_2)
    end
    L9_2 = IsPedCuffed
    L10_2 = L1_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = true
      L4_1 = L9_2
      L9_2 = SetEnableHandcuffs
      L10_2 = L1_2
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
    if not L6_2 then
      L9_2 = DeadUtils
      L9_2 = L9_2.IsTargetPlayerDead
      L10_2 = MyServerId
      L9_2 = L9_2(L10_2)
    end
    if L9_2 and L7_2 then
      L9_2 = SetPedIntoVehicle
      L10_2 = L1_2
      L11_2 = L5_2
      L12_2 = L7_2
      L9_2(L10_2, L11_2, L12_2)
      return
    end
    L9_2 = SetPedConfigFlag
    L10_2 = L1_2
    L11_2 = 184
    L12_2 = true
    L9_2(L10_2, L11_2, L12_2)
    if L7_2 and L8_2 then
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Player is getting into seat with id: %s"
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      currentSeat = L7_2
      L9_2 = SetVehicleDoorOpen
      L10_2 = L5_2
      L11_2 = L8_2
      L12_2 = false
      L13_2 = false
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = Wait
      L10_2 = 250
      L9_2(L10_2)
      L9_2 = toggleEnterOrExit
      L10_2 = L1_2
      L11_2 = L5_2
      L12_2 = L7_2
      L13_2 = "ENTER"
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = L4_1
      if not L9_2 then
        return
      end
      L9_2 = 0
      L10_2 = false
      repeat
        L11_2 = Wait
        L12_2 = 250
        L11_2(L12_2)
        L9_2 = L9_2 + 250
        L11_2 = IsPedInVehicle
        L12_2 = L1_2
        L13_2 = L5_2
        L14_2 = false
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        if L11_2 then
          L10_2 = true
          break
        end
        L11_2 = GetSeatPedIsTryingToEnter
        L12_2 = L1_2
        L11_2 = L11_2(L12_2)
        if L11_2 < 0 then
          break
        end
        L11_2 = 2500
      until L9_2 >= L11_2
      if not L10_2 then
        L11_2 = dbg
        L11_2 = L11_2.debug
        L12_2 = "Fallback: Forcing ped into vehicle after timeout"
        L11_2(L12_2)
        L11_2 = SetPedIntoVehicle
        L12_2 = L1_2
        L13_2 = L5_2
        L14_2 = L7_2
        L11_2(L12_2, L13_2, L14_2)
      end
      L11_2 = SetVehicleDoorShut
      L12_2 = L5_2
      L13_2 = L8_2
      L14_2 = true
      L11_2(L12_2, L13_2, L14_2)
      L11_2 = SetEnableHandcuffs
      L12_2 = L1_2
      L13_2 = true
      L11_2(L12_2, L13_2)
      L11_2 = false
      L4_1 = L11_2
    else
      L9_2 = dbg
      L9_2 = L9_2.debug
      L10_2 = "Failed to get seat and door id from vehicle: %s %s %s"
      L11_2 = L5_2
      L12_2 = L7_2
      L13_2 = L8_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L5_1.PutPlayerInVehicle = L6_1
L5_1 = Interactions
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = UtilsService
  L3_2 = L3_2.GetPlayerPedFromServerId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = IsPedSittingInAnyVehicle
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = GetVehiclePedIsIn
    L6_2 = L2_2
    L7_2 = true
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = IsPedCuffed
      L7_2 = L2_2
      L6_2 = L6_2(L7_2)
      L7_2 = InteractionService
      L7_2 = L7_2.isEscorted
      L7_2 = L7_2()
      L8_2 = 3000
      if L6_2 then
        L8_2 = 3000
      end
      L9_2 = TaskLeaveAnyVehicle
      L10_2 = L2_2
      L11_2 = 0
      L12_2 = 0
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = SetPedConfigFlag
      L10_2 = L2_2
      L11_2 = 184
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = currentSeat
      if L9_2 then
        currentSeat = nil
      end
      L9_2 = IsPedSittingInAnyVehicle
      L10_2 = L2_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L9_2 = dbg
        L9_2 = L9_2.debug
        L10_2 = "Teleporting player from vehicle to the initiator coords instead.."
        L9_2(L10_2)
        L9_2 = SetEntityCoords
        L10_2 = L2_2
        L11_2 = L4_2.x
        L12_2 = L4_2.y
        L13_2 = L4_2.z
        L14_2 = false
        L15_2 = false
        L16_2 = false
        L17_2 = true
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      end
    end
  end
end
L5_1.TakePlayerFromVehicle = L6_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2
  L7_2 = SetTextFont
  L8_2 = 4
  L7_2(L8_2)
  L7_2 = SetTextScale
  L8_2 = 0.35
  L9_2 = 0.35
  L7_2(L8_2, L9_2)
  L7_2 = SetTextColour
  L8_2 = A3_2
  L9_2 = A4_2
  L10_2 = A5_2
  L11_2 = A6_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = SetTextOutline
  L7_2()
  L7_2 = SetTextEntry
  L8_2 = "STRING"
  L7_2(L8_2)
  L7_2 = AddTextComponentString
  L8_2 = A2_2
  L7_2(L8_2)
  L7_2 = DrawText
  L8_2 = A0_2
  L9_2 = A1_2
  L7_2(L8_2, L9_2)
end
DrawText2D = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  if A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = GetEntityBoneIndexByName
    L9_2 = A0_2
    L10_2 = "handle_"
    L11_2 = L7_2
    L10_2 = L10_2 .. L11_2
    L8_2 = L8_2(L9_2, L10_2)
    if -1 ~= L8_2 then
      L9_2 = not L6_2
      if -1 ~= L9_2 then
        L9_2 = GetEntityBonePosition_2
        L10_2 = A0_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L1_2
        L12_2 = {}
        L12_2.seatIndex = L6_2
        L12_2.position = L9_2
        L10_2(L11_2, L12_2)
        L10_2 = DrawLine
        L11_2 = L9_2.x
        L12_2 = L9_2.y
        L13_2 = L9_2.z
        L14_2 = L9_2.x
        L15_2 = L9_2.y
        L16_2 = L9_2.z
        L16_2 = L16_2 + 1.0
        L17_2 = 255
        L18_2 = 255
        L19_2 = 0
        L20_2 = 255
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L10_2 = DrawBox
        L11_2 = L9_2.x
        L11_2 = L11_2 - 0.1
        L12_2 = L9_2.y
        L12_2 = L12_2 - 0.1
        L13_2 = L9_2.z
        L13_2 = L13_2 - 0.1
        L14_2 = L9_2.x
        L14_2 = L14_2 + 0.1
        L15_2 = L9_2.y
        L15_2 = L15_2 + 0.1
        L16_2 = L9_2.z
        L16_2 = L16_2 + 0.1
        L17_2 = 0
        L18_2 = 0
        L19_2 = 255
        L20_2 = 150
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L10_2 = L1_1
        L10_2 = L10_2[L6_2]
        L11_2 = Utils
        L11_2 = L11_2.Draw3DText
        L12_2 = L9_2.x
        L13_2 = L9_2.y
        L14_2 = L9_2.z
        L14_2 = L14_2 + 1.5
        L15_2 = 1.0
        L16_2 = L10_2
        L17_2 = " - "
        L18_2 = L7_2
        L16_2 = L16_2 .. L17_2 .. L18_2
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
  end
  return L1_2
end
DebugVehicleSeats = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = L3_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
GetEntryPositionOfSeat = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A0_2 then
    L3_2 = DoesEntityExist
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = dbg
  L3_2 = L3_2.debug
  L4_2 = "No valid vehicle nearby."
  L3_2(L4_2)
  L3_2 = nil
  L4_2 = nil
  do return L3_2, L4_2 end
  ::lbl_14::
  L3_2 = GetEntityCoords
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 - A1_2
  L4_2 = #L4_2
  L5_2 = Config
  L5_2 = L5_2.CheckVehicleDistance
  if L4_2 > L5_2 then
    L5_2 = dbg
    L5_2 = L5_2.debug
    L6_2 = "Player too far from vehicle to search for seat."
    L5_2(L6_2)
    L5_2 = nil
    L6_2 = nil
    return L5_2, L6_2
  end
  L5_2 = nil
  L6_2 = math
  L6_2 = L6_2.huge
  L7_2 = nil
  L8_2 = GetVehicleMaxNumberOfPassengers
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  L9_2 = -1
  L10_2 = -1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = IsVehicleSeatFree
    L13_2 = A0_2
    L14_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2)
    if not L12_2 then
      if not A2_2 then
        goto lbl_105
      end
      L12_2 = GetPedInVehicleSeat
      L13_2 = A0_2
      L14_2 = L11_2
      L12_2 = L12_2(L13_2, L14_2)
      if not (L12_2 > 0) then
        goto lbl_105
      end
    end
    L12_2 = SeatToBoneName
    if L12_2 then
      L12_2 = SeatToBoneName
      L12_2 = L12_2[L11_2]
      if L12_2 then
        goto lbl_62
      end
    end
    L12_2 = nil
    ::lbl_62::
    if L12_2 then
      L13_2 = GetEntityBoneIndexByName
      L14_2 = A0_2
      L15_2 = "handle_"
      L16_2 = L12_2
      L15_2 = L15_2 .. L16_2
      L13_2 = L13_2(L14_2, L15_2)
      if L13_2 then
        goto lbl_73
      end
    end
    L13_2 = -1
    ::lbl_73::
    if -1 ~= L13_2 then
      L14_2 = GetEntityBonePosition_2
      L15_2 = A0_2
      L16_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2)
      if L14_2 then
        goto lbl_94
      end
    end
    L14_2 = GetOffsetFromEntityInWorldCoords
    L15_2 = A0_2
    L16_2 = GetEntryPositionOfSeat
    L17_2 = L11_2
    L16_2 = L16_2(L17_2)
    if not L16_2 then
      L16_2 = vector3
      L17_2 = 0.0
      L18_2 = 0.0
      L19_2 = 0.0
      L16_2 = L16_2(L17_2, L18_2, L19_2)
    end
    L14_2 = L14_2(L15_2, L16_2)
    ::lbl_94::
    if L14_2 then
      L15_2 = A1_2 - L14_2
      L15_2 = #L15_2
      if L6_2 > L15_2 then
        L6_2 = L15_2
        L5_2 = L11_2
        L16_2 = L2_1
        L7_2 = L16_2[L11_2]
      end
    end
    ::lbl_105::
  end
  L8_2 = dbg
  L8_2 = L8_2.debug
  L9_2 = "Closest seat: %s, doorId: %s"
  L10_2 = L5_2
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L5_2
  L9_2 = L7_2
  return L8_2, L9_2
end
GetClosestSeatToPlayer = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if "ENTER" == A3_2 then
    L4_2 = TaskEnterVehicle
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = -1
    L8_2 = A2_2
    L9_2 = 1.0
    L10_2 = 3
    L11_2 = 0
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
toggleEnterOrExit = L5_1
