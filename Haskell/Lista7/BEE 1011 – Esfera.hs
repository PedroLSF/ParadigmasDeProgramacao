import Text.Printf

main :: IO ()
main = do
    r <-getLine
    let raio = read r :: Double
    let pi = 3.14159
    printf "VOLUME = %.3f\n" ((4/3) * pi * raio^3)