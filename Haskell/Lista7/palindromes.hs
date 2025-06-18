palindromes :: String -> Int

palindromes = length . filter (\w -> w == reverse w) . words