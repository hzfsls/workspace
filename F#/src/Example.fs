type User(name: string, age: int, salary: int) =
    member val Name = name with get, set
    member val Age = age with get, set
    member val Salary = salary with get, set

let users =
    [
        User("Alice", 25, 15000)
        User("Bob", 30, 18000)
        User("Charlie", 22, 16000)
        User("David", 28, 15000)
        User("Eva", 35, 25000)
        User("Frank", 40, 20000)
        User("Grace", 32, 22000)
        User("Henry", 26, 16000)
        User("Ivy", 23, 18000)
        User("Jack", 29, 15000)
    ]

let result =
    users
    |> List.filter (fun user -> user.Age >= 25)
    |> List.map (fun user -> user.Salary)
    |> List.fold (fun acc salary -> acc - salary) 200000

printfn "%d" result