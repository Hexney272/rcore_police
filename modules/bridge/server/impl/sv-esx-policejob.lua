CreateThread(function()
    if isResourcePresentProvideless(PoliceResources.ESX) then
        StopResource(PoliceResources.ESX)
    end
end)
