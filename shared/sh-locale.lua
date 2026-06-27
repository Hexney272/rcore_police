-- Locale/Translation system for rcore_police
-- Provides the _U() global function used for retrieving translated strings

Locales = Locales or {}

--- Retrieve a translated string by key, with optional format arguments.
--- Supports dot-notation for categories: "category.key"
--- @param key string The locale key (e.g. "HANDCUFFS" or "DUTY.NEED_TO_BE_ON_DUTY")
--- @param ... any Optional format arguments passed to string.format
--- @return string The translated (and formatted) string, or the key itself on failure
function _U(key, ...)
    if not Config or not Config.Locale then
        dbg.critical("Cannot find Locale in the config")
        return "not_found_config"
    end

    local localeData = Locales[Config.Locale]

    if not localeData then
        dbg.critical("Cannot find locale %s", Config.Locale)
        return "not_found_locale"
    end

    -- Check if key uses dot-notation (category.string)
    local hasDot = string.find(key, ".", 1, true)

    if hasDot then
        local category, strKey = key:match("([^%.]+)%.([^%.]+)")

        local categoryData = localeData[category]
        if not categoryData then
            dbg.critical("Cannot find locale category %s for string %s in locale %s", category, strKey, Config.Locale)
            return key
        end

        local localeString = categoryData[strKey]
        if not localeString then
            dbg.critical("Cannot find locale string %s in category %s in locale %s", strKey, category, Config.Locale)
            return key
        end

        return string.format(localeString, ...)
    end

    -- Simple key (no dot notation)
    local localeString = localeData[key]

    if not localeString then
        dbg.critical("Cannot find locale string %s in locale %s", key, Config.Locale)
        return key
    end

    return string.format(localeString, ...)
end
