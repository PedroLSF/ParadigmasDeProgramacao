main :: IO ()
main = do
    a <- getLine
    let [valueA, valueB, valueC] = map read (words a) :: [Int]
    putStrLn (show (maximum [valueA, valueB, valueC]) ++ " eh o maior")