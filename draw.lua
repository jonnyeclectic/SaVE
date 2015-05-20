require("camera")

function love.draw()
--love.graphics.setBackgroundColor( 255, 255, 255 )

	camera:set()
	
		if trip then
				--love.graphics.draw(screenshot, 470, 200)
				love.graphics.draw( screenshot, 10+ player.x - width/2, 10+player.y - height/2, 0, 1, 1, 0, 0, 0, 0 )
				love.graphics.draw( screenshot2, -10+ player.x - width/2, -10+player.y - height/2, 0, 1, 1, 0, 0, 0, 0 )
				love.graphics.draw( screenshot3, 10+ player.x - width/2, -10+player.y - height/2, 0, 1, 1, 0, 0, 0, 0 )
				love.graphics.draw( screenshot4, -10+ player.x - width/2, 10+player.y - height/2, 0, 1, 1, 0, 0, 0, 0 )
				
				-- box
				love.graphics.setColor(box.color)
				love.graphics.rectangle('line', player.x- width/6, player.y - height, width/3, 2 * height)
				love.graphics.rectangle('line', player.x- width/6, player.y - height, width/2, 2 * height)
				love.graphics.rectangle('line', player.x- width/6, player.y - height, width/4, 2 * height)
				love.graphics.rectangle('line', player.x+ width/6, player.y - height, width/3, 2 * height)
				love.graphics.rectangle('line', player.x+ width/6, player.y - height, width/2, 2 * height)
				love.graphics.rectangle('line', player.x+ width/6, player.y - height, width/4, 2 * height)
	end
	
	if tour then
		love.graphics.setNewFont(40)
		love.graphics.setColor(255, 255, 255)
		love.graphics.printf( text[scroll], guide.x - 270, guide.y - 220, 120)
	end
	
	if zoom then
		love.graphics.scale(2)
		love.graphics.setColor(255,255,255)
		love.graphics.draw(building,-110,-50)
		love.graphics.setColor(0, 0, 0)
		love.graphics.print( "Museum of Modern Art", 190, 225, 0, .6, .6, 0, 0, 0, 0 )
		-- player
	
		love.graphics.setColor( math.random(0, 255), math.random(0, 255), math.random(0, 255))
		love.graphics.rectangle('fill', player.x, player.y, player.width, player.height)
		love.graphics.setColor(player.bulletsD.color)
		for i, v in ipairs(player.bulletsD) do
			love.graphics.rectangle('fill', v.x, v.y, 10, 10)
		end
		for i, v in ipairs(player.bulletsU) do
			love.graphics.rectangle('fill', v.x, v.y, 10, 10)
		end
	else
		
		-- player
	
		love.graphics.setColor(player.color)
		love.graphics.rectangle('fill', player.x, player.y, player.width, player.height)
		love.graphics.setColor(player.bulletsD.color)
		for i, v in ipairs(player.bulletsD) do
			love.graphics.rectangle('fill', v.x, v.y, 10, 10)
		end
		for i, v in ipairs(player.bulletsU) do
			love.graphics.rectangle('fill', v.x, v.y, 10, 10)
		end
	end
  
  -- stuff
	if not zoom then
  for _, v in pairs(enemies) do
    love.graphics.setColor(v.color)
    love.graphics.rectangle('fill', v.x, v.y, v.width, v.height)
  end
	end
  
	--guide
	if tour then
		love.graphics.setColor(guide.color)
    love.graphics.circle('line', guide.x, guide.y, guide.radius, 20)
	end 
	
  --physics
  if physics then
  --love.graphics.circle("line", guide.x, guide.y, guide.radius, 20)
  --love.graphics.polygon("line", static.b:getWorldPoints(static.s:getPoints()))
  end
  

  
  camera:unset()
end