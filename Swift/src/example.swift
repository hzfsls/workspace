import Foundation

class User {
    let name: String
    let age: Int
    let salary: Int
    
    init(_ name: String, _ age: Int, _ salary: Int) {
        self.name = name
        self.age = age
        self.salary = salary
    }
}

let users = [
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

let result = users
    .filter { $0.age >= 25 }
    .map { $0.salary }
    .reduce(200000) { $0 - $1 }

print(result)
