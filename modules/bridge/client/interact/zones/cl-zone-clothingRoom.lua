AddEventHandler('rcore_police:client:handleOutfits', function(data)
    if not data then
        return
    end

    local action = data.action
    local outfit = data.outfit

    if action == OUTFITS.SET_OUTFIT then
        safeCallFunction(ApplyOutfit, OUTFITS.SET_OUTFIT, outfit)
    elseif action == OUTFITS.RESTORE_OUTFIT then
        safeCallFunction(RestoreCivilOutfit, OUTFITS.RESTORE_OUTFIT)
    end
end)