using System;
using System.Collections.Generic;
using System.Linq;

class User
{
    public string Name { get; set; }
    public int Age { get; set; }
    public int Salary { get; set; }

    public User(string name, int age, int salary)
    {
        Name = name;
        Age = age;
        Salary = salary;
    }
}

class Program
{
    static void Main()
    {
        List<User> users = new List<User>
        {
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
        };

        int result = users
            .Where(user => user.Age >= 25)
            .Select(user => user.Salary)
            .Aggregate(200000, (acc, salary) => acc - salary);
        
        Console.WriteLine(result);
    }
}
