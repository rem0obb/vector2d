# vector2d

A simple and flexible 2D vector class written in Lua.

## Features

- Create 2D vectors with `x`, `y` components and precomputed `magnitude`
- Operator overloading:
  - Addition (`+`)
  - Division (`/`)
  - Subtraction (`-`)
  - Multiplication (`*`)
  - Equality check (`==`)
- In-place operations:
  - `:iadd(vector)` — modifies the current vector by adding another
  - `:isub(vector)` — modifies the current vector by subtracting another
  - `:imul(vector)` — modifies the current vector by multiplying by another
- Convert a vector to a formatted string with `:tostring()`

## Functions

### vector2d:new(x, y)
Creates a new vector with the specified x and y values.
Parameters:
- x (number): The x-component of the vector.
- y (number): The y-component of the vector.

Returns:
- A new vector2d instance.

---

### vector2d:update_magnitude()
Calculates the magnitude of the vector using the formula:
√(x² + y²). This is called automatically when creating a new vector or modifying it with operations.

---

### vector2d:normalize()
Normalizes the vector (scales it to have a magnitude of 1), unless the vector is (0, 0).

Returns:
- The normalized vector2d instance (modifies the current vector).

---

### In-place Operations

- vector2d:iadd(v)
  Adds another vector v to the current vector, modifying the original vector.

- vector2d:isub(v)
  Subtracts another vector v from the current vector, modifying the original vector.

- vector2d:imul(v)
  Multiplies the current vector by another vector v, modifying the original vector.

- vector2d:idiv(v)
  Divides the current vector by another vector v, modifying the original vector.

---

### vector2d:tostring()
Returns the vector as a formatted string in the format:
(x, y)
Returns:
- A string representation of the vector.


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

```

## Examples

Using [love2d](https://love2d.org/) I created an example of use, just run love2 in the examples folder

```sh
love examples
```

output:

<video width="320" height="240" controls>
  <source src="assets/examples.webm" type="video/webm">
</video>