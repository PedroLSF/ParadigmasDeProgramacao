binomial :: Int -> Int -> Int
binomial n m
  | m == 0        = 1
  | m == n        = 1
  | otherwise     = binomial (n - 1) (m - 1) + binomial (n - 1) m
