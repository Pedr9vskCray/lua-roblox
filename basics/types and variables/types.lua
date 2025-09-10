-- types of variables in lua

int = 10 -- Number
float = 5.5 -- Number

text = "good morning" -- String

bool = true -- Boolean
loob = false -- Boolean

-- Tables

players = {}
players.player1 = {name = "pedro", score = 1323, time = 32}
players[0] = "box"
players[1] = "car"
players[2] = "cellphone"

print("Nome do Jogador: " .. players["player1"]["name"]) -- String concat

-- Function

function double(number)
  temp = number * 2
  return temp
end

if players["player1"]["score"] ~= 25 then
    print(double(players["player1"]["time"]))
end

-- Local/Global

main = true -- Global
local center = false -- Local

-- Nil

test = ""
print(type(test))
test = 0
print(type(test))
test = false
print(type(test))
test = nil
print(type(test))