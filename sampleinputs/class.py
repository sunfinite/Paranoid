class A:
    def __init__(self):
        print('In constructor')
        self.a = 42

    def b(self):
        print(self.a)

a = A() 
a.b()
