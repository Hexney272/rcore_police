SWebhook = ""

ServerConfig = {
    Database = {
        ESX = 'owned_vehicles', -- This is default table when you running es_extended for owned_vehicles, you can change it customized structure.
        QBCORE = 'player_vehicles', -- This is default table when you running QBCore/QBox for player_vehicles, you can change it customized structure.
    },

    Image = {
        Service = Images.NONE, -- Options: "Images.FIVEMANAGE", "Images.FIVEMERR"
        ApiKey = "", -- Your API KEY from fivemerr/fivemanage
        Settings = {
            encoding = "webp",
            maxWidth = 1920,
            maxHeight = 1080,
            quality = 0.6
        },
        CustomConfig = {
            url = "",
            authType = "header"
        }
    }
}
