-- import players service
local players = game:GetService("Players")

-- get the part
local part = script.Parent

local function addMoney(obj)
	-- object that touched the part
	local character = obj.Parent
	-- trying to find the first child of the object called "Humanoid"
	local human = character:FindFirstChild("Humanoid")
	
	-- if the object has a humanoid, then it's a player
	if human then
		-- so we use the character to get the right player in the players service
		local player = players:GetPlayerFromCharacter(character)
		-- local reference to the player's leaderstats (ranking folder)
		local ranking = player.leaderstats
		-- local reference to the player's money
		-- if ranking == true and ranking:FindFirstChild("Money") == true then money == ranking.Money
		local money = ranking and ranking:FindFirstChild("Money")
		-- if ranking == true then money.Value += 1
		if ranking then
			money.Value = money.Value + 1
		end
	end
end

part.Touched:Connect(addMoney)