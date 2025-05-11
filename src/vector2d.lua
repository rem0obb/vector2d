local vector2d = { x = 0, y = 0, magnitude = 0 }
vector2d.__index = vector2d

local math = require("math")

function vector2d:new(x, y)
    if (type(x) ~= "number" or type(y) ~= "number") then
        assert(true, "expected numbers")
    end

    local obj = setmetatable({}, self)
    obj.x = x or 0.0
    obj.y = y or 0.0
    obj:update_magnitude()
    return obj
end

function vector2d:update_magnitude()
    self.magnitude = math.sqrt((self.x * self.x) + (self.y * self.y))
end

function vector2d:iadd(v)
    self.x = self.x + v.x
    self.y = self.y + v.y
    self:update_magnitude()
    return self
end

function vector2d:isub(v)
    self.x = self.x - v.x
    self.y = self.y - v.y
    self:update_magnitude()
    return self
end

function vector2d:imul(v)
    self.x = self.x * v.x
    self.y = self.y * v.y
    self:update_magnitude()
    return self
end

function vector2d.__add(a, b)
    return vector2d:new(a.x + b.x, a.y + b.y)
end

function vector2d.__sub(a, b)
    return vector2d:new(a.x - b.x, a.y - b.y)
end

function vector2d.__mul(a, b)
    return vector2d:new(a.x * b.x, a.y * b.y)
end

function vector2d.__eq(a, b)
    return a.x == b.x and a.y == b.y
end

function vector2d:tostring()
    return string.format("(%f, %f)", self.x, self.y)
end

return vector2d
