CreateThread(function()
    if Config.Licence == Licence.VMS then
        ShowPlayerLicense = function(data)
            local array = {
                {
                    header = _U('LICENSES.MENU_TITLE'),
                    isMenuHeader = true,
                },
            }

            if data and next(data) then
                for name, data in pairs(data) do
                    local prefix = ('%s: %s'):format(data.type, data.owner)

                    array[#array + 1] = {
                        type = 'button',
                        header = prefix,
                        isCopy = true,
                        value = prefix,
                        description = '',
                        params = {
                            icon = 'faCopy',
                        },
                    }
                end

                UI:CreateMenu(MENU_ID_LIST.LICENSES, 'Licenses', array, true)
            end
        end
    end
end)
