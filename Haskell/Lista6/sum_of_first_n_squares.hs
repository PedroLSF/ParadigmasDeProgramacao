sum_of_first_n_squares :: Int -> Int
sum_of_first_n_squares x
  | x == 1 = 1
  | otherwise = (x^2) + sum_of_first_n_squares (x-1)