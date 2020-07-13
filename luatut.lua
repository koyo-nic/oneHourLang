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
io.write("29 + 45", 29+45, "\n")
io.write("29 - 45", 29-45, "\n")
io.write("29 * 45", 29*45, "\n")
io.write("29 / 45", 29/45, "\n")
io.write("29.3 % 45", 29%45, "\n")