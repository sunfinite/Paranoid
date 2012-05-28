t = 0
a = 66
b = 24
while b!=0:
    t = b
    b = a % b
    a = t

print(a)
