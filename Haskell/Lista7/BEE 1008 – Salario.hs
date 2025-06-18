main :: IO ()
main = do
    a <-getLine
    b <-getLine
    c <-getLine
    let number = read a :: Int
    let hour = read b :: Int
    let salary = read c :: Double
    putStrLn ("NUMBER = " ++ show number)
    putStrLn ("SALARY = U$" ++ show (fromIntegral hour * salary))
