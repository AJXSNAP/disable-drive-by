# disable-drive-by
Disables drive-by shooting from vehicles, configurable per vehicle in `config.lua`.

By default every vehicle can drive-by except the ones listed in `Config.BlockedVehicles`.
Set `Config.UseWhitelist = true` to flip it around: only vehicles listed in
`Config.AllowedVehicles` can drive-by, everything else is blocked.

Vehicle names use the vehicle's spawn name (model name), e.g. `kuruma`, `sultan`, `ambulance`.

Works With:
QB-Core

QBX (Qbox)

ESX
