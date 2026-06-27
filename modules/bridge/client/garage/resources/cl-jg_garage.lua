CreateThread(function()
    if Config.Garages == Garages.JG then
        GarageService.GetVehicleProps = function(vehicleId)
            return {}
        end

        GarageService.SetVehicleToImpound = function(vehicleId, vehicleProps)
            ExecuteCommand('iv')
            dbg.debug('SetVehicleToImpound: Using resource %s to impound closest vehicle with entityId: %s', Config.Garages, vehicleId)
        end
    end
end)


