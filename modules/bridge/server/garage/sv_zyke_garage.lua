CreateThread(function()
    if Config.Garages == Garages.ZYKE then
        GarageService.IsVehiclePlayerOwned = function(plate)
            if not plate then
                return false
            end

            return db.IsVehicleOwnedByPlateGarage(plate)
        end

        GarageService.GetVehicleInfo = function(plate)
            local retval = {
                plate = plate
            }
            
            return retval
        end
    end
end)