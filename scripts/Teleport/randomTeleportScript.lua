local part = script.Parent

local function teleport(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("HumanoidRootPart")
	
	if human then
		local partPos = part.CFrame.Position
		local newPos = Vector3.new(math.random(-100, 100), partPos.y + 5, math.random(-100, 100))
		-- Changing the CFrame of the humanoid(player) to the new random position
		human.CFrame = CFrame.new(newPos)
		-- Debugging
		print("Teleported to: ", newPos.x, newPos.y, newPos.z)
	end
end

part.Touched:Connect(teleport)