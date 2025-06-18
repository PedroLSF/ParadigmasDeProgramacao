import Data.Char
count :: String -> Int

count = length . filter (isLower . last) . words