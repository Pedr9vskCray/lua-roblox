local function giveJump(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")

	if human then
		human.UseJumpPower = true
		human.JumpPower = 150
	end
end

local function takeJump(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")

	if human then
		human.JumpPower = 50
	end
end

for key,value in pairs(game.Workspace:GetChildren()) do
	-- connect this script to the touch event of every part named "giveJump"
	if value.Name == "giveJump" then
		value.Touched:Connect(giveJump)
		-- connect this script to the touch event of every part named "takeJump"
	elseif value.Name == "takeJump" then
		value.Touched:Connect(takeJump)
	end

end
