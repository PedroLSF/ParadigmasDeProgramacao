main :: IO ()

main = do
    entrada <- getLine
    let n = read entrada :: Int
    let resultado = ((\x -> (x + 1) * (x + 2)) n) `div` 2
    print resultado

