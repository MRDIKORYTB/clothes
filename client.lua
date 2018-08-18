_menuPool = NativeUI.CreatePool()
maskMenu = NativeUI.CreateMenu("Masques", "CHANGER DE MASQUE")
compMenu = NativeUI.CreateMenu("Vêtements", "CHANGER DE STYLE")
propMenu = NativeUI.CreateMenu("Accessoires", "CHANGER DE STYLE")
tenueMenu = NativeUI.CreateMenu("Garde robe", "CHANGER DE TENUE")
_menuPool:Add(maskMenu)
_menuPool:Add(compMenu)
_menuPool:Add(propMenu)
_menuPool:Add(tenueMenu)

_menuPool:MouseControlsEnabled(false)
_menuPool:ControlDisablingEnabled(false)

local firstSpawn = true

local masksLocations = {
	{x = -1336.41, y = -1278.91, z = 4.8571}
}

local clothesLocations = {
	{x = 4.76668, y = 6512.36, z = 31.8779},
	{x = 1693.93, y = 4822.86, z = 42.0631},
	{x = -1101.37, y = 2710.59, z = 19.1079},
	{x = 620.033, y = 2758.41, z = 42.0881},
	{x = 1196.68, y = 2710.26, z = 38.2237},
	{x = -3173.62, y = 1050.24, z = 20.8632},
	{x = -1450.23, y = -237.455, z = 49.8107},
	{x = -710.088, y = -152.831, z = 37.4151},
	{x = -163.447, y = -303.067, z = 39.7333},
	{x = 122.356, y = -217.412, z = 54.5578},
	{x = -1193.8, y = -775.193, z = 17.3282},
	{x = -822.332, y = -1073.55, z = 11.3281},
	{x = 425.526, y = -806.099, z = 29.4911},
	{x = 75.4353, y = -1392.96, z = 29.3762},
}

local accLocations = {
	{x = 1.74215, y = 6510.56, z = 31.879},
	{x = 1693.72, y = 4819.22, z = 42.0642},
	{x = -1098.35, y = 2712.41, z = 19.109},
	{x = 614.319, y = 2761.8, z = 42.0881},
	{x = 1200.27, y = 2709.61, z = 38.2237},
	{x = -3170.23, y = 1044.57, z = 20.8632},
	{x = -1453.53, y = -239.628, z = 49.8088},
	{x = -708.865, y = -156.506, z = 37.4151},
	{x = -161.354, y = -299.682, z = 39.7333},
	{x = 126.0, y = -223.006, z = 54.5578},
	{x = -1193.78, y = -768.691, z = 17.3189},
	{x = -818.964, y = -1072.3, z = 11.3292},
	{x = 424.899, y = -809.807, z = 29.4922},
	{x = 76.1107, y = -1389.36, z = 29.3772},
}

local tenueLocations = {
	{x = 3.81614, y = 6505.64, z = 31.8778},
	{x = 1698.87, y = 4818.08, z = 42.0631},
	{x = -1100.47, y = 2717.13, z = 19.1078},
	{x = 617.615, y = 2773.55, z = 42.0881},
	{x = 1201.93, y = 2714.4, z = 38.2226},
	{x = -3178.71, y = 1035.83, z = 20.8632},
	{x = -1447.4, y = -241.697, z = 49.8203},
	{x = -704.943, y = -151.544, z = 37.4151},
	{x = -167.797, y = -299.808, z = 39.7333},
	{x = 118.362, y = -232.272, z = 54.5578},
	{x = -1182.16, y = -765.105, z = 17.3266},
	{x = 429.727, y = -811.588, z = 29.4911},
	{x = -820.026, y = -1067.22, z = 11.3281},
	{x = 71.1235, y = -1387.63, z = 29.3761},
}

local referenceComp = {
	{id = 1, part = 'mask', part_texture = 'mask_texture'},
	{id = 3, part = 'gloves', part_texture = 'gloves_texture'},
	{id = 4, part = 'pants', part_texture = 'pants_texture'},
	{id = 5, part = 'bag', part_texture = 'bag_texture'},
	{id = 6, part = 'shoes', part_texture = 'shoes_texture'},
	{id = 8, part = 'shirt', part_texture = 'shirt_texture'},
	{id = 11, part = 'vest', part_texture = 'vest_texture'},
}

local referenceProp = {
	{id = 0, part = 'hat', part_texture = 'hat_texture'},
	{id = 1, part = 'glasses', part_texture = 'glasses_texture'},
	{id = 2, part = 'ears', part_texture = 'ears_texture'},
	{id = 6, part = 'bracelets', part_texture = 'bracelets_texture'},	
}

AddEventHandler('playerSpawned', function(spawn)
    if firstSpawn == true then
    	Wait(1000) -- Sinon erreur côté serveur : "attempt to index a nil value : user server.lua line 4"
        TriggerServerEvent("insertDatabase")
        TriggerServerEvent("getItems")
		-- Création du menu pour les vêtements
		Wait(5000) -- Sinon le menus charge avant le skin et puisqu'il dépend du skin ça casse tout
		local shirtSub = _menuPool:AddSubMenu(compMenu, "T-Shirts")
		local vestSub = _menuPool:AddSubMenu(compMenu, "Vestes")
		local pantsSub = _menuPool:AddSubMenu(compMenu, "Pantalons")
		local chausSub = _menuPool:AddSubMenu(compMenu, "Chaussures")
		local sacSub = _menuPool:AddSubMenu(compMenu, "Sacs")
		local begSub = _menuPool:AddSubMenu(compMenu, "Bras et gants")
		createMenu(shirtSub, 8, 'component')
		createMenu(vestSub, 11, 'component')
		createMenu(pantsSub, 4, 'component')
		createMenu(chausSub, 6, 'component')
		createMenu(sacSub, 5, 'component')
		createMenu(begSub, 3, 'component')

		-- Création du menu pour les masques
		createMenu(maskMenu, 1, 'component')

		-- Création du menu pour les accessoires
		local chapSub = _menuPool:AddSubMenu(propMenu, "Chapeaux")
		local lunSub = _menuPool:AddSubMenu(propMenu, "Lunettes")
		local oreSub = _menuPool:AddSubMenu(propMenu, "Oreilles")
		local bracSub = _menuPool:AddSubMenu(propMenu, "Bracelets")
		createMenu(chapSub, 0, 'prop')
		createMenu(lunSub, 1, 'prop')
		createMenu(oreSub, 2, 'prop')
		createMenu(bracSub, 6, 'prop')

		-- Création du menu pour la garde robe
		local loadSub = _menuPool:AddSubMenu(tenueMenu, "Charger une tenue")
		local saveSub = _menuPool:AddSubMenu(tenueMenu, "Sauvegarder une tenue")
		createMenuLoad(loadSub)
		createMenuSave(saveSub)

		-- Général
		createBlips()
	    firstSpawn = false
    else
    	TriggerServerEvent("getItems")
    end
end)

RegisterNetEvent('returnItems')
AddEventHandler('returnItems', function(result)
	setSkin(result)
	setItems(result)
end)

RegisterNetEvent('errorLoading')
AddEventHandler('errorLoading', function()
	sendNotification("~r~Il n'y a pas de tenue là.")
end)

RegisterNetEvent('setOutfit')
AddEventHandler('setOutfit', function(result)
	setItems(result)
end)

function setSkin(items)
	local skinHash = GetHashKey(items[1].skin)
	RequestModel(skinHash)
	while not HasModelLoaded(skinHash) do
		Wait(100)
	end
	SetPlayerModel(PlayerId(), skinHash)
end

function setItems(items)
	local player = GetPlayerPed(-1)
	SetPedComponentVariation(player, 1, tonumber(items[1].mask), tonumber(items[1].mask_texture), 0)
	SetPedComponentVariation(player, 8, tonumber(items[1].shirt), tonumber(items[1].shirt_texture), 0)
	SetPedComponentVariation(player, 11, tonumber(items[1].vest), tonumber(items[1].vest_texture), 0)
	SetPedComponentVariation(player, 3, tonumber(items[1].gloves), tonumber(items[1].gloves_texture), 0)
	SetPedComponentVariation(player, 4, tonumber(items[1].pants), tonumber(items[1].pants_texture), 0)
	SetPedComponentVariation(player, 6, tonumber(items[1].shoes), tonumber(items[1].shoes_texture), 0)
	SetPedComponentVariation(player, 5, tonumber(items[1].bag), tonumber(items[1].bag_texture), 0)

	SetPedPropIndex(player, 0, tonumber(items[1].hat), tonumber(items[1].hat_texture), 0)
	SetPedPropIndex(player, 1, tonumber(items[1].glasses), tonumber(items[1].glasses_texture), 0)
	SetPedPropIndex(player, 2, tonumber(items[1].ears), tonumber(items[1].ears_texture), 0)
	SetPedPropIndex(player, 6, tonumber(items[1].bracelets), tonumber(items[1].bracelets_texture), 0)
end

function getDist(locations)
	local player = GetPlayerPed(-1)
	for i = 1,#locations do
		local playerCoords = GetEntityCoords(player, 0)
		local dist = GetDistanceBetweenCoords(locations[i].x, locations[i].y, locations[i].z,  playerCoords["x"], playerCoords["y"], playerCoords["z"], true)
		if dist < 20 then
			DrawMarker(23, locations[i].x, locations[i].y, locations[i].z-1, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 51, 204, 255, 150, 0, 0, 2, 0, 0, 0, 0)
		end
		if dist < 1.5 then
			return true
		end
	end
end

function addBlip(name, sprite, colour, x, y, z)
	blip = AddBlipForCoord(x, y ,z)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, colour)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
	EndTextCommandSetBlipName(blip)
end

function createBlips()
	for i = 1,#masksLocations do
		addBlip('~b~Magasins de masques', 362, 26, masksLocations[i].x, masksLocations[i].y, masksLocations[i].z)
	end

	for i = 1,#clothesLocations do
		addBlip('Magasins de vêtements', 73, 26, clothesLocations[i].x, clothesLocations[i].y, clothesLocations[i].z)
	end
end

function sendCommand(txt)
	SetTextComponentFormat("STRING")
    AddTextComponentString(txt)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function sendNotification(txt)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(txt)
	DrawNotification(true, true)
end

function createMenu(menu, id, type)
	local nbrModel = {}
	local player = GetPlayerPed(-1)
	if type == 'component' then
    	for i = 0, GetNumberOfPedDrawableVariations(player, id) do nbrModel[i] = i end
    elseif type == 'prop' then
    	for i = 0, GetNumberOfPedPropDrawableVariations(player, id) do nbrModel[i] = i end
    end
    local nbrCoul = {}
    for i = 0, 30 do nbrCoul[i] = i end

    local component = 0
    local texture = 0

	local sliderModel = NativeUI.CreateSliderItem("Modèle", nbrModel, 1, "Choisissez le modèle du vêtement.")
	local sliderCoul = NativeUI.CreateListItem("Couleur", nbrCoul, 1, "Choisissez la couleur du vêtement, attention certaines couleurs ne sont pas disponibles !")
	local buttonVal = NativeUI.CreateItem("~g~Valider", "Validez le choix de votre vêtement et passez à la caisse !")

	menu:AddItem(sliderModel)
	menu:AddItem(sliderCoul)
	menu:AddItem(buttonVal)

	-- La slider pour faire défiller les modèles
	menu.OnSliderChange = function(sender, item, index)
		local player = GetPlayerPed(-1)
		component = index
		if type == 'component' then
			SetPedComponentVariation(player, id, component, 0, 0)
		elseif type == 'prop' then
			SetPedPropIndex(player, id, component, 0, 0)
		end
	end

	-- La liste des couleurs (que l'on actualise pas pour être plus RAM efficient même si on est moins USER FRIENDLY c'est pas si grave)
	menu.OnListChange = function(sender, item, index)
		local player = GetPlayerPed(-1)
		texture = index-1
		if type == 'component' then
			SetPedComponentVariation(player, id, component, texture, 0)
		elseif type == 'prop' then
			SetPedPropIndex(player, id, component, texture, 0)
		end
	end

	-- Le bouton de validation
	buttonVal.Activated = function()
		local player = GetPlayerPed(-1)
		sendNotification('~b~Vous avez bien acheté le vêtement' .. ' n°' .. component .. ' de la couleur n°' .. texture+1)
		if type == 'component' then
			for i = 1,#referenceComp do
				if id == referenceComp[i].id then
					local toSave = {part = referenceComp[i].part, value = component, part_texture = referenceComp[i].part_texture, value_texture = texture}
					TriggerServerEvent('saveItems', toSave)
				end
			end
		elseif type == 'prop' then
			for i = 1,#referenceProp do
				if id == referenceProp[i].id then
					local toSave = {part = referenceProp[i].part, value = component, part_texture = referenceProp[i].part_texture, value_texture = texture}
					TriggerServerEvent('saveItems', toSave)
				end
			end
		end
	end
end

function createMenuLoad(menu)
	for i = 1,5 do
		local buttonTenue = NativeUI.CreateItem("Tenue n°"..i, "Choisir cette tenue pour se changer.")
		menu:AddItem(buttonTenue)
		buttonTenue.Activated = function()
			TriggerServerEvent('loadOutfit',i)
		end
	end
end

function createMenuSave(menu)
	for i = 1,5 do
		local buttonEmpl = NativeUI.CreateItem("Emplacement n°"..i, "Sauvegarder la tenue actuelle sur cet emplacement.")
		menu:AddItem(buttonEmpl)
		buttonEmpl.Activated = function()
			TriggerServerEvent('saveOutfit',i)
		end
	end
end

-- Thread masques
Citizen.CreateThread(function()
	while true do
		Wait(10)
		if getDist(masksLocations) then
			sendCommand('Appuyez sur ~INPUT_CONTEXT~ pour ~b~acheter des masques.')
			if IsControlJustReleased(1, 51) then
				maskMenu:Visible(not maskMenu:Visible())
			end
		end
	end
end)

-- Thread vêtement
Citizen.CreateThread(function()
	while true do
		Wait(10)
		if getDist(clothesLocations) then
			sendCommand('Appuyez sur ~INPUT_CONTEXT~ pour ~b~acheter des vêtements.')
			if IsControlJustReleased(1, 51) then
				compMenu:Visible(not compMenu:Visible())
			end
		end
	end
end)

-- Thread accessoires
Citizen.CreateThread(function()
	while true do
		Wait(10)
		if getDist(accLocations) then
			sendCommand('Appuyez sur ~INPUT_CONTEXT~ pour ~b~acheter des accessoires.')
			if IsControlJustReleased(1, 51) then
				propMenu:Visible(not propMenu:Visible())
			end
		end
	end
end)

-- Thread tenues
Citizen.CreateThread(function()
	while true do
		Wait(10)
		if getDist(tenueLocations) then
			sendCommand('Appuyez sur ~INPUT_CONTEXT~ pour ~b~changer de tenue.')
			if IsControlJustReleased(1, 51) then
				tenueMenu:Visible(not tenueMenu:Visible())
			end
		end
	end
end)

-- Thread affichage menus
Citizen.CreateThread(function()
	while true do
		Wait(0)
		_menuPool:ProcessMenus()
	end
end)