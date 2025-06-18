check :: Int -> Int
check x 
  | x < 18     = 15
  | x >= 18 && x < 60     = 30
  | otherwise = 20

main :: IO ()
main = do
  p1Line <- getLine
  p2Line <- getLine
  let p1 = read p1Line :: Int
  let p2 = read p2Line :: Int
  print ((\x y -> x + y) (check p1) (check p2))
