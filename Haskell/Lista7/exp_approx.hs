exp_approx :: Double -> Double
exp_approx x = sum [ x^^n / product [1..fromIntegral n] | n <- [0..10] ]
