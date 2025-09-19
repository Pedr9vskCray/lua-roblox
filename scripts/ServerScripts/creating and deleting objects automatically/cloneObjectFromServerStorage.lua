-- first we need to call the server storage service
local storage = game:GetService("ServerStorage")

-- then we need to call the object we want to clone
-- for this to work we need to have a part named with the same name in the server storage -> "smallCube"
local part = storage.smallCube

-- now we'll create the function that will define a random color for the part
local function getColor()
	return Color3.fromRGB(math.random(100, 255), math.random(100, 255), math.random(100, 255))
end

-- now we'll create the function that will begin to clone the part in random positions

local function clonePart(color)
	-- cloning the part
	local newPart = part:Clone()
	
	-- defining its parent object
	newPart.Parent = game.Workspace
	
	-- chaging its color
	newPart.BrickColor = BrickColor.new(color)
	
	-- spawning the part in a random position
	newPart.Position = Vector3.new(math.random(200, 250), 5, math.random(200, 250))
	
	-- making the part fall
	newPart.Velocity = Vector3.new(0, 100, 0)
end

while true do
	-- calling the function
	clonePart(getColor())
	
	-- waiting 1 second
	wait(0.5)
end
