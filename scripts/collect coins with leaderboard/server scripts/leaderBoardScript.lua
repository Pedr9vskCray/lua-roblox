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
	
	-- configure money value
	money.Name = "CatMoney"
	money.Value = 0
	money.Parent = ranking
end

-- conecct the function to the player added event
players.PlayerAdded:Connect(rankingConfig)


