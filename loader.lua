
function love.load()  
				 math.randomseed( os.time() )   	
				 zoom = true
				 sources = {}
				 --music = love.audio.newSource( "pic/DST-Aethereal.mp3" )
				 building = love.graphics.newImage( "pic/building.jpg" )
				 bwidth = building:getWidth()
				 bheight = building:getHeight()
				 
				 playlist = {}
				 love.audio.setVolume( 0.7 )
				 --love.audio.play( music )
         width = love.graphics.getWidth()
         height = love.graphics.getHeight()  
				 
				 
				 scroll = 0
				 text = {}
				 text[0] = "Hello!"
				 text[1] = "I'll be your tour guide through the exhibit"
				 text[2] = "To your right is the hall of paintings"
				 text[3] = "Art can be both beautiful and uncomfortable- but it's always art!"
				 text[4] = "Art can only come from something artistic, like an artist."
				 text[5] = "To become an artist, shoot one of our paintings."
				 text[6] = "ONE"
				 text[7] = "Sir!"
				 text[8] = "That was both beautiful and expensive."
				 text[9] = "Even something notoriously violent can be made into art."
				 text[10] = "It all depends on who is watching, and who is the artist."
				 text[11] = "Thank you for coming to our Science and Art Video Exhibit."

				 maxpaintings = 50
         physics = true
         --world = love.physics.newWorld(0, 200, true)

         player = {
         x = 250,
         y = 250,
         width = 5,
         height = 35,
         speed = 100,
         color = { 255, 255, 255 },
	        gun = false
         }
  
         player.bulletSpeed = 700
         player.bulletsU = { color = {255, 0, 0} }
				 player.bulletsD = { color = {255, 0, 0} }
  
         box = {
         x = 200,
         y = 200,
         width = width * 2,
         height = height * 2,
         color = { 255, 20, 20 }
         }
				 
				 enemies = {}
         stuff = {}
				 art = 0
				 
				 for i = 0, maxpaintings do
				 painting = {}
         r = math.random(0, 255)
         g = math.random(0, 255)
         b = math.random(0, 255)
				 
         painting.x = math.random(width + 100,    width + width * 2 - 100)
         painting.y = math.random(100,    height * 2 - 100)
         painting.width = math.random(1,  300)
         painting.height = math.random(1, 300)
         painting.color = { r, g, b }
				 		i = i%16
				 painting.sound = newsource(i)
				 table.insert(enemies, painting)
				 end
				 
				 tour = false
				 guide = {}
				 guide.x = 200
				 guide.y = 200
				 guide.radius = 50
				 guide.color = { r, g, b }		
end