CreateThread(function()
    if isResourcePresentProvideless("lb-phone") then
        RegisterNetEvent("rcore_police:client:setPhoneState", function(state)
            if source == "" then return end
            if not doesExportExistInResource("lb-phone", "ToggleDisabled") then return end
            exports["lb-phone"]:ToggleDisabled(state)
        end) 
    end
end)