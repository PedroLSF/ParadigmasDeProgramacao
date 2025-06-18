isOctNumber :: Int -> Bool

isOctNumber x = all isOctDigit (show (abs x))
  where
    isOctDigit c = c >= '0' && c <= '7'