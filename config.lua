Config = {}

-- true  = only vehicles in Config.AllowedVehicles can drive-by
-- false = every vehicle can drive-by except those in Config.BlockedVehicles
Config.UseWhitelist = false

-- Used when Config.UseWhitelist = true
Config.AllowedVehicles = {
    'kuruma',
    'sultan',
}

-- Used when Config.UseWhitelist = false
Config.BlockedVehicles = {
    'ambulance',
    'firetruk',
}
