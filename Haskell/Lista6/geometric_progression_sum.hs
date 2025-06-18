geometric_progression_sum:: Int -> Int -> Int -> Int

geometric_progression_sum a r n
  | n == 1 = a
  | otherwise = (a * (r^(n-1))) + geometric_progression_sum a r (n-1)