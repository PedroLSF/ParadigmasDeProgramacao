-- (list !! 1) -> Retorna por indice
import Data.List (sort)

second :: [Int] -> Int
second (_:x:_) = x

solve :: [Int] -> Int
solve = second . sort

main :: IO ()
main = do
    p1Line <- getLine
    p2Line <- getLine
    p3Line <- getLine
    let p1 = read p1Line
    let p2 = read p2Line
    let p3 = read p3Line
    print (solve [p1,p2,p3])