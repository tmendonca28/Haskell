pow2 n
    | n == 0 = 1
    | otherwise = 2 * (pow2 (n-1))

-- Empty list
removeOdd [] = []

-- Non-empty list
removeOdd (x : xs)
    | mod x 2 == 0 = x : (removeOdd xs)
    | otherwise = removeOdd xs