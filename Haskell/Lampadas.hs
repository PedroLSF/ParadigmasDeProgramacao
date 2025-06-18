solve :: [Int] -> (Int, Int)
solve xs = f (0, 0)
  where
    i1 (a, b) = (1 - a, b)
    i2 (a, b) = (1 - a, 1 - b)
    fs = map (\i -> if i == 1 then i1 else i2) xs
    f = foldr (.) id fs

main :: IO ()
main = do
  n <- readLn :: IO Int
  line <- getLine
  let xs = map read $ words line :: [Int]
  let (a, b) = solve xs
  print a
  print b
