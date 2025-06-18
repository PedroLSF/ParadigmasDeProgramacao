solve :: [Int] -> Int -> Int -> Char
solve n p m
  | countP == p && countM == m = 'S'
  | otherwise                  = 'N'
  where
    countP = length (filter (== 1) n)
    countM = length (filter (== 2) n)

main :: IO ()
main = do
  premiadosLine <- getLine
  let premiados = read premiadosLine :: Int
  shirtsLine <- getLine
  let n = map read (words shirtsLine) :: [Int]
  pLine <- getLine
  let p = read pLine :: Int
  mLine <- getLine
  let m = read mLine :: Int
  putChar (solve n p m)
  putStrLn ""

