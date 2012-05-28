z=[]
z.append(1)
z.append(2)
z.append(3)
l = len(z)
print(l)
x = printList('hello', 1, z)
print(x)

def printList(z, y, li):
    print(z)
    print(y)
    print(li[2])
    print("inside funct")
    return 1

