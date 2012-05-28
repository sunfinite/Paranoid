z=[]
z.append(1)
z.append(2)
z.append(3)
l = len(z)
print(l)
z = printList('hello', 1, z)
for item in z:
    print(item)

def printList(z, y, li):
    print("inside function")
    print(z)
    print(y)
    print(li[2])
    li.append(4)
    return li 

