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

## Pure Functions
All Haskell functions are pure
- They cannot modify state
- Cannot depend on state
- Given the same args, always returns the same output

## Lists
- Lists in Haskell must be homogeneous
- Have unbounded length
- There are some important functions that can be used to manipulate lists in Haskell:
    - ``` head [1,2,3]```  returns 1
    - ``` tail [1,2,3]``` returns [2,3]
    - ``` head (tail [1,2,3])``` returns 2
    - ``` null [] ``` returns True and is used for testing whether a list is empty

## Tuples
- Defined as follows ```x = (1, "hello)```
- Tuples are heterogeneous
- Are of fixed length
- ```fst (1, "hello)``` returns 1
- ```snd (1, "hello)``` returns "hello"
- When tuples get too big or span different parts of my application, it is worth considering coming up with a custom data type for them

## Pattern Matching
- A way to access data in structures like lists and tuples
- ```fst' (a,b)``` = a
- ```snd' (a,b)``` = b
- ```null' []``` = True
- ```null' [x : xs]``` = False
- ```head' (x : xs)``` = x
- ```head' [] = error "head of empty list"```

## Guards
- These look at values within the data
- There is no "=" before guards
- "|" before each guard

## Case Expressions
- Starts with case keyword
- No guards in case expression

## Where vs Let Binding
- Where bindings must be associated with a function definition
- Where - top down
- Let - bottom up

## Whitespace in Haskell guidelines
- Do not use tabs. Ever
- Indent further when breaking expression onto another line e.g.
```
pairMax p = max (fst p)
                  (snd p)
```
- Line up variable bindings

## Lazy function evaluation
- In the following code: ```foo(alpha(1), beta(2))``` we know that the inner bracket will be evaluated first before foo is
- In Haskell, we don't have a guarantee on when functions are evaluated

## Higher order functions
- Functions can be passed as function arguments and can be created on the fly
- Functions that accept other functions as arguments are called Higher Order Functions e.g.
```pass3 f = f 3```
```compose f g x = f (g x)```
```always7 x  = 7```
```always7'  = const 7```

### Partial application
```foo x y z = x + y + z```
```foo_1_2 = foo 1 2```
- Note for partial application, the arguments must be given in order

# Operators
- +, *, :, ++ are all functions, to use them put parentheses around the operator e.g.
```(+) 5 3```
```(a, b) .+ (c,d)``` = (a+c, b+d)