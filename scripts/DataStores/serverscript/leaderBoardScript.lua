-- import players service
local players = game:GetService("Players")

-- create and configure leaderboard
local function rankingConfig(player)
	-- create ranking folder
	local ranking = Instance.new("Folder")
	-- create money value
	local money = Instance.new("IntValue")
	
	-- configure ranking folder
	ranking.Name = "leaderstats"
	ranking.Parent = player
	
	-- configure datastore service
	local datastore = game:GetService("DataStoreService")
	-- now we'll name how we want to store our data -> "PlayerGold"
	local goldstore = datastore:GetDataStore("PlayerGold")
	-- now we'll define a key for the player's gold
	local PlayerUserID = players:GetUserIdFromNameAsync(player.Name)

	-- with everything set we need to read the data we already have
	local points = goldstore:GetAsync(PlayerUserID)
	
	-- configure money value
	money.Name = "Money"
	money.Value = points
	money.Parent = ranking
end

-- connect the function to the player added event
players.PlayerAdded:Connect(rankingConfig)


