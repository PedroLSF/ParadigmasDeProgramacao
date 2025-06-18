greater_common_divisor :: Int -> Int -> Int
greater_common_divisor a b
  | mod a b == 0 = b
  | otherwise = greater_common_divisor b (mod a b)