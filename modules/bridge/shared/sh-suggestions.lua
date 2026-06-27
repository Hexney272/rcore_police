-- Chat Suggestions Registration for rcore_police
-- Registers chat command suggestions on client-side for all configured commands.

-- Commands that require standalone framework (no framework = register them)
local standaloneOnlyCommands = {
    [Config.Commands.SET_PLAYER_JOB] = true,
    [Config.Commands.REMOVE_PLAYER_JOB] = true,
}

-- Commands to skip registration for (admin/special commands)
local skipCommands = {
    [Config.Commands.FREE_PLAYER] = true,
    [Config.Commands.SEARCH_PLAYER_QB] = true,
}

CreateThread(function()
    -- Only register suggestions on client
    if IsDuplicityVersion() then return end

    for commandKey, commandName in pairs(Config.Commands) do
        local fullCommand = string.format("/%s", commandName)

        -- Skip admin/special commands
        if skipCommands[commandName] then
            return
        end

        -- Get suggestion parameters from config (if defined)
        local suggestions = Config.ChatSuggestions[commandName] or {}

        -- Try to get help text from locale
        local localeKey = string.format("%s.%s", "COMMANDS_HELP_TEXT", commandKey)
        local helpText = nil
        if localeKey then
            helpText = _U(localeKey)
        end

        -- Register the suggestion if there are parameters defined
        if suggestions and next(suggestions) then
            -- Skip standalone-only commands if a framework is loaded
            if standaloneOnlyCommands[commandName] then
                if Config.Framework ~= Framework.NONE then
                    return
                end
            end

            TriggerEvent("chat:addSuggestion", fullCommand, helpText, suggestions)
        end
    end
end)
