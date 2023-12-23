struct User {
    name: String,
    age: i32,
    salary: i32,
}

impl User {
    fn new(name: &str, age: i32, salary: i32) -> User {
        User {
            name: name.to_string(),
            age,
            salary,
        }
    }
}

fn main() {
    let users = vec![
        User::new("Alice", 25, 15000),
        User::new("Bob", 30, 18000),
        User::new("Charlie", 22, 16000),
        User::new("David", 28, 15000),
        User::new("Eva", 35, 25000),
        User::new("Frank", 40, 20000),
        User::new("Grace", 32, 22000),
        User::new("Henry", 26, 16000),
        User::new("Ivy", 23, 18000),
        User::new("Jack", 29, 15000),
    ];

    let result = users
        .into_iter()
        .filter(|user| user.age >= 25)
        .map(|user| user.salary)
        .fold(200000, |acc, salary| acc - salary);

    println!("{}", result);
}
