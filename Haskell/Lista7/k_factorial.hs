k_factorial :: Int -> Int -> Int
k_factorial n k
  | n > 0         = foldl (*) 1 [n, n - k .. 1]
  | n > -k        = 1
  | otherwise     = 0

-- Em 1 linha:
k_factorial n k = if n > 0 then foldl (*) 1 [n, n-k .. 1] else if n > -k then 1 else 0