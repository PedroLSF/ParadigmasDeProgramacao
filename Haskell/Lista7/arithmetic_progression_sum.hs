arithmetic_progression_sum :: Int -> Int -> Int -> Int
arithmetic_progression_sum a r n = if n == 1 then a else (a + (n - 1) * r) + arithmetic_progression_sum a r (n - 1)
