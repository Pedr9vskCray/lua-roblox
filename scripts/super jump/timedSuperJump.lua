local part = script.Parent

local superJump = 150 -- superjump power

local timer = 5 -- time in seconds

local nomalJump = 50 -- standard jump power

local function givePower(obj)
	local human = obj.Parent:FindFirstChild("Humanoid")
	
	if human then
		human.UseJumpPower = true -- essential
		
		-- only applies if not already with SuperJump
		if human.JumpPower < superJump then
			human.JumpPower = superJump
		
		
			-- set up the timer
			task.delay(timer, function()
			
				-- making sure the human is still alive
				if human and human.Parent then
					human.JumpPower = nomalJump
				end
			end)
		end
	end
end

part.Touched:Connect(givePower)