local vector2d <const> = require("src.vector2d")

local vector1 <const> = vector2d:new(11, 11)
local vector2 <const> = vector2d:new(11, 11)

local vector3 <const> = vector1 + vector2
assert(vector3.x == 22 and vector3.y == 22, "+ operation failed")

local vector4 <const> = vector1 - vector2
assert(vector4.x == 0 and vector4.y == 0, "- operation failed")

assert(vector1 == vector2, "== operation failed")

local a = vector2d:new(1, 2)
local b = vector2d:new(3, 4)
a:iadd(b)
assert(a.x == 4 and a.y == 6, "iadd failed")

a:isub(b)
assert(a.x == 1 and a.y == 2, "isub failed")
a:imul(b)
assert(a.x == 3 and a.y == 8, "imul failed")

local mag = vector2d:new(3, 4) -- sqrt(3^2 + 4^2) = 5
assert(math.abs(mag.magnitude - 5.0) < 0.001, "magnitude calculation failed")

print("Vector tostring:", mag:tostring())
print("All tests passed!")
