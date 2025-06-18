readNLines :: Int -> IO [Int]
readNLines 0 = return []
readNLines n = do
  line <- getLine
  rest <- readNLines (n - 1)
  return (read line : rest)

solve :: Int -> [Int] -> Int -> Int
solve acc [] total = total
solve acc (x:xs) total
    | acc + x >= 1000000 = total + 1
    | otherwise = solve (acc + x) xs (total + 1)


main :: IO ()
main = do
  daysLine <- getLine
  let days = read daysLine
  values <- readNLines days
  print (solve 0 values 0)
