local vector2d = {}
vector2d.__index = vector2d

function vector2d:new(x, y)
    if (type(x) ~= "number" or type(y) ~= "number") then
        assert(true, "expected numbers")
    end

    local self = setmetatable({}, vector2d)
    self.x = x or 0.0
    self.y = y or 0.0

    return self
end

function vector2d.__add(a, b)
    return vector2d:new(a.x + b.x, a.y + b.y)
end

function vector2d:tostring()
    return string.format("(%f, %f)", self.x, self.y)
end

return vector2d
