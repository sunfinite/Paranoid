d = {}
d['first'] = 1
d['second'] = 2
if 'first' in d:
    print('first in d')
else:
    print('first not in d')
del d['first']
if 'first' in d:
    print('first in d')
else:
    print('first not in d')
second = d['second']
print(second)
