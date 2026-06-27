-- Private Configuration for rcore_police
-- Contains: dev mode flags, emulated events for backward compatibility,
-- fallback weapon shop definitions, and fallback outfit definitions per grade.

-----------------------------------------------------------
-- Development Mode Flags
-----------------------------------------------------------

CreateThread(function()
    IsInDev = false
    IsInDevTwoClients = false
end)

-----------------------------------------------------------
-- Emulated Events (backward compatibility with qb-policejob)
-----------------------------------------------------------

Config.Private = {
    EMULATED_EVENTS = {
        ['qb-policejob'] = {
            CuffPlayerSoft         = { action = "CuffPlayerSoft",         type = "NEARBY" },
            CuffPlayer             = { action = "CuffPlayer",             type = "NEARBY" },
            PutPlayerInVehicle     = { action = "PutPlayerInVehicle",     type = "NEARBY" },
            SetPlayerOutVehicle    = { action = "SetPlayerOutVehicle",    type = "NEARBY" },
            SendPoliceEmergencyAlert = { action = "SendPoliceEmergencyAlert", type = "NO_NEARBY" },
            SeizeDriverLicense     = { action = "SeizeDriverLicense",     type = "NEARBY" },
            KidnapPlayer           = { action = "KidnapPlayer",           type = "NEARBY" },
            CheckStatus            = { action = "CheckStatus",            type = "NEARBY" },
            EscortPlayer           = { action = "EscortPlayer",           type = "NEARBY" },
            SearchPlayer           = { action = "SearchPlayer",           type = "NEARBY" },
            JailPlayer             = { action = "JailPlayer",             type = "NEARBY" },
            spawnCone              = { action = "spawnCone",              type = "NO_NEARBY", isProp = true },
            spawnBarrier           = { action = "spawnBarrier",           type = "NO_NEARBY", isProp = true },
            spawnRoadSign          = { action = "spawnRoadSign",          type = "NO_NEARBY", isProp = true },
            spawnTent              = { action = "spawnTent",              type = "NO_NEARBY", isProp = true },
            spawnLight             = { action = "spawnLight",             type = "NO_NEARBY", isProp = true },
            SpawnSpikeStrip        = { action = "SpawnSpikeStrip",        type = "NO_NEARBY", isProp = true },
            deleteObject           = { action = "deleteObject",           type = "NO_NEARBY" },
        }
    }
}

-----------------------------------------------------------
-- Fallback Weapon Shop (used when department has no custom store)
-----------------------------------------------------------

Config.Private.FallbackWeapons = {
    recruit = {
        List = {
            { label = "App Pistol",  weapon = "WEAPON_APPISTOL",    cost = 100 },
            { label = "Nightstick",  weapon = "WEAPON_NIGHTSTICK",  cost = 0 },
            { label = "Stungun",     weapon = "WEAPON_STUNGUN",     cost = 100 },
            { label = "Flashlight",  weapon = "WEAPON_FLASHLIGHT",  cost = 80 },
        }
    },
    officer = {
        List = {
            { label = "App Pistol",  weapon = "WEAPON_APPISTOL",    cost = 100 },
            { label = "Nightstick",  weapon = "WEAPON_NIGHTSTICK",  cost = 0 },
            { label = "Stungun",     weapon = "WEAPON_STUNGUN",     cost = 100 },
            { label = "Flashlight",  weapon = "WEAPON_FLASHLIGHT",  cost = 80 },
        }
    },
    sergeant = {
        List = {
            { label = "App Pistol",  weapon = "WEAPON_APPISTOL",    cost = 100 },
            { label = "Nightstick",  weapon = "WEAPON_NIGHTSTICK",  cost = 0 },
            { label = "Stungun",     weapon = "WEAPON_STUNGUN",     cost = 100 },
            { label = "Flashlight",  weapon = "WEAPON_FLASHLIGHT",  cost = 80 },
        }
    },
    lieutenant = {
        List = {
            { label = "App Pistol",  weapon = "WEAPON_APPISTOL",    cost = 100 },
            { label = "Nightstick",  weapon = "WEAPON_NIGHTSTICK",  cost = 0 },
            { label = "Stungun",     weapon = "WEAPON_STUNGUN",     cost = 100 },
            { label = "Flashlight",  weapon = "WEAPON_FLASHLIGHT",  cost = 80 },
        }
    },
    boss = {
        List = {
            { label = "App Pistol",    weapon = "WEAPON_APPISTOL",      cost = 100 },
            { label = "Nightstick",    weapon = "WEAPON_NIGHTSTICK",    cost = 0 },
            { label = "Stungun",       weapon = "WEAPON_STUNGUN",       cost = 100 },
            { label = "Flashlight",    weapon = "WEAPON_FLASHLIGHT",    cost = 80 },
            { label = "Carbine Rifle", weapon = "WEAPON_CARBINERIFLE",  cost = 80 },
        }
    },
}

-----------------------------------------------------------
-- Fallback Outfits (used when department has no custom outfits)
-----------------------------------------------------------

Config.Private.FallbackOutfits = {
    recruit = {
        short_sleeve = { label = "Short Sleeve", outfit = Outfits.short_sleeve },
        long_sleeve  = { label = "Long Sleeve",  outfit = Outfits.long_sleeve },
    },
    officer = {
        short_sleeve = { label = "Short Sleeve", outfit = Outfits.short_sleeve },
        long_sleeve  = { label = "Long Sleeve",  outfit = Outfits.long_sleeve },
    },
    sergeant = {
        short_sleeve = { label = "Short Sleeve", outfit = Outfits.short_sleeve },
        long_sleeve  = { label = "Long Sleeve",  outfit = Outfits.long_sleeve },
    },
    lieutenant = {
        short_sleeve = { label = "Short Sleeve", outfit = Outfits.short_sleeve },
        long_sleeve  = { label = "Long Sleeve",  outfit = Outfits.long_sleeve },
        swat         = { label = "SWAT",         outfit = Outfits.swat },
    },
    boss = {
        short_sleeve = { label = "Short Sleeve", outfit = Outfits.short_sleeve },
        long_sleeve  = { label = "Long Sleeve",  outfit = Outfits.long_sleeve },
        swat         = { label = "SWAT",         outfit = Outfits.swat },
    },
}
