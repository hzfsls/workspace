-module(example).
-export([start/0]).

-record(user, {name, age, salary}).

new_user(Name, Age, Salary) ->
    #user{name=Name, age=Age, salary=Salary}.

start() ->
    Users = [
        new_user("Alice", 25, 15000),
        new_user("Bob", 30, 18000),
        new_user("Charlie", 22, 16000),
        new_user("David", 28, 15000),
        new_user("Eva", 35, 25000),
        new_user("Frank", 40, 20000),
        new_user("Grace", 32, 22000),
        new_user("Henry", 26, 16000),
        new_user("Ivy", 23, 18000),
        new_user("Jack", 29, 15000)
    ],

    Result = lists:foldl(fun(User, Acc) ->
        case User#user.age >= 25 of
            true -> Acc - User#user.salary;
            false -> Acc
        end
    end, 200000, Users),

    io:format("~w~n", [Result]).