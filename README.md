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
- Lists in Haskell must be homogeneous.
- There are some important functions that can be used to manipulate lists in Haskell:
    - head [1,2,3] -> returns 1
    - tail [1,2,3] -> returns [2,3]
    - head (tail [1,2,3]) -> returns 2
    - null [] -> returns True and is used for testing whether a list is empty