-- Recursive functions
-- pow2 n = 2  to the power n
pow2 n = 
    if n == 0
    then 1
    else 2 * (pow2 (n-1))

-- repeating a string n times
repeatString str n =
    if n == 0
    then ""
    else str ++ (repeatString str (n-1))


pow2 n = pow2loop n 1 0
pow2loop n x i = 
    if i<n
    then pow2loop n (x*2) (i+1)
    else x