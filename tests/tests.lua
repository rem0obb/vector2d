local vector2d <const> = require("src.vector2d")

local vector1 <const>  = vector2d:new(11, 11)
local vector2 <const>  = vector2d:new(11, 11)

local vector3 <const>  = vector1 + vector2
assert(vector3.x == 22 and vector3.y == 22, "+ operation failed")

local vector4 <const> = vector1 - vector2
assert(vector4.x == 0 and vector4.y == 0, "- operation failed")
