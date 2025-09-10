-- while loop

local count = 3

while (count ~= 0) do
    print(count)
    count = count - 1
end

-- for loop

for i=10,0,-1 do -- (start,stop,step)
    print(i)
end

-- repeat loop

local age = 3

repeat
    print(age)
    age = age - 1
until(age == 0)