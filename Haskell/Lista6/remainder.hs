remainder :: Int -> Int -> Int
remainder x y
  | x < y = x
  | otherwise = remainder (x-y) y