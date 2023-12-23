type user = {
  name : string;
  age : int;
  salary : int;
}

let new_user name age salary =
  { name; age; salary }

let users =
  [
    new_user "Alice" 25 15000;
    new_user "Bob" 30 18000;
    new_user "Charlie" 22 16000;
    new_user "David" 28 15000;
    new_user "Eva" 35 25000;
    new_user "Frank" 40 20000;
    new_user "Grace" 32 22000;
    new_user "Henry" 26 16000;
    new_user "Ivy" 23 18000;
    new_user "Jack" 29 15000;
  ]

let result =
  users
  |> List.filter (fun user -> user.age >= 25)
  |> List.map (fun user -> user.salary)
  |> List.fold_left (fun acc salary -> acc - salary) 200000

let () = print_int result; print_newline ()