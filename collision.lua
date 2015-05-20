function love.CheckCollision(bulletX,bulletY,enemyX,enemyY,enemyWidth, enemyHeight)
	return bulletX <= (enemyX + enemyWidth) and bulletX >= (enemyX - 10) and bulletY >= enemyY - 10 and bulletY <= enemyY + enemyHeight
end