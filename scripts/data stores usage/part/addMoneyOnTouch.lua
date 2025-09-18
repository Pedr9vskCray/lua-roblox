-- import players service
local players = game:GetService("Players")

-- get the part
local part = script.Parent

-- debounce variable to avoid multiple triggers
debounce = true

local function addMoney(obj)
	-- object that touched the part
	local character = obj.Parent
	-- trying to find the first child of the object called "Humanoid"
	local human = character:FindFirstChild("Humanoid")
	
	-- if the object has a humanoid, then it's a player
	if human and debounce then
		debounce = false
		-- so we use the character to get the right player in the players service
		local player = players:GetPlayerFromCharacter(character)
		-- we'll need the UserID aswell
		local PlayerUserID = players:GetUserIdFromNameAsync(player.Name)
		-- local reference to the player's leaderstats
		local ranking = player.leaderstats
		-- local reference to the player's money
		-- if ranking == true and ranking:FindFirstChild("Money") then money == ranking.Money
		local money = ranking and ranking:FindFirstChild("Money")
		
		-- we'll also need to access the data store again
		local datastore = game:GetService("DataStoreService")
		local goldstore = datastore:GetDataStore("PlayerGold") -- SAME NAME AS BEFORE
		-- reading the data
		local points = goldstore:GetAsync(PlayerUserID) -- user ID is the key
		
		-- adding points to the player's money
		if points ~= nil then
			points = points + 10
		else
			points = 10
		end
		
		-- updating the data store
		goldstore:SetAsync(PlayerUserID, points)
		
		-- data stores are like hashmaps
		-- goldstore is a reference to the "PLayerGold" datastore
		-- goldstore[PlayerUserID] = points
		
		-- if ranking == true then money.Value += 1
		if ranking then
			money.Value = money.Value + 10
		end
	end
end

part.Touched:Connect(addMoney)