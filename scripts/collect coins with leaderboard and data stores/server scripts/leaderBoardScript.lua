-- import players service
local players = game:GetService("Players")

-- import data store services
local datastore = game:GetService("DataStoreService")

-- create and configure leaderboard
local function rankingConfig(player)
	-- create ranking folder
	local ranking = Instance.new("Folder")
	-- create money value
	local money = Instance.new("IntValue")
	
	-- configure ranking folder
	ranking.Name = "leaderstats"
	ranking.Parent = player
	
	-- configure datastore
	local data = datastore:GetDataStore("PlayerMoney")
	local PlayerUserID = players:GetUserIdFromNameAsync(player.Name)
	
	-- load data
	local points = data:GetAsync(PlayerUserID) -- key is the player id
	
	-- configure money value
	money.Name = "CatMoney"
	money.Value = points
	money.Parent = ranking
end

-- conecct the function to the player added event
players.PlayerAdded:Connect(rankingConfig)


