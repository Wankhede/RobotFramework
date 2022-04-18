print("Hello")

# This is how you write comments
a = 3
print(a)
Str = "this is Swapnil"
print(Str)
z = 35 + 5j
print(z)  # Data type of z is complex due to adding character with int
print(type(z))
a, b, c = 5, 6.5, "Hello World"  # to declare diff data type variables separate by spaces
print("Value is ", a, b)  # to concatenate string with int
print("{} {}".format("Value should be", a))  # to concatenate string with int using different method
print(b)
print(c)
print(type(b), type(a), type(c))  # to check the data types of the declared variables

# List
L1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]  # This is how we create List, this is slightly different from Tupple
L2 = ["A", "B", "C", "D", "E"]
L3 = ["This", "Is", "Total", "Rubbish"]
L4 = ["This is", 5, 6.5, True]
print(L1)
print(L2)
print(L3)
print(L4)
print(L1[-2], L2[2])
print(L1[0:4])
L1.insert(0, "First")
print(L1)
L1.append("LAST")
print(L1)
L1[0] = "fff"
print(L1)
del L1[0]
print(L1)
print(L1[0], L1[5])
print(L2[0], L2[3])
print(L3[0], L3[2])
print(L4[0], L4[3])

# Tupple
T1 = (1, 2, 3, "Hi", "a", "b")
print(T1)
# del T1[0]                                #Tupple doesn't support item deletion, slightly diff from List
# T1[1] = "Swap-nil"                       #Tupple doesn't support item assignment
print(T1)

# Dictionary                                #works as Key: Value pair
D1 = {1: "This", "h": "Is", 3: "Sparta"}
print(D1)
print(D1["h"])                               #This works as Key Value pair not as index

# To create a new dictionary
D2 = {}
D2["first"] = "I"
D2["second"] = "Love"
D2["third"] = "India"
print(D2)
print(D2["second"])