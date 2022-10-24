lib.callback.register('ba_zones-sv:switchBucket', function(source, id, isPedInAnyVeh, passengers)
	local veh = GetVehiclePedIsIn(GetPlayerPed(source), false)
	local driverServerId = GetPedInVehicleSeat(veh, -1)

	if isPedInAnyVeh then
		SetPlayerRoutingBucket(driverServerId, id)
		for i,v in ipairs(passengers) do
			if tonumber(v.serverId) ~= 0 then
				if tonumber(v.serverId) ~= source then
					if GetPlayerName(tonumber(v.serverId)) then
						SetPlayerRoutingBucket(v.serverId, id)
					end
				end
			end
		end
		SetEntityRoutingBucket(veh, id)
		--exports['pma-voice']:updateRoutingBucket(source, id)
	else
		SetPlayerRoutingBucket(source, id)
		--exports['pma-voice']:updateRoutingBucket(source, id)
	end

	return true
end)