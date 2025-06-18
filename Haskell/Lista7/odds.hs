import Data.Char

odds :: Int -> Int

odds n = length (filter odd (map digitToInt (show n)))