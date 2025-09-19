-- this script is supposed to be in the ServerScriptService
-- its function is to give the player super jump when they touch one of the parts named "jump"

local part = script.Parent
local superJump = 150

local function givePower(obj) 
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")
	
	if human then
		human.UseJumpPower = true
		human.JumpPower = superJump
	end
	
end

-- apply this script for every children of workspace that is named "jump"
for key,value in pairs(game.Workspace:GetChildren()) do
	if value.Name == "jump" then
		value.Touched:Connect(givePower)
	end
end
