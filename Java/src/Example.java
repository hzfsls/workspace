import java.util.*;

class User {
    public final String name;
    public final int age;
    public final int salary;

    public User(String name, int age, int salary) {
        this.name = name;
        this.age = age;
        this.salary = salary;
    }
}

public class Example {
    public static void main(String[] args) {
        List<User> users = List.of(
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
        );

        int result = users.stream()
            .filter(user -> user.age >= 25)
            .map(user -> user.salary)
            .reduce(200000, (acc, salary) -> acc - salary);

        System.out.println(result);
    }
}
