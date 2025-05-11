local vector2d = require("src.vector2d")

local position
local velocity
local speed = 200

function love.load()
    position = vector2d:new(350, 300)
    velocity = vector2d:new(0, 0)
end

function love.update(dt)
    local input = vector2d:new(0, 0)

    if love.keyboard.isDown("right") then input.x = input.x + 1 end
    if love.keyboard.isDown("left") then input.x = input.x - 1 end
    if love.keyboard.isDown("down") then input.y = input.y + 1 end
    if love.keyboard.isDown("up") then input.y = input.y - 1 end

    input:normalize()

    velocity = vector2d:new(input.x * speed * dt, input.y * speed * dt)
    position:iadd(velocity)
end

function love.draw()
    -- Ball
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", position.x, position.y, 10)

    -- Debug
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Position: " .. position:tostring(), 10, 10)
    love.graphics.print(string.format("Magnitude: %.2f", position.magnitude), 10, 30)
end
