-- single line comments
{- 
Haskell get's lots of it's inspiration from lambda calculus. 
Used by facebook and whatsapp to filter out spam.
Iis a functional programming language like Scala(which interfaces with java seamlessly.)
multi line coment aha
-}

-- importing a module
import Data.List
import System.IO

{- ----Data Types
type inferences: decides on the type based on the value stored in it
data types
    int: 2^63 and -2663
    integer: unbounded whole number
    bool: True or False
    Float: sing;e precison floating point number
    Double: Double precision floating point number 11pts
    Char: single unicode character noted with a single quotes
    Tuple: Can  store a list made up of many data types
-}
maxInt = maxBound :: Int
minInt =minBound :: Int

bigFloat = 3.99999999999 + 0.00000000005

-- declare an immutable value  of a variable:

always9 :: Int
always9 = 69

sumOfNums = sum[1..1000]

-- basic math
addExample = 56 + 67
subExample = 98 - 890
multExample = 45 * 7677
divExample = 567 / 45

--  modulo example: prefix examples:
modExample = mod 89 9

--  mod example as an infix operator by adding backticks
modExample2 = 89 `mod` 9

-- negative numbers must be parenthesized
negExample = 109 + (-120)

-- If you define an Int you must use fromIntegral to use it with sqrt
-- :t sqrt shows that it returns a floating point number
num9 = 9 ::Int
sqrtOf9 = sqrt (fromIntegral num9)
-- Built in math functions
{-
sin, cos, tan, asin, atan, acos, sinh, tanh, 
cosh, asinh, atanh, acosh
-}

piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999
