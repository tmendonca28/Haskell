double nums = 
    if null nums
    then []
    else (2 * (head nums)) : (double (tail nums))


removeOdd nums = 
    if null nums
    then []
    else
        if (mod (head nums) 2) == 0 --even?
        then (head nums) : (removeOdd (tail nums))
        else removeOdd (tail nums)