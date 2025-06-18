processaTempos :: [Int] -> Int
processaTempos [t1, t2, t3, t4] = (t1 - 1) + (t2 - 1) + (t3 - 1) + t4

main :: IO ()
main = do
    linha <- getLine
    let tempos = map read (words linha) :: [Int]
    print (processaTempos tempos)
