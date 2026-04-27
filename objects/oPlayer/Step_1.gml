
if (global.menu == 1) {
	//keyboard inputs
	lr = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	ud = keyboard_check(ord("S")) - keyboard_check(ord("W"))
    shoot = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
    
	//moving around
	if (ud != 0) {
		y += move_speed * ud
		dir = 2 + ud
		repeat(move_speed) {
			if(place_meeting(x,y,oWall)) {
				y -= ud
			}
		}
	}
	if (lr != 0) {
		x += move_speed * lr
		dir = 3 + lr
		repeat(move_speed) {
			if(place_meeting(x,y,oWall)) {
				x -= lr
			}
		}
	}
    
	//shooting
    if(shoot){
        instance_create_depth(x, y, 1, oBoolet)
    }
    
	//dealing with variables/visuals
	global.playerx = x
	global.playery = y
	
	if (invin > 0) {invin--}
	image_alpha = 1 - invin * 0.02
	depth = -y
}