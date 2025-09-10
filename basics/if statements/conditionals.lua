-- if statements syntax

local time = 14
local playerIsAlive = true
local bossIsAlive = true

if (time < 0 and bossIsAlive == true) or playerIsAlive == false then 
    print("game over.")
elseif time > 0 and bossIsAlive == false and playerIsAlive == true then 
    print("you win!")
else 
    print("draw, try again?")
end 

-- if
-- elif
-- else
-- end
