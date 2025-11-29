
if (global.menu = 1) {
	lr = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	ud = keyboard_check(ord("S")) - keyboard_check(ord("W"))

	if (lr != 0) {
		x += move_speed * lr
		repeat(move_speed) {
			if(place_meeting(x,y,oWall)) {
				x -= lr
			}
		}
	}

	if (ud != 0) {
		y += move_speed * ud
		repeat(move_speed) {
			if(place_meeting(x,y,oWall)) {
				y -= ud
			}
		}
	}

	global.playerx = x
	global.playery = y
	
	if (invin > 0) {invin--}
	image_alpha = 1 - invin * 0.02
}