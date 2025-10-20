//if should be a number don't forget to add global.txtinput != "" to both sides
if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.menu {
		case 0.1:				//home screen, screenwipes and sends you to the proper screen
		screenwipe(5,135,18,global.txtinput)
		instance_create_depth(room_width/2,30,1,oScreenwipebar)
		instance_create_depth(room_width/2,65,1,oScreenwipebar)
		break;
		
		
		case 1:
		
		break;
		
		
		case 2:
		
		break;
		
		
		case 3:
		
		break;
		
		
		case 4:
		show_debug_message("E")
		switch global.txtinput {
			case 1:
			global.pace = "steady"
			global.move = 15
			instance_create_depth(room_width/2,135,1,oScreenwipebar)
			instance_create_depth(room_width/2,170,1,oScreenwipebar)
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			screenwipe(250,240,10,0.1)
			break;
			
			case 2:
			global.pace = "strenuous"
			global.move = 24
			instance_create_depth(room_width/2,135,1,oScreenwipebar)
			instance_create_depth(room_width/2,170,1,oScreenwipebar)
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			screenwipe(250,240,10,0.1)
			break;
			
			case 3:
			global.pace = "grueling"
			global.move = 32
			instance_create_depth(room_width/2,135,1,oScreenwipebar)
			instance_create_depth(room_width/2,170,1,oScreenwipebar)
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			screenwipe(250,240,10,0.1)
			break;
			
			case 4:
			instance_create_depth(room_width/2,135,1,oScreenwipebar)
			instance_create_depth(room_width/2,170,1,oScreenwipebar)
			screenwipe(250,240,10,4.01)
			break;
		}
		break;
		case 4.01:
		instance_create_depth(room_width/2,744,1,oScreenwipebar)
		screenwipe(5,135,13,4)
		break;
		
		
		case 5:
		
		break;
		
		
		case 6:
		
		break;
		
		
		case 7:
		
		break;
		
		
		case 8:
		
		break;
		
		
		case 9:
		
		break;
		
		
		default:
		screenwipe(250,240,10,(global.menu + 0.01))
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		//this is the code that actually adds new stuff to the screen
		case 1:	//continue
		
		break;
		
		
		case 2:	//supplies
		
		break;
		
		
		case 3:	//map
		
		break;
		
		
		case 4:	//pace
		instance_create_depth(704,64,1,oBanner)
		instance_create_depth(704,688,1,oBanner)
		
		centertext(135,"Change pace")
		centertext(170,"(Currently \"" + global.pace + "\")")
		
		text(250,240,"The pace at which you travel can ")
		text(250,275,"change. Your choices are:")
		
		button(250,345,"  1. A steady pace",1)
		button(250,380,"  2. A strenuous pace",2)
		button(250,415,"  3. A grueling pace",3)
		button(250,450,"  4. Find out what these\n     different paces mean",4,2)
		
		write(250,555,"What is your choice? ",4)
		break;
		
		case 4.01:
		text(5,135,"STEADY - You travel about 8 hours a day, taking ")
		text(5,170,"frequent rests. You take care not to get too tired. ")
		text(5,205,"")
		text(5,240,"STRENUOUS - You travel about 12 hours a day,")
		text(5,275,"starting just after sunrise and stopping shortly ")
		text(5,310,"before sunset. You stop to rest only when necessary. ")
		text(5,345,"You finish each day feeling very tired.")
		text(5,380,"")
		text(5,415,"GRUELING - You travel about 16 hours a day, starting")
		text(5,450,"before sunrise and continuing until dark. You almost")
		text(5,485,"never stop to rest. You do not get enough sleep at ")
		text(5,520,"night. You finish each day feeling absolutely ")
		text(5,555,"exhausted, and your health suffers.")
		
		centertext(744,"Press ENTER or click to continue")
		break;
		
		
		case 5:	//food
		
		break;
		
		
		case 6:	//rest
		
		break;
		
		
		case 7:	//trade or hunt
		if (global.inside) {//trade
			
		} else {	//hunt
			
		}
		break;
		
		
		case 8:	//buy or leave
		if (global.inside) {//buy
			
		} else {	//leave
			
		}
		break;
		
		
		case 9:	//leave
		
		break;
		
		
		case 0.1:
		centertext(30,"Independence")
		centertext(65,global.smonth + " 1, 1848")


		Square(0,135,1408,4)

		btext(5,135," Weather: " + global.weather)
		btext(5,170," Health: " + global.health)
		btext(5,205," Pace: " + global.pace)
		btext(5,240," Rations: " + global.rations)

		text(5,310,"You may:")

		button(5,380,"    1. Continue on trail X",1)
		button(5,415,"    2. Check supplies X",2)
		button(5,450,"    3. Look at map X",3)
		button(5,485,"    4. Change pace X",4)
		button(5,520,"    5. Change food rations X",5)
		button(5,555,"    6. Stop to rest X",6)
		if (global.inside) {
			button(5,590,"    7. Attempt to trade X",7)	//or hunt when outside
			button(5,625,"    8. Buy supplies X",8)		//or leave when outside
			button(5,660,"    9. Leave X",9)			//or nothing when outside
			write(5,730,"What is your choice? ",9)
		} else {
			button(5,590,"    7. Attempt to hunt X",7)	//or hunt when outside
			button(5,625,"    8. Leave X",8)			//or leave when outside
			write(5,730,"What is your choice? ",8)
		}
		break;
	}
	
	//global.goto stuff is only supposed to activate for 1 frame so
	//it turns off here
	global.menu = global.goto
	global.goto = 0
	global.trans = false
	show_debug_message(global.menu)
}






