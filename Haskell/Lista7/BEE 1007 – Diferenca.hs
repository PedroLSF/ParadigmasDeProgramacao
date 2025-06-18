import Data.Char

solve :: Int -> Int -> Int -> Int -> Int
solve a b c d = (a*b) - (c*d)

main :: IO ()
main = do
    a <- getLine
    b <- getLine
    c <- getLine
    d <- getLine
    let valueA = read a :: Int
    let valueB = read b :: Int
    let valueC = read c :: Int
    let valueD = read d :: Int
    putStrLn ("DIFERENCA = " ++ show (solve valueA valueB valueC valueD))