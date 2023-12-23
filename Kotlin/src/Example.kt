class User(val name: String, val age: Int, val salary: Int)

fun main() {
    val users = listOf(
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
    )

    val result = users
        .filter { it.age >= 25 }
        .map { it.salary }
        .fold(200000) { acc, salary -> acc - salary }

    println(result)
}
