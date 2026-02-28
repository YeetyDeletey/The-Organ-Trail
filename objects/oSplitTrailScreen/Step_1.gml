

//if should be a number don't forget to add global.txtinput != "" to both sides
if keyboard_check_pressed(vk_enter) and global.trans = false and global.txtinput != "" or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false and global.txtinput != "" {
	switch global.menu {
		case 0:								//Main menu starting screen
		show_debug_message("yo its the thing")
		switch global.txtinput {
			case 1:
			switch global.atlandmark {
				case "South Pass":
				global.textbox = "first to Green river crossing"
				global.distancetolandmark = 57
				global.nextlandmark = "Green River Crossing"
				break;
		
		
				case "Blue Mountains":
				global.textbox = "to da dalles"
				global.distancetolandmark = 125
				global.nextlandmark = "The Dalles"
				break;
		
		
				case "The Dalles":
				global.textbox = "you have chosen money and violence"
				global.distancetolandmark = 100
				global.nextlandmark = "Barlow Toll Road"
				break;
			}
			instance_create_depth(704,64,1,oScreenwipebar)
			instance_create_depth(704,688,1,oScreenwipebar)
			
			screenwipe(250,205,8,1)
			break;
	
	
			case 2:
			switch global.atlandmark {
				case "South Pass":
				global.textbox = "On to Fort badger"
				global.distancetolandmark = 125
				global.nextlandmark = "Fort Bridger"
				break;
		
		
				case "Blue Mountains":
				global.textbox = "this is actually a pretty\nsmall detour"
				global.distancetolandmark = 55
				global.nextlandmark = "Fort Walla Walla"
				break;
		
		
				case "The Dalles":
				global.textbox = "you have chosen the epic struggle \n against nature"
				global.distancetolandmark = 100
				global.nextlandmark = "Colombia River"
				break;
			}
			instance_create_depth(704,64,1,oScreenwipebar)
			instance_create_depth(704,688,1,oScreenwipebar)
			
			screenwipe(250,205,8,1)
			break;
	
	
			case 3:
			//open map screen
			break;
		}
		break;
		
		
		case 1:
		//close map screen
		//something something mainscreen()
		break;
		
	}
}

if global.goto != 0 {
	switch global.goto {
		case 1:		//if going to another room do this
		global.menu = 0.2
		global.goto = 0
		global.trans = false
		global.landmark = ""
		room_goto(rTrailScreen)
		break;
	}
	
	//global.goto stuff is only supposed to activate for 1 frame so
	//it turns off here
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}






