# Learning Haskell
## What is Haskell?

> It is a purely functional, lazy, statically typed programming language.
- Purely functional
    - Functions are values
    - Values never change
- Lazy
- Statically Typed
- It is also a highly performant language
- Glasgow Haskell Compilation System (GHC) is the most popular Haskell compiler and provides numerous features

# Pure Functions
All Haskell functions are pure
- They cannot modify state
- Cannot depend on state
- Given the same args, always returns the same output

# Lists
- Lists in Haskell must be homogeneous
- Have unbounded length
- There are some important functions that can be used to manipulate lists in Haskell:
    - ``` head [1,2,3]```  returns 1
    - ``` tail [1,2,3]``` returns [2,3]
    - ``` head (tail [1,2,3])``` returns 2
    - ``` null [] ``` returns True and is used for testing whether a list is empty

# Tuples
- Defined as follows ```x = (1, "hello)```
- Tuples are heterogeneous
- Are of fixed length
- ```fst (1, "hello)``` returns 1
- ```snd (1, "hello)``` returns "hello"
- When tuples get too big or span different parts of my application, it is worth considering coming up with a custom data type for them

# Pattern Matching
- A way to access data in structures like lists and tuples
- ```fst' (a,b)``` = a
- ```snd' (a,b)``` = b
- ```null' []``` = True
- ```null' [x : xs]``` = False
- ```head' (x : xs)``` = x
- ```head' [] = error "head of empty list"```

# Guards
- These look at values within the data
- There is no "=" before guards
- "|" before each guard

# Case Expressions
- Starts with case keyword
- No guards in case expression