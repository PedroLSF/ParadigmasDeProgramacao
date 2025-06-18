inverses :: [Int] -> [Double]

inverses = map (1 /) . map fromIntegral . filter (> 0)