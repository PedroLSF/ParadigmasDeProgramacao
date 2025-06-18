median :: [a] -> Maybe a
median xs
  | length xs == 0 = Nothing
  | otherwise      = Just (head (drop index xs))
  where
    n = length xs
    index = if odd n then n `div` 2 else (n `div` 2) - 1
