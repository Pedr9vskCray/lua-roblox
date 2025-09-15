local part = script.Parent
local heal = 5

local function healHp(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")

	if human then
		-- Setting the player's health to the value of the health variable
		human.BreakJointsOnDeath = false
		human.Health = human.Health + heal
	end
end

part.Touched:Connect(healHp)