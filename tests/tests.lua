local vector2d = require("src.vector2d")

local vector1 = vector2d:new(11, 11)
local vector2 = vector2d:new(11, 11)

local vector3 = vector1 + vector2
assert(vector3.x == 22 and vector3.y == 22, "+ operation failed")

local vector4 = vector1 - vector2
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
assert(math.abs(mag.magnitude - 5.0) < 0.001, "Magnitude calculation failed")

-- Normalization test
local v1 = vector2d:new(3, 4) -- magnitude will be 5, because sqrt(3^2 + 4^2) = 5
local v2 = v1:normalize()

-- After normalization, the magnitude should be 1
assert(math.abs(v2.x - 0.6) < 0.001, "X component after normalization failed") -- 3 / 5 = 0.6
assert(math.abs(v2.y - 0.8) < 0.001, "Y component after normalization failed") -- 4 / 5 = 0.8

-- Test for zero vector (should do nothing, but also should not cause an error)
local v3 = vector2d:new(0, 0)
local v4 = v3:normalize()

assert(v4.x == 0 and v4.y == 0, "Normalization of zero vector failed")

print("Vector tostring:", mag:tostring())
print("All tests passed!")
