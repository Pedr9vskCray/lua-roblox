local part = script.Parent
local speed = 16

local function speedDown(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")

	if human then
		-- Setting the player's speed to the value of the speed variable
		human.WalkSpeed = speed
	end
end

part.Touched:Connect(speedDown)

