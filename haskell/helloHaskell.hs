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
