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
			screenwipe(250,205,13,5)
			break;
		}
		break;
		
		
		case 3.1:
		screenwipe(where[0],where[1],where[2],3)
		break;
		
		
		case 3.5:
		global.textbox = temp
		show_debug_message(temp)
		show_debug_message(global.textbox)
		global.menu = 0.2
		global.goto = 0
		global.trans = false
		global.landmark = ""
		room_goto(rTrailScreen)
		break;
		
		
		case 5.2:
		screenwipe(250,310,5,2)
		break;
		
		
		default:
		screenwipe(250,310,4,global.menu+0.1)
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		case 2:				//go to mainscreen
		mainscreen()
		break;
		
		
		case 3:				//crossing animation
		if go {
			instance_create_layer(250,240,"River",oPiratedSprite,{spr:sRiver})
			instance_create_layer(875,540,"ThingsOnRiver",oRiverCrossing,{spr:crossingsprite})
			go = false
		}
		break;
		
		
		case 3.5:
		global.textbox = "You made the crossing safely!"
		where = textbox()
		break;
		
		
		case 5:
		text(250,310,"To ford a river means to")
		text(250,345,"pull your wagon across")
		text(250,380,"a shallow part of the river,")
		text(250,415,"with your oxen still attached")
		
		centertext(744,"Press ENTER or click to continue")
		break;
		
		
		case 5.1:
		text(250,310,"To caulk the wagon means to")
		text(250,345,"seal it so that no water can")
		text(250,380,"get in. The wagon can then")
		text(250,415,"be floated across like a boat.")
		break;
		
		
		case 5.2:
		text(250,310,"To use a ferry means to put your")
		text(250,345,"wagon on top of a flat boat that")
		text(250,380,"belongs to someone else. The")
		text(250,415,"owner of the ferry will take your")
		text(250,450,"wagon across the river.")
		break;
	}
	
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}



if (global.textbox != "" and global.menu = 3) {
	where = textbox()
	global.menu = 3.1
}


