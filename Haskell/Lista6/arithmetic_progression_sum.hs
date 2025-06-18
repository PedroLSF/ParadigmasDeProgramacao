arithmetic_progression_sum :: Int -> Int -> Int -> Int

arithmetic_progression_sum a r n
  | n == 1 = a
  | otherwise = (a + ((n-1)*r)) + arithmetic_progression_sum a r (n-1)