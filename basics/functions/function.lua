-- basic functions syntax

local function double(number) -- function name(parameters)
    return number * 2
end

local function greetings(name)
    print("Welcome " .. name .. ", please come in.")
end

print(double(10))
greetings("maria")

-- multiple parameters and multiple returning values

local function endLevel(score, currentHp)
    bonus = score * 1.25
    health = currentHp + 30

    return bonus, health
end

player1 = {}
player1["score"], player1.health = endLevel(1400, 46) -- unpacking

print(player1.score, player1["health"])

