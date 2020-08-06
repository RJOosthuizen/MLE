l = ['Africa', 'Belgium']

class Country:

    def __init__(self, n):
        self.name = n

    def getName(self):
        return self.name

    def __str__(self):
        return 'The country is {}.'.format(self.name)

countries = [Country(item) for item in l]

print(countries)

print([country.getName() for country in countries])

c1 = Country('SA')

print(c1)
