class Car:

    def __init__(self, m):
        self.model = m

    def __str__(self):
        return 'The make is {}'.format(self.model)

class Paintjob(Car): #inheret from

    def __init__(self, m, col): #invoke parent class method
        super().__init__(m) #super = parent
        self.colorName = col #additional attrributes

    def color(self, c):
        return 'The color you picked is {}'.format(c)

    def __str__(self):
        return 'overriden method' #override

c1 = Car('Kia')
print(c1)

c2 = Paintjob('Renault', 'Yellow')
print(c2)
col = c2.color('White')
print(col)
print(c2)
print(c2.colorName)
