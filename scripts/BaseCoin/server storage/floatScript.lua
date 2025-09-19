local coin = script.Parent

-- math.sin generate numbers between (-1, 1) based on an input
-- if these inputs are smooth and follow a pattern, so will the output of the function

local amplitude = 2 -- multiplies the output of the math.sin() function
-- the amplitude essentially means the math.sin() function now generates values between (-2, 2)
local baseY = coin.Position.Y -- the coin's base height and the middle point of the animation
local speed = 4 -- how fast the values oscilates between (-1, 1)
local t = 0 -- input value for the math.sin() function to generate a number between (-1, 1)

while true do
	wait(0.01)
	t = t + 0.01 * speed

	coin.Position = Vector3.new(
		coin.Position.X,
		baseY + math.sin(t) * amplitude,
		coin.Position.Z
	)
end
