-- grabbing the parent object

local part = script.Parent -- In this case, a part (Platform)

-- setting the variable that controls the jump power

local powerJump = 150

-- setting up the function that will be called when the part is touched

local function givePower(obj)
	-- looking for childs of the object that are humanoids
	local human = obj.Parent:FindFirstChild("Humanoid")
	if human then
		-- if a humanoid is found, set the jump power
		human.UseJumpPower = true -- essential because newer rigs use Humanoid.JumpHeight so UseJumpPower is turned off by default
		human.JumpPower = powerJump
	end
end

-- now we need to connect the function to the touch event

part.Touched:Connect(givePower)