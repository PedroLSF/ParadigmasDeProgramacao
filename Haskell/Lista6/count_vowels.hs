count_vowels :: String -> Int

count_vowels [] = 0
count_vowels (x:xs)
  | x `elem` "aeiouAEIOU" = 1 + count_vowels xs
  | otherwise             = count_vowels xs