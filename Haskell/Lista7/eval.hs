eval :: [Int] -> Int -> Int
eval xs n = foldl (\acc a -> acc * n + a) 0 xs