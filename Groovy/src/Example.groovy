class User {
    final String name
    final int age
    final int salary

    User(String name, int age, int salary) {
        this.name = name
        this.age = age
        this.salary = salary
    }
}

def users = [
    new User("Alice", 25, 15000),
    new User("Bob", 30, 18000),
    new User("Charlie", 22, 16000),
    new User("David", 28, 15000),
    new User("Eva", 35, 25000),
    new User("Frank", 40, 20000),
    new User("Grace", 32, 22000),
    new User("Henry", 26, 16000),
    new User("Ivy", 23, 18000),
    new User("Jack", 29, 15000)
]

def result = users.stream()
    .findAll { it.age >= 25 }
    .collect { it.salary }
    .inject(200000) { acc, salary -> acc - salary }

println result
