

//if should be a number don't forget to add global.txtinput != "" to both sides
if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.menu {
		case 1:								//starting words
		instance_create_depth(room_width/2,744,1,oScreenwipebar)
		screenwipe(250,310,7,2)
		break;
		
		case 2:								//Main screen
		switch global.txtinput {
			case 1:
			crossingsprite = sFord
			screenwipe(250,205,13,3)
			break;
	
	
			case 2:
			crossingsprite = sFloat
			screenwipe(250,205,13,3)
			break;
	
	
			case 3:
			crossingsprite = sFerry
			screenwipe(250,205,13,3)
			break;
	
	
			case 4:
			break;
	
		
			case 5:
			break;
		}
		break;
		
		
		case 3.5:
		screenwipe(250,310,1,1.5)
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		case 1.5:			//going to the next screen
		global.menu = 0.2
		global.goto = 0
		global.trans = false
		global.landmark = ""
		room_goto(rTrailScreen)
		break;
		
		
		case 2:				//go to mainscreen
		mainscreen()
		break;
		
		
		case 3:				//crossing animation
		instance_create_layer(250,240,"River",oPiratedSprite,{spr:sRiver})
		instance_create_layer(875,540,"ThingsOnRiver",oRiverCrossing,{spr:crossingsprite})
		break;
		
		
		case 3.5:
		instance_create_depth(250,540,1,oScreenwipebar)
		text(250,310,"You made the crossing safely!")
		break;
		
	}
	
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}






