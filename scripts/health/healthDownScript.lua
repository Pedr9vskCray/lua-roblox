local part = script.Parent
local damage = 5

local function reduceHp(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")
	
	if human then
		-- Setting the player's health to the value of the health variable
		human.BreakJointsOnDeath = false
		human.Health = human.Health - damage
	end
end

part.Touched:Connect(reduceHp)