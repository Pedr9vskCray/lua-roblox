-- calling the debris service
local Debris = game:GetService("Debris")

while true do
	wait(0.2)
	-- list of objects of interest
	objects = {}
	-- getting the parts in the workspace
	for key,value in pairs(game.Workspace:GetChildren()) do
		if value.Name == "smallCube" then
			table.insert(objects, value)
		end
	end
	-- adding the parts to the debris service
	-- #objects is the number of objects in the table objects
	Debris:AddItem(objects[math.random(#objects)], 1)
end
