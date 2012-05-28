first = 0
second = 1
lists = []

for i in range(0,10):
	temp = 0
	temp = first
	first = second
	second = second + temp
	lists.append(temp)

l = len(lists)
print( "fibonacci no.s generated:")
print(l) 

for item in lists:
	print(item)
