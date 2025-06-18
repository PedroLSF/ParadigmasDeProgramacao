semifactorial :: Int -> Int
semifactorial x
  | x < 2 = 1
  | otherwise = x * semifactorial (x - 2)