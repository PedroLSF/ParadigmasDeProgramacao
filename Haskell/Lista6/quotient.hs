quotient :: Int -> Int -> Int

quotient x y
  | x < y = 0
  | otherwise = 1 + quotient (x-y) y