-- About Tables in Lua

jogadores = {"pedro", "maria", "felipe", "julia"}

-- Concatenating all elements in the Table

print(table.concat(jogadores, ", "))

-- Adding elements in an index

table.insert(jogadores,1,"luiz")

print(table.concat(jogadores, ", "))

-- Removing elements by index

table.remove(jogadores, 2)

print(table.concat(jogadores, ", "))

-- Lua's Tables numerical indexes start at 1, not at 0
-- But nothing is impeding you to add an element to index 0 tho its behavior is kind of weird
-- For example, the element at index 0 isn't shown when using the table.concat() command

print(jogadores[1])
jogadores[0] = "leandro"
print(table.concat(jogadores, ", "))
print(jogadores[0])