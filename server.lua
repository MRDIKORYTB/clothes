RegisterServerEvent('insertDatabase') -- Pour la toute première connection
AddEventHandler('insertDatabase', function()
	TriggerEvent('es:getPlayerFromId', source, function(user)
		local player = user.getIdentifier()
		local result = MySQL.Sync.fetchAll("SELECT * FROM user_clothes WHERE identifier = @ply",{['@ply'] = player})
		if result[1] == nil then
		 	MySQL.Async.execute("INSERT INTO user_clothes (identifier) VALUES (@identifier)",{['@identifier'] = player})
		end
	end)
end)

RegisterServerEvent('saveItems') -- On sauvegarde la partie voulue à partir du tableau ex: toSave = {part = 'hat', part_texture = 'hat_texture', value = 10, value_texture = 2}
AddEventHandler('saveItems', function(toSave)
	TriggerEvent('es:getPlayerFromId', source, function(user)
		local player = user.getIdentifier()
		MySQL.Async.execute("UPDATE user_clothes SET " .. toSave.part .. " = @value, " .. toSave.part_texture .. " = @value_texture WHERE identifier = @ply",{['@value'] = toSave.value, ['@value_texture'] = toSave.value_texture, ['@ply'] = player})
	end)
end)

RegisterServerEvent('getItems') -- On récupère les items dans la BDD et on les renvois
AddEventHandler('getItems', function()
	TriggerEvent('es:getPlayerFromId', source, function(user)
		local player = user.getIdentifier()
		local result = MySQL.Sync.fetchAll("SELECT * FROM user_clothes WHERE identifier = @ply", {['@ply'] = player})
		TriggerClientEvent('returnItems', source, result)
	end)
end)

RegisterServerEvent('loadOutfit') -- On charge la tenue sauvegardée à l'emplacement i et on le place dans la BDD de la tenue actuelle
AddEventHandler('loadOutfit', function(id)
	TriggerEvent('es:getPlayerFromId', source, function(user)
		local player = user.getIdentifier()
		local result = MySQL.Sync.fetchAll("SELECT * FROM saved_clothes" .. id .. " WHERE identifier = @ply",{['@ply'] = player})
		if result[1] == nil then
			TriggerClientEvent('errorLoading', source)
		else
			MySQL.Sync.execute("DELETE FROM user_clothes WHERE identifier = @ply", {['@ply'] = player})
			MySQL.Sync.execute("INSERT INTO user_clothes SELECT * FROM saved_clothes" .. id .. " WHERE identifier = @ply", {['@ply'] = player})
			TriggerClientEvent('setOutfit', source, result)
		end
	end)
end)

RegisterServerEvent('saveOutfit') -- On sauvegarde sur l'emplacement de la tenue
AddEventHandler('saveOutfit', function(id)
	TriggerEvent('es:getPlayerFromId', source, function(user)
		local player = user.getIdentifier()
		local weared = MySQL.Sync.fetchAll("SELECT * FROM user_clothes WHERE identifier = @ply", {['@ply'] = player})
		local result = MySQL.Sync.fetchAll("SELECT * FROM saved_clothes" .. id .. " WHERE identifier = @ply", {['@ply'] = player})
		if result[1] == nil then
			MySQL.Sync.execute("INSERT INTO saved_clothes" .. id .. " SELECT * FROM user_clothes WHERE identifier = @ply", {['@ply'] = player})
		else
			MySQL.Sync.execute("DELETE FROM saved_clothes" .. id .. " WHERE identifier = @ply", {['@ply'] = player})
			MySQL.Sync.execute("INSERT INTO saved_clothes" .. id .. " SELECT * FROM user_clothes WHERE identifier = @ply", {['@ply'] = player})
		end
	end)
end)