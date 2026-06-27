TextService.Render = function(text, coords)
    if Config.TextUI == TextUI.ESX then
        exports['esx_textui']:TextUI(text)
        return 
    end

    if Config.TextUI == TextUI.QBCORE then
        exports['qb-core']:DrawText(text, 'left')
        return 
    end

    if Config.TextUI == TextUI.RCORE then
        local label, key = text:match("([^%[]+)%s*%[([^%]]+)%]")

        if not label then
            label = text
            key = Config.InteractZone
        end

        UI.HelpKeys({
            keys = {
                {
                    key = key,
                    label = label
                },
            }
        }, true)
    
        return
    end

    if Config.TextUI == TextUI.OX then
        if not lib then
            return
        end 
    
        lib.showTextUI(text)

        return
    end
end

TextService.Hide = function()
    if Config.TextUI == TextUI.ESX then
        exports['esx_textui']:HideUI()
    elseif Config.TextUI == TextUI.QBCORE then
        exports['qb-core']:HideText()
    elseif Config.TextUI == TextUI.RCORE then
        UI.HelpKeys(nil, false)
    elseif Config.TextUI == TextUI.OX then
        if not lib then
            return
        end 

        lib.hideTextUI()
    else
        -- Here you define your hide text ui
    end
end
