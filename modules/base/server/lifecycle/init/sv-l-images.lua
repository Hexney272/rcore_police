local L0_1, L1_1, L2_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L1_2 = NetworkGetEntityFromNetworkId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = false
  L3_2 = DoesEntityExist
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = GetEntityModel
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if 680380202 == L3_2 then
      L2_2 = true
    end
  end
  return L2_2
end
IsEntityACamera = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Framework
  L2_2 = L2_2.sendNotification
  L3_2 = A0_2
  L4_2 = _U
  L5_2 = "CAMERA.PROCESSING_PHOTO"
  L4_2 = L4_2(L5_2)
  L5_2 = "success"
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = ImageService
  L2_2 = L2_2.Upload
  L3_2 = A0_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if not A1_3 and A0_3 then
      L3_3 = A0_3.url
      if L3_3 then
        goto lbl_17
      end
    end
    L3_3 = dbg
    L3_3 = L3_3.critical
    L4_3 = "Failed to upload photo for player %s: %s"
    L5_3 = A0_2
    L6_3 = A1_3 or L6_3
    if not A1_3 then
      L6_3 = "No URL returned"
    end
    L3_3(L4_3, L5_3, L6_3)
    do return end
    ::lbl_17::
    L3_3 = dbg
    L3_3 = L3_3.debug
    L4_3 = "Creating photo image by player %s (%s)"
    L5_3 = Framework
    L5_3 = L5_3.getCharacterShortName
    L6_3 = A0_2
    L5_3 = L5_3(L6_3)
    L6_3 = A0_2
    L3_3(L4_3, L5_3, L6_3)
    L3_3 = StartClient
    L4_3 = A0_2
    L5_3 = "StartPhotoEffect"
    L3_3(L4_3, L5_3)
    L3_3 = CameraMetadata
    L4_3 = A0_3
    L5_3 = A2_3
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = Framework
    L4_3 = L4_3.sendNotification
    L5_3 = A0_2
    L6_3 = _U
    L7_3 = "CAMERA.PROCESSING_PHOTO_FINISHED"
    L6_3 = L6_3(L7_3)
    L7_3 = "success"
    L4_3(L5_3, L6_3, L7_3)
    L4_3 = InventoryService
    L4_3 = L4_3.addItem
    L5_3 = A0_2
    L6_3 = Items
    L6_3 = L6_3.Photo
    L7_3 = 1
    L8_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  L5_2 = A1_2
  L6_2 = "blob"
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
UploadPhoto = L0_1
L0_1 = RegisterNetEvent
L1_1 = "rcore_police:server:requestCameraTakePhoto"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if not A0_2 then
    return
  end
  L2_2 = Config
  L2_2 = L2_2.Image
  L2_2 = L2_2.AllowCameraItem
  if not L2_2 then
    return
  end
  L2_2 = source
  L3_2 = IsEntityACamera
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = UploadPhoto
    L4_2 = L2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1(L1_1, L2_1)
