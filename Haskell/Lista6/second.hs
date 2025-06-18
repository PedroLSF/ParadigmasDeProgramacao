second :: [a] -> Maybe a
second xs
  | length xs < 2 = Nothing
  | otherwise     = Just (head (tail xs))