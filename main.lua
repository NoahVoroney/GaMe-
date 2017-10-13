-- Title: MovingImages
-- Name: Your Name
-- Course: ICS2O/3C
-- What does this program do?

-- FILL IN YOUR COMMENT HERE
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/Banana-Fruit-PNG.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3






-- character image with width and height
local beetleship3 = display.newImageRect("Images/Banana-Fruit-PNG.png", 200, 200)

-- set the image to be transparent
beetleship3.alpha = 0

-- set the initial x and y position of beetleship
beetleship3.x = 0
beetleship3.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship






-- character image with width and height
local beetleship2 = display.newImageRect("Images/Banana-Fruit-PNG.png", 200, 200)

-- set the image to be transparent
beetleship2.alpha = 0

-- set the initial x and y position of beetleship
beetleship2.x = 1023
beetleship2.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed + 5
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01

	-- add the scroll speed to the x-value of the ship
	beetleship2.x = beetleship2.x - scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship2.alpha = beetleship2.alpha + 0.01

-- add the scroll speed to the x-value of the ship
	beetleship3.x = beetleship3.x + scrollSpeed + 7
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship3.alpha = beetleship3.alpha + 0.01
end

-- MoveShip will be called at program start over and over (30 frames or times per second)
Runtime:addEventListener("enterFrame", MoveShip)