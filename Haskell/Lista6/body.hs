body :: [a] -> Maybe [a]
body xs
  | length xs < 2 = Nothing
  | otherwise     = Just (take (length xs - 2) (tail xs))