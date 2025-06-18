sum_of_first_n :: Int -> Int

sum_of_first_n x
  | x == 1 = 1
  | otherwise = x + sum_of_first_n (x-1)