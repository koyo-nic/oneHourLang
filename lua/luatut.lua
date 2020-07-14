-- http://www.newthinktank.com/2015/06/learn-lua-one-video/
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

--Looping and branching

i = 1

while (i<=10) do
    io.write(i)
    i = i +1

    if i == 8  then break end
end

print("\n")

repeat
    io.write("Enter your Guess :")

    guess = io.read()

until tonumber(guess) == 15

for  i = 1, 10, 1 do
    io.write(i, "\n")
end

months = {"January", "February", "March", "April", "May", "June", "July", "August", 
"September", "October", "November", "December"}

for key, value in pairs(months) do
    io.write(key, " :", value, "\n")
end

aTable = {}

for i =1, 10 do
    aTable[i] = i
end

io.write("First :", aTable[1], "\n")
io.write("Number of table Items : ", #aTable, "\n")

table.insert(aTable, 1, 0)
io.write("First :", aTable[10], "\n")

print(table.concat(aTable, ","))

aMultiTable = {}

for i = 0, 9 do
    aMultiTable[i] = {}
    for j = 0, 9 do
        aMultiTable[i][j] = tostring(i) .. tostring(j)
    end
end
io.write("Table[0][0] :", aMultiTable[0][0], '\n')

for i = 0,9 do
    for j = 0, 9 do
        io.write(aMultiTable[i][j], ":")
    end
    print()
end

-- functions in lua

function getSum(arg1, arg2, arg3)
    return tonumber(arg1 + arg2 + arg3)
    
end

io.write("enter any a number")
arg1 = tonumber(io.read())
io.write("enter next number")
arg2 = tonumber(io.read())
io.write("enter next number")
arg3 = tonumber(io.read())
print(string.format("sum of 3 numbers %d", getSum(arg1, arg2, arg3)))

function splitStr(thestring)
    stringTable = {}
    local i = 1
    for str in string.gmatch(thestring, "[^%s]+") do
        stringTable[i] = str
        i = i +1
    end

    return stringTable, i
end

splitStrTable, numOfStr = splitStr("The turtle that walks faster than a lamborghini")

for j =1, numOfStr-1 do
    print(string.format("%d : %s", j, splitStrTable[j]))
end

function getSumMore(...)
    local sum = 0
    
    for k,v in pairs{...} do
        sum = sum + v
    end 
    return sum
end

io.write("Sum", getSumMore(1, 2, 3, 4, 5, 6, 7, 8, 9), "\n")

-- function as a variable
doubleIt = function(x) return math.pow(x, 3) end

print(doubleIt(8))
-- Closure a function that can access local var out of an enclosing function

function outerFunc()
    local i = 0

    return function ()
        i = i + 1
        return i
    end
end

getI = outerFunc()

print(getI())
print(getI())

-- coroutines in lua: similar to thread in other languages except they can not run in parallel

co = coroutine.create(function ()
    for i =1, 10, 1 do
        print(i)
        print(coroutine.status(co))
        if i == 5 then coroutine.yield() end
    end
end)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))

-- another coroutine
cor2 = coroutine.create(function()
    for  i = 101, 110, 1 do
        print(i)
    end
end)

coroutine.resume(cor2)
coroutine.resume(co)
print(coroutine.status(co))

-- file io: not so many resources available online
--[[Working with files : 
r: Read only(default)
w: Overwrite or create a new file
a: Append or create a new file
r+: Read & Write an existing file
w+: Overwrite read or create a file
a+: Append read or create a file
]]

readFile = io.open("testingFiles.lua", "w+")

-- writing to a file
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("After seeking back to the zero index aha \n")
readFile:write("After seeking back to the evnen more strings \n")

readFile:seek("set", 0)

print(readFile:read("a"))
readFile:close()
--  Appending to text file

readFile = io.open("testingFiles.lua", "a+")

readFile:write("After seeking back to the zero index aha \n")
readFile:write("After seeking back to the evnen more strings \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")
readFile:write("Random string duck typing directly to lua init \n")


readFile:seek("set", 0)
print(readFile:read("a"))
readFile:close()

-- Working with modules:(like python can be full of libraries, functions and variables)

convertModule = require("lua/convert")
io.write("please enter a measurement in feet \n")
measure = tonumber(io.read())

print(string.format("%.3f cm", convertModule.ftToCm(measure)))

-- MetaTables: Define on how operations should be done on tables:
-- adding, substracting, concatanating, comparing, dividing etc

aTable = {}

for x = 1, 20 do
    aTable[x] = x
end

mt = {
    __add = function (table1, table2)
        sumTable = {}
        
        for y = 1, #table1 do
            if (table1[y] ~= nil) and (table2[y] ~= nil) then
                sumTable[y] = table1[y] + table2[y]
            else
                sumTable[y] = 0
            end
        end
        return sumTable
    end,

    __sub = function (table1, table2)
        sumTable = {}
        
        for y = 1, #table1 do
            if (table1[y] ~= nil) and (table2[y] ~= nil) then
                sumTable[y] = table1[y] - table2[y]
            else
                sumTable[y] = 0
            end
        end
        return sumTable
    end,
-- Homwork, try out if this values work for less than or equal to
    __eq = function(table1, table2)
        return table1.value == table2.value
    end,

    __lt = function(table1, table2)
        return table1.value < table2.value
    end,

    __le = function(table1, table2)
        return table1.value <= table2.value
    end
}
setmetatable(aTable, mt)

print(aTable == aTable)
print(aTable == aMultiTable)

addTable = {}
addTable = aTable + aTable
for z = 1, #aTable do
    print(addTable[z], "\t")
end

subTable = {}
subTable = aTable - aTable
for z = 1, #aTable do
    print(subTable[z], "\t")
end

-- Lua doesnt directly support oop but there are ways around it using metatables

Animal = {height = 0, weight = 0, name = "No Name", sound = "No sound"}

function Animal:new(height, weight, name, sound)
    setmetatable({}, Animal)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound

    return self
end

function Animal:toString()
    animalStr = string.format("%s weighs %.2f lbs, is %.1f in tall and says %s", self.name, self.weight, self.height, self.sound)
    return animalStr
end
spot = Animal:new(10, 15, "Spot", "woof Woof")

print(spot.height)
print(spot:toString())

--  inheritance in lua.

Cat = Animal:new()

function Cat:new(height, weight, name, sound, favFood)
    setmetatable({}, Cat)

    -- self reference to values for this animal
    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    self.favFood = favFood

    return self
end

-- overload animal function

function Cat:toString()
    catStr = string.format("%s weighs %.1f lbs, is %.1f in tall, sys %s and loves %s", self.name, self.weight, self.height, self.sound, self.favFood)
    return catStr
end

-- create a cat instance

fluffcat = Cat:new(10, 25, "Fluffy", "Meow", "Tuna")

print(fluffcat:toString())