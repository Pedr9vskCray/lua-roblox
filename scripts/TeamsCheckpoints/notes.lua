--[[
To create a Team in Roblox, add a Team object to the Teams folder

Properties of Note:

- Team.Name -> (The name of your Team)
- Team.TeamColor -> (The most important property and what essentially differentiates one Team from another)
]]

--

--[[
Roblox automatically balance joining players in different Teams, if that's a behavior you don't want/need
You can turn it off and roblox will no longer assign this specific Team to any players without specific conditions

Properties of Note:

- Team.AutoAssignable -> (If true Roblox with balance all joining players into the Teams with this property = true)
]]

-- 

--[[
Spawns can be associated with different Teams and when a player dies, they'll respawn in spawns associated with their Team

Properties of Note:

- Spawn.TeamColor -> (Defines which team this spawn belongs to)
]]

--

--[[
Players can change Teams when they touch another Team's spawn, this can be used to make easy Checkpoints

Properties of Note:

- Spawn.AllowTeamChangeOnTouch -> (If true, whenever a player touches this spawn, they'll change Teams)
]]

--

--[[
Neutral players don't have a Team assigned to them
Neutral players can use spawns with the Neutral property set to true even if they don't belong in the Spawn's Team
But if the Neutral property is set to false, Neutral players are blocked from using that spawn and so is everyone else not in that Team

Properties of Note:

- Team.Neutral -> (If true, Neutral players can use this spawn)
- Player.Neutral -> (If true, The player is Neutral and don't have a Team)
- Player.Team -> (Can be used in scripts to check/change the Player Team manually, if Player.Neutral is true than Player.Team is nil)
]]