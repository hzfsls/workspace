class User
    attr_accessor :name, :age, :salary
  
    def initialize(name, age, salary)
      @name = name
      @age = age
      @salary = salary
    end
end
  
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
  
result = users
    .select { |user| user.age >= 25 }
    .map { |user| user.salary }
    .reduce(200000) { |acc, salary| acc - salary }
  
puts result
  