mean :: [Int] -> Double

mean xs = fromIntegral (foldl (+) 0 xs) / fromIntegral (length xs)