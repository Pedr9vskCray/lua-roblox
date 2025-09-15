local button = script.Parent
local platform = script.Parent.Parent.platform

local function movePos(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")
	
	if human then
		-- Move the platform 5 studs in the Z direction everytime the function is called
		platform.Position = platform.Position + Vector3.new(0,0,5)
	end
end

button.Touched:Connect(movePos)

