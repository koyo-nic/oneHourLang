-- the usual hello world. single line comment
print("Hello world")
--[[
    Multi line comments section which can span over several lines
    \b -backspace, \t -tab Lua has only floating point numbers
]]

name = "Davince"
io.write("Size of string", #name, "\n")

-- name = 4

io.write("Mya name is :", name, "\n")

bigNum = 9223372036854775807 + 1

io.write("Big Number is", '\t', type(bigNum), '\n')

floatPrecicision = 2.9999999999999  + 0.000000000005
io.write(floatPrecicision, '\n')

longString = [[
I am string that goes on forever and ever
and ever
Voila!!
]]

io.write(longString, "\n")

longString = longString .. name

io.write(longString, '\n')

isAbleToVote = true

io.write(type(isAbleToVote), '\n')
io.write(type(madeUpVar), "\n")

-- math functions
--[[
    floor ceil, max, min, sin, cos, asin, acos, exp, log, log10, pow, sqrt, 
    random, randomseed

]]
io.write("29 + 45  =", '\t', 29+45, "\n")
io.write("29 - 45  =", '\t', 29-45, "\n")
io.write("29 * 45  =", '\t', 29*45, "\n")
io.write("29 / 45  =", '\t', 29/45, "\n")
io.write("29.3 % 45  =", '\t', 29%45, "\n")


io.write("floor(2.345)  =", '\t',math.floor(2.345), '\n')
io.write("ceil(2.345)  =", '\t',math.ceil(2.345), '\n')
io.write("max(5, 8)  =", '\t',math.max(5, 8), '\n')
io.write("min(5, 8)  =", '\t',math.min(5, 8), '\n')
io.write("pow(8,2)  =", '\t',math.pow(8, 2), '\n')
io.write("sqrt(64)  =", '\t',math.sqrt(64), '\n')

io.write("math.random()  :", '\t', math.random(), '\n')
io.write("math.random (10) :", '\t', math.random(10), '\n')
io.write("math.random (5, 100) :", '\t', math.random(5, 100), '\n')

io.write(math.randomseed(os.time()))

print(string.format("Pi = %.10f", math.pi))

--Conditionals:
--Logical operators: and or not
--Relational operators: > < >= <= == ~=

age = 13

if age < 16 then
    io.write("You right about the same age as my son", "\n")
    local localVar = 10
    print("local var", localVar)
elseif (age <=16) and (age < 18) then
    io.write("Actually you can drive", "\n")
else
    io.write("You can vote as well baba", "\n")
end

print(string.format("not true = %s", tostring(not true)))

--ternary operator

-- canVote =  age > 18 ? true : false
canVote = age > 18 and true or false

io.write("Can i vote :", tostring(canVote), '\n')


quote = "I changed my password to incorrect. So that is  a messed scenario now"

io.write("quote length ", string.len(quote), '\n')
io.write("quote string replace  ", string.gsub(quote, "changed", "Switched my"), '\n')
io.write("find the index of a word in string  ", string.find(quote, "password"), '\n')

io.write("QUOTE UPPER ", string.upper(quote), '\n')
io.write("quote lower", string.lower(quote), '\n')
