function love.keypressed( key )  
	if key == " " and player.gun == true then                        -- if firing and able to fire
        local thisBulletU = {}
        thisBulletU.x = (player.x)-- + (player.width/2)            -- how far we should put the bullet
        thisBulletU.y = (player.y) -- (player.height/2 - 200)   -- how high we should put the bullet (adjustment to match with arm)
        thisBulletU.dx = player.bulletSpeed
        table.insert(player.bulletsU, thisBulletU)                     -- FIRE!		
				
				local thisBulletD = {}
        thisBulletD.x = (player.x)-- + (player.width/2)            -- how far we should put the bullet
        thisBulletD.y = (player.y) -- (player.height/2 - 200)   -- how high we should put the bullet (adjustment to match with arm)
        thisBulletD.dx = player.bulletSpeed
        table.insert(player.bulletsD, thisBulletD)                     -- FIRE!		
	end
	
	if key == "escape" then
      love.event.quit()
  end
	
	if key == "p" then
      if trip then
				trip = false
			else
				trip = true
			end
  end 
 
	if key == "return" then
		if scroll < 11 then
			scroll = scroll + 1
		end
	end

	 
end