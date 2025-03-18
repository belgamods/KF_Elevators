RegisterServerEvent('KF_Elevators:selectFloor')
AddEventHandler('KF_Elevators:selectFloor', function(floor, building)
    local floor = Config.Elevators[building][floor]
    SetEntityCoords(GetPlayerPed(source), floor.coords.x, floor.coords.y, floor.coords.z)
    SetEntityHeading(GetPlayerPed(source), floor.heading)
end)