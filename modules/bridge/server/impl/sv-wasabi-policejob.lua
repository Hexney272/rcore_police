CreateThread(function()    
    function getPoliceCount()
        return GroupsService.GetAllDeparmentsCount()
    end

    provideExport('getPoliceOnline', PoliceResources.WASABI, getPoliceCount)
end)