struct User
    name::String
    age::Int
    salary::Int
end

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

result = users |>
    x -> filter(user -> user.age >= 25, x) |>
    x -> map(user -> user.salary, x) |>
    x -> reduce((acc, salary) -> acc - salary, x, init=200000)

println(result)
