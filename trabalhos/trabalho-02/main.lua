function love.load()
	x = love.graphics.getWidth() / 2
	y = love.graphics.getHeight() / 2
end

function love.draw()
    love.graphics.print("Hello World", x, y)
end
