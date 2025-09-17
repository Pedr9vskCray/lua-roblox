import math

t = 0 # input value for the math.sin() function to generate a number between (-1, 1)
speed = 2 # how fast the values oscilates between(-1, 1)

for i in range(1, 50):
    t = t + i/100 * speed
    print(i, " -> ", math.sin(t))