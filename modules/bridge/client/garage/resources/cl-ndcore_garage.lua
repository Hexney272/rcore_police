CreateThread(function()
    if Config.Garages == Garages.NDCORE then
        GarageService.GetVehicleProps = function(vehicleId)
            return {}
        end

        GarageService.SetVehicleToImpound = function(vehicleId, vehicleProps)
            if not vehicleId then
                return
            end

            TriggerServerEvent('rcore_police:setVehicleToImpound', vehicleId)
        end
    end
end)
