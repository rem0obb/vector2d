local vector2d <const> = require("src.vector2d")

local vector1 = vector2d:new(11.11, 11.11)
local vector2 = vector2d:new(11.11, 11.11)

local vec3 = vector1 + vector2

print(vec3:tostring())