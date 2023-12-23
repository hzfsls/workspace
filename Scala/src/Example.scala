class User(val name: String, val age: Int, val salary: Int)

object Example {
    def main(args: Array[String]): Unit = {
        val users: List[User] = List(
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
        )

        val result: Int = users
            .filter(user => user.age >= 25)
            .map(user => user.salary)
            .foldLeft(200000)((acc, salary) => acc - salary)

        println(result)
    }
}
