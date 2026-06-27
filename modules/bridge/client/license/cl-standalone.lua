CreateThread(function()
    if Config.Licence == Licence.NONE then
        ShowPlayerLicense = function(data)
            dbg.debug('ShowPlayerLicense: Loaded standalone, you need to integrate your resource for licence info.')
        end
    end
end)
