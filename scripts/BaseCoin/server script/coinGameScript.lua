local debris = game:GetService("Debris")
local storage = game:GetService("ServerStorage")

local coin = storage.Coin

local function cloneCoin()
	local newCoin = coin:Clone()
	
	newCoin.Parent = game.Workspace
	
	newCoin.Position = Vector3.new(math.random(50, 100), 5, math.random(50, 100))
	
	debris:AddItem(newCoin, 10)
end

while true do
	wait(1)
	
	cloneCoin()
end