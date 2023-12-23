#include <iostream>
#include <vector>
#include <algorithm>
#include <ranges>

using namespace std;

class User {
public:
    string name;
    int age;
    int salary;

    User(const string& name1, int age1, int salary1)
        : name(name1), age(age1), salary(salary1) {}
};

int main() {
    vector<User> users = {
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
    };

    int result = ranges::fold_left(
        users | views::filter([](const User& user) { return user.age >= 25; })
        | views::transform([](const User& user) { return user.salary; }),
        200000, [](int acc, int salary) { return acc - salary; }
    );

    cout << result << endl;

    return 0;
}
