import functools

class User:
    def __init__(self, name, age, salary):
        self.name = name
        self.age = age
        self.salary = salary

users = [
    User("Alice", 25, 15000),
    User("Bob", 30, 18000),
    User("Charlie", 22, 16000),
    User("David", 28, 15000),
    User("Eva", 35, 25000),
    User("Frank", 40, 20000),
    User("Grace", 32, 22000),
    User("Henry", 26, 16000),
    User("Ivy", 23, 18000),
    User("Jack", 29, 15000)
]

result = functools.reduce(lambda acc, salary: acc - salary, 
        map(lambda user: user.salary,
        filter(lambda user: user.age >= 25, users)), 
        200000)

print(result)
