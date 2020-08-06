intsFrom n = n : (intsFrom (n + 1))
ints = intsFrom 1