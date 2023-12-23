defmodule User do
  defstruct name: "", age: 0, salary: 0

  def new(name, age, salary) do
    %User{name: name, age: age, salary: salary}
  end
end

defmodule Example do
  def main do
    users = [
      User.new("Alice", 25, 15000),
      User.new("Bob", 30, 18000),
      User.new("Charlie", 22, 16000),
      User.new("David", 28, 15000),
      User.new("Eva", 35, 25000),
      User.new("Frank", 40, 20000),
      User.new("Grace", 32, 22000),
      User.new("Henry", 26, 16000),
      User.new("Ivy", 23, 18000),
      User.new("Jack", 29, 15000)
    ]

    result =
      users
      |> Enum.filter(&(&1.age >= 25))
      |> Enum.map(&(&1.salary))
      |> Enum.reduce(200000, &(&2 - &1))

    IO.puts(result)
  end
end

Example.main()