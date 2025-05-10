# vector2d

A simple 2D vector class written in Lua.

## Features

- Create 2D vectors with `x` and `y` components
- Supports vector addition and subtraction using `+` and `-` operators
- Convert a vector to a formatted string with `tostring()`

## Usage

```lua
local vector2d = require("vector2d")

local a = vector2d:new(3, 4)
local b = vector2d:new(1, 2)

local sum = a + b
local diff = a - b

print(sum:tostring())   -- Output: (4.000000, 6.000000)
print(diff:tostring())  -- Output: (2.000000, 2.000000)
