CreateThread(function()    
    local function ForceUncuff(target)
        ActionService.ForceUncuff(target)
    end

    provideExport('forceUncuff', PoliceResources.P, ForceUncuff)
end)