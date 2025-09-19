local part = script.Parent

local superJump = 150

local normalJump = 50

local function changePower(obj)
	local character = obj.Parent -- makes it easier to reference the character
	local human = character:FindFirstChild("Humanoid")
	
	if human then
		human.UseJumpPower = true -- makes sure we're using the JumpPower
		
		if not character:GetAttribute("GotSuperJump") then -- if they don't have super jump
			human.JumpPower = superJump
			character:SetAttribute("GotSuperJump", true) -- tracks that they now have it
			part.Color = Color3.fromRGB(138,43,226)
		else
			human.JumpPower = normalJump
			character:SetAttribute("GotSuperJump", false)
			part.Color = Color3.fromRGB(170,85,0)
		end
	end
end

part.Touched:Connect(changePower)