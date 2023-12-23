class User {
    name: string;
    age: number;
    salary: number;

    constructor(name: string, age: number, salary: number) {
        this.name = name;
        this.age = age;
        this.salary = salary;
    }
}

const users: User[] = [
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
];

const result: number = users
    .filter((user: User) => user.age >= 25)
    .map((user: User) => user.salary)
    .reduce((acc: number, salary: number) => acc - salary, 200000);

console.log(result);