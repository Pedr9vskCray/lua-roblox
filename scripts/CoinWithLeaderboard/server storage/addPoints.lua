-- get the parent object of the script
local coin = script.Parent

-- import player services
local players = game:GetService("Players")

-- sound effect
local sound = Instance.new("Sound", coin)
sound.SoundId = "rbxassetid://1091083826"
sound.Volume = 0.2

-- function to add points to the player
local function addPoints(obj)
	local character = obj.Parent
	local human = character:FindFirstChild("Humanoid")
	
	-- if touched by a player
	if human then
		-- to avoid additional collisions, tracks if the coin has already collided with the player
		if not coin:GetAttribute("Collided") then
			coin:SetAttribute("Collided", true)
			-- changes transparency and collide properties
			coin.Transparency = 1
			coin.CanCollide = false
			coin.CanTouch = false
			
			-- using the players service to find the right character and add points to the player's score
			local player = players:GetPlayerFromCharacter(character)
			-- local reference to the player's stats folder
			local ranking = player.leaderstats
			-- local reference to the player's money
			local money = ranking and ranking:FindFirstChild("CatMoney")
			
			-- if everything is correct, adds 1 to the player's money
			if ranking then
				money.Value = money.Value + 10
			end
			
			-- after adding the point to the player score, plays the audio and destroy the coin
			sound:Play()
			sound.Ended:Connect(function()
				coin:Destroy()
			end)
		end
	end
end

coin.Touched:Connect(addPoints)


