function HandleJobDuty(zone)
    TriggerServerEvent('rcore_police:server:requestDuty', zone.getZoneData())
end