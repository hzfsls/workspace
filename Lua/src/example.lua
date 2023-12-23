User = {}

function User.new(name, age, salary)
    local self = setmetatable({}, self)
    self.name = name
    self.age = age
    self.salary = salary
    return self
end

local users = {
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
}

local result = 200000
for _, user in ipairs(users) do
    if user.age >= 25 then
        result = result - user.salary
    end
end

print(result)
