-- function to square
square x = x * x

-- function to multiply largest of a and b by x
multMax a b x = (max a b) * x

-- simple conditional function
posOrNeg x = 
    if x >= 0
    then "Positive"
    else "Negative"