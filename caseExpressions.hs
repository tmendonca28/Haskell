double nums = case nums of
    []  -> []
    (x : xs) -> (2 * x) : (double xs)