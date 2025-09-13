local local1 = script.Parent
local local2 = script.Parent.Parent.local2

local function teleport(obj)
	local character = obj.Parent
	-- making sure we're not grabbing only one part of the character but him entirely
	local human = character:FindFirstChild("HumanoidRootPart")
	
	-- CFrame describes the 3D position and orientation of an object
	-- So we're changing the CFrame of the player to be the same as local2
	if human then
		-- the + Vector3.new(0, 5, 0) is to make sure the player is not stuck in the ground
		human.CFrame = CFrame.new(local2.Position + Vector3.new(0, 5, 0))
		
		-- Debugging
		local posStart = local2.CFrame.Position
		local posEnd = local1.CFrame.Position
		print("Teleported from: ", posEnd.x, posEnd.y, posEnd.z)
		print("Teleported to: ", posStart.x, posStart.y, posStart.z)
	end
	
end

local1.Touched:Connect(teleport)

