local function IsDriveByAllowed(vehicle)
    local vehicleName = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)):lower()

    if Config.UseWhitelist then
        for _, name in ipairs(Config.AllowedVehicles) do
            if vehicleName == name:lower() then
                return true
            end
        end
        return false
    else
        for _, name in ipairs(Config.BlockedVehicles) do
            if vehicleName == name:lower() then
                return false
            end
        end
        return true
    end
end

CreateThread(function()
    while true do
        Wait(0)
        local player = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(player, false)

        if vehicle and vehicle ~= 0 and not IsDriveByAllowed(vehicle) then
            -- Disable shooting from this vehicle only
            DisablePlayerFiring(player, true)
            DisableControlAction(0, 69, true)  -- INPUT_VEH_ATTACK
            DisableControlAction(0, 70, true)  -- INPUT_VEH_ATTACK2
            DisableControlAction(0, 92, true)  -- INPUT_VEH_PASSENGER_ATTACK
            DisableControlAction(0, 114, true) -- INPUT_VEH_FLY_ATTACK
            DisableControlAction(0, 257, true) -- INPUT_ATTACK2
            DisableControlAction(0, 331, true) -- INPUT_VEH_FLY_ATTACK2
        end
    end
end)
