package main

import "fmt"

type User struct {
    name   string
    age    int
    salary int
}

func NewUser(name string, age, salary int) *User {
    return &User{name, age, salary}
}

func main() {
    users := []*User{
        NewUser("Alice", 25, 15000),
        NewUser("Bob", 30, 18000),
        NewUser("Charlie", 22, 16000),
        NewUser("David", 28, 15000),
        NewUser("Eva", 35, 25000),
        NewUser("Frank", 40, 20000),
        NewUser("Grace", 32, 22000),
        NewUser("Henry", 26, 16000),
        NewUser("Ivy", 23, 18000),
        NewUser("Jack", 29, 15000),
    }

    result := 200000
    for _, user := range users {
        if user.age >= 25 {
            result -= user.salary
        }
    }

    fmt.Println(result)
}