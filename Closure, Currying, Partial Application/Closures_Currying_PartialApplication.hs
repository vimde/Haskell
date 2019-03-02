ifEven f x = if even x
            then f x
            else x

genIfEven x = (\f -> ifEven f x)


{-
 How to use this?

 func = genIfEven 3
 func (\x -> x + 3)

 Output : 3 since 3 is odd

 func = genIfEven 4
 func (\x -> x + 3)

 Output: 7 since 4 is even
-}


-- Closure -> some value is captured inside a lambda function

getRequestURL host apiKey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

-- getRequestURL "http://somesite.com" "haskell" "person" "1"
-- Output: "http://somesite.com/person/1?token=haskell"

-- When you are using closures in Haskell, the order of arguments must be from the most general to the least general

genHostRequestBuilder host = (\apiKey resource id -> getRequestURL host apiKey resource id)
sampleUrlBuilder = genHostRequestBuilder "http://somesite.com"

-- sampleUrlBuilder "haskell" "person" "1"

formApiRequestBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)
anotherSampleUrlBuilder = formApiRequestBuilder sampleUrlBuilder "haskell"


-- Partial Application

add3 a b c = a + b + c

-- Partial application in action

{-

add2 = add3 1
add = add2 4
add 5

Output: 10


Calling any function in Haskell with fewer than required parameters will return a function that expects the remaining parameters

Partial application is used more than Closures in Haskell and much easier to understand.
-}


binaryPartialApplication binaryFunction operand = (\anotherOperand -> binaryFunction operand anotherOperand)

-- operation = binaryPartialApplication (+) 4
-- operation 5
-- Output: 9