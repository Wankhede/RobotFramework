# IF ELSE condition
# Requires : at the end of if statement and else statement
# Requires following indentation

a = 4
b = "Good Morning"

if b == "Good Morning":
    print("Greater")
    print("Condition matches")
    if a == 2:
        print("String Matches")
    else:
        print("String doesnt Match")
else:
    print("Lesser")
    print("Condition doesnt match")
print("Out of IF/ELSE Loop")

# FOR Loop condition
Z = [0, 1, 2, 3, 4, 5]
for i in Z:
    print(i * 2)
print("-------------------")

# sum of first 5 natural number
ZZ = [1, 2, 3, 4, 5]
sum = 0
for j in ZZ:
    sum = sum + j
print(sum)
print("---------------------")

# for loop with controlled increament
for k in range(0, 10, 3):
    print(k * 5)

print("----------------------")
# While loop

q = 2
while 7 > q > 0:
    print(q)
    q = q + 1
    if q == 4:
        print("Yaah!!!!")
    if q == 5:
        break
