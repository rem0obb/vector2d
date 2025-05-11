# vector2d

A simple and flexible 2D vector class written in Lua.

## Features

- Create 2D vectors with `x`, `y` components and precomputed `magnitude`
- Operator overloading:
  - Addition (`+`)
  - Subtraction (`-`)
  - Multiplication (`*`)
  - Equality check (`==`)
- In-place operations:
  - `:iadd(vector)` — modifies the current vector by adding another
  - `:isub(vector)` — modifies the current vector by subtracting another
  - `:imul(vector)` — modifies the current vector by multiplying by another
- Convert a vector to a formatted string with `:tostring()`

## Usage

```lua
local vector2d = require("vector2d")

-- Creating vectors
local a = vector2d:new(3, 4)
local b = vector2d:new(1, 2)

-- Operator-based (returns new vectors)
local sum = a + b
local diff = a - b
local prod = a * b

print(sum:tostring())    -- Output: (4.000000, 6.000000)
print(diff:tostring())   -- Output: (2.000000, 2.000000)
print(prod:tostring())   -- Output: (3.000000, 8.000000)

print(a == vector2d:new(3, 4))  -- Output: true
print("Magnitude of a:", a.magnitude) -- Output: 5

-- In-place modification (modifies the object and returns self)
a:iadd(b):isub(b):imul(b)
print("Modified a:", a:tostring())
