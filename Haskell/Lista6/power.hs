power :: Int -> Int -> Int

power a n
  | n == 0 = 1
  | otherwise = a * power a (n-1)