readNLines :: Int -> IO [Int]
readNLines n = foldr step (return []) [1..n]
  where
    step _ acc = do
      x <- getLine
      xs <- acc
      return (read x : xs)

solve :: [Int] -> Int
solve = foldr (+) 0

main :: IO ()
main = do
  mbLine <- getLine
  let mb = read mbLine
  monthsLine <- getLine
  let n = read monthsLine :: Int
  values <- readNLines n
  print ((mb * n) - solve values + mb)
