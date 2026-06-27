--- @param vehicleId number The vehicle entity to set fuel for. It should be a valid vehicle entity or nil.
--- @return boolean
function ImpoundVehicle(vehicleId, ownedVehicle, netId)
    local vehicleProps = GarageService.GetVehicleProps(vehicleId)


    --[[

        Function named GarageService.SetVehicleToImpound is handling the impound for the vehicle in your garage resource if supported.
        See path: modules/bridge/client/garage/resources/

        If you are not running any supported garage resource it will use modules/bridge/client/garage/resources/cl-standalone_garage.lua

    --]]
    
    safeCallFunction(GarageService.SetVehicleToImpound, MENU_ACTIONS.IMPOUND_VEHICLE, vehicleId, vehicleProps)

    return true
end

