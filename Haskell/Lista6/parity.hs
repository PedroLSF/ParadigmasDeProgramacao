parity :: Int -> Int

parity 0 = 0
parity 1 = 1
parity x = parity (x - 2)