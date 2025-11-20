if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.menu {
		case 0.1:
		global.showlandmark = 0
		screenwipe(683,384,1,0.2)
		break;
		
		case 0.2:
		screenwipe(where[0],where[1],where[2],1)
		break;
		
		case 1:
		room_goto(rThinkingScreen)
		break;
	}
}

if (global.menu == 1) {		//The timer for when the trail screen is running
	counter++
	
	if (counter == cmax) {
		nextday()
		if global.showlandmark != 0 {
			menuvisual(683,384,global.showlandmark,-100)
			global.menu = 0.1
		}

		instance_create_depth(5,555,1,oScreenwipebar)
		instance_create_depth(5,590,1,oScreenwipebar)
		instance_create_depth(5,625,1,oScreenwipebar)
		instance_create_depth(5,660,1,oScreenwipebar)
		instance_create_depth(5,695,1,oScreenwipebar)
		instance_create_depth(5,730,1,oScreenwipebar)
		btext(5,555,"                     Date: " + global.smonth + " " + string(global.day) + ", " + string(global.year))
		btext(5,590,"                  Weather: " + global.weather)
		btext(5,625,"                   Health: " + global.health)
		btext(5,660,"                     Food: " + string(global.food) + " pounds")
		btext(5,695,"            Next landmark: " + string(global.distancetolandmark))
		btext(5,730,"           Miles traveled: " + string(global.distance))
		counter = 0
	}
}

if (global.goto != 0) {
	switch global.goto {
		case 0.2:
		where = textbox()
		break;
	}
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}
//show_debug_message(global.goto)