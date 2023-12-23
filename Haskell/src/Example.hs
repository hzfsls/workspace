data User = User { name :: String, age :: Int, salary :: Int }

example :: Int
example = let
    users = [
        User "Alice" 25 15000,
        User "Bob" 30 18000,
        User "Charlie" 22 16000,
        User "David" 28 15000,
        User "Eva" 35 25000,
        User "Frank" 40 20000,
        User "Grace" 32 22000,
        User "Henry" 26 16000,
        User "Ivy" 23 18000,
        User "Jack" 29 15000 ]
    filteredUsers = filter (\user -> age user >= 25) users
    mappedSalaries = map salary filteredUsers
    result = foldl (-) 200000 mappedSalaries
    in result

main :: IO ()
main = do
    putStrLn $ show example
