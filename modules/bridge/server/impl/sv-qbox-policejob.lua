CreateThread(function()
    if isResourcePresentProvideless(PoliceResources.QBOX) then
        StopResource(PoliceResources.QBOX)
    end
end)
