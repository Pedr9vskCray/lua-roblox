local coin = script.Parent

-- sound effect
local sound = Instance.new("Sound", coin)
sound.SoundId = "rbxassetid://1508145469"
sound.Volume = 0.5

local function addPoints(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")
	
	if human then
		-- to avoid additional collisions, tracks if the coin has already collided with the player
		if not coin:GetAttribute("Collided") then
			coin:SetAttribute("Collided", true)
			-- changes transparency and collide properties
			coin.Transparency = 1
			coin.CanCollide = false
			coin.CanTouch = false
			-- if human adds +1 point
			if not character:GetAttribute("Points") then
				character:SetAttribute("Points", 1)
			else
				character:SetAttribute("Points", character:GetAttribute("Points") + 1)
			end
			-- after adding the point to the player score, print the total and destroy the coin
			print("Score: ", character:GetAttribute("Points"))
			-- waits for the sound to finish playing before destroying the coin
			sound:Play()
			sound.Ended:Connect(function()
				coin:Destroy()
			end)
		end
	end
end

coin.Touched:Connect(addPoints)
