import Text.Printf

main :: IO ()
main = do
    n <-getLine
    let distance = read n :: Int
    m <-getLine
    let spend = read m :: Double
    printf "%.3f km/l\n" (fromIntegral distance / spend)
