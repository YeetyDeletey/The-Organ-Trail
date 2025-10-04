

//if should be a number don't forget to add global.txtinput != "" to both sides
if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.menu {
		//global.menu being 0 means its the base screen
		//you only get off it after a screenwipe
		case 0:								//Main menu starting screen
		switch global.txtinput {
							//txtinput is whatever the player inputted
							//last num of screenwipe sets global.goto to itself
							//when global.goto gets set to anything it does new stuff
							//(creating new text)
			case 1:
			screenwipe(250,135,12,1)
			break;
	
	
			case 2:
			global.menu = 2
			screenwipe(250,135,12,2)
			break;
	
	
			case 3:
			break;
	
	
			case 4:
			break;
	
		
			default:
			break;
		}
		break;
		
		//when not on the main screen, it is assumed that you're 
		//clicking through multiple text boxes
		default:
		screenwipe(250,240,10,(global.menu + 0.01))
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		//this is the code that actually adds new stuff to the screen
		case 1:
		//if going to another room do this
		global.menu = 0
		global.goto = 0
		global.trans = false
		room_goto(rPreMattShop)
		break;
		
		
		case 2:
		//if writing text do this
		text(250,135,"Many kinds of people made the ")
		text(250,170,"trip to Oregon.")
		centertext(744,"Press ENTER or click to continue")
		break;
		
		case 2.01:
		//if continuing text do this
		text(250,135,"Many kinds of people made the ")
		text(250,170,"trip to Oregon.")
		break;
	}
	
	//global.goto stuff is only supposed to activate for 1 frame so
	//it turns off here
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}






