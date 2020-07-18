
local vec = ()

vec.norm = function (x, y)
    return math.sqrt(x * x + y * y)
end

vec.dist = function (x1, y1, x2, y2)
    return vec.norm(x1 - x2, y1 - y2)
end
return vec