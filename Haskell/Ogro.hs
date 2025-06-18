solve :: Int -> Int -> Int
solve x y
  | x < y     = (y - x) * 2
  | otherwise = x + y

main :: IO ()
main = do
  eLine <- getLine
  dLine <- getLine
  let e = read eLine :: Int
  let d = read dLine :: Int
  print (solve e d)
