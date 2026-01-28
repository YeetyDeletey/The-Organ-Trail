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
		instance_create_depth(room_width/2,65,1,oScreenwipebar)
		instance_create_depth(room_width/2,744,1,oScreenwipebar)
		instance_create_depth(160,495,1,oScreenwipebar)
		instance_create_depth(550,460,1,oScreenwipebar)
		instance_create_depth(900,480,1,oScreenwipebar)
		instance_create_depth(60,65,1,oScreenwipebar)
		instance_create_depth(110,280,1,oScreenwipebar)
		screenwipe(250,135,8,0.1)
		break;
		
		
		case 3:
		
		break;
		
		
		case 4:
		instance_create_depth(room_width/2,135,1,oScreenwipebar)
		instance_create_depth(room_width/2,170,1,oScreenwipebar)
		switch global.txtinput {
			case 1:
			global.pace = "steady"
			global.move = 15
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			screenwipe(250,240,10,0.1)
			break;
			
			case 2:
			global.pace = "strenuous"
			global.move = 24
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			screenwipe(250,240,10,0.1)
			break;
			
			case 3:
			global.pace = "grueling"
			global.move = 32
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			screenwipe(250,240,10,0.1)
			break;
			
			case 4:
			screenwipe(250,240,10,4.01)
			break;
		}
		break;
		case 4.01:
		instance_create_depth(room_width/2,744,1,oScreenwipebar)
		screenwipe(5,135,13,4)
		break;
		
		
		case 5:
		instance_create_depth(room_width/2,135,1,oScreenwipebar)
		instance_create_depth(room_width/2,170,1,oScreenwipebar)
		instance_create_depth(room_width/2,64,1,oScreenwipebar)
		instance_create_depth(room_width/2,688,1,oScreenwipebar)
		screenwipe(250,240,11,0.1)
		switch global.txtinput {
			case 1:
			global.rations = "filling"
			global.eat = 15
			break;
			
			case 2:
			global.rations = "meager"
			global.eat = 10
			break;
			
			case 3:
			global.rations = "bare bones"
			global.eat = 5
			break;
		}
		break;
		
		
		case 6:
		
		break;
		
		
		case 7:
			instance_create_depth(room_width/2,64,1,oScreenwipebar)
			instance_create_depth(room_width/2,688,1,oScreenwipebar)
			instance_create_depth(room_width/2,744,1,oScreenwipebar)
			m = 0
			i = 0
			repeat(5) {
				if (array_length(global.party[i].injuries) > m) {m = array_length(global.party[i].injuries)}
				i++
			}
			if (m == 0) {m++}
			m += 2
			i = 0
			repeat (5) {
				xoffset = 100+(250 * i)
				yoffset = 300+power(-1,i+1)*150
				screenwipe(xoffset,yoffset,m,0.1)
				i++
			}
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
		room_goto(rTrailScreen)
		break;
		
		
		case 2:	//supplies
		centertext(65,"Your supplies")
		
		text(250,135,"       oxen               " + string(global.oxen))
		text(250,170,"       sets of clothing   " + string(global.clothing))
		text(250,205,"       bullets            " + string(global.ammo))
		text(250,240,"       wagon wheels       " + string(global.wheels))
		text(250,275,"       wagon axles        " + string(global.axles))
		text(250,310,"       wagon tongues      " + string(global.tongues))
		text(250,345,"       pounds of food     " + string(global.food))
		text(250,380,"       money left         " + string(global.money))
		
		centertext(744,"Press ENTER or click to continue")
		menuvisual(60,65,sFood)
		menuvisual(110,280,sSpareparts)
		menuvisual(160,495,sOxen)
		menuvisual(550,460,sClothing)
		menuvisual(900,480,sGun)
		break;
		
		
		case 3:	//map
		
		break;
		
		
		case 4:	//pace
		menuvisual(704,64,sBanner)
		menuvisual(704,688,sBanner)
		
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
		menuvisual(704,64,sBanner)
		menuvisual(704,688,sBanner)
		
		centertext(135,"Change rations")
		centertext(170,"(Currently \"" + global.rations + "\")")
		
		text(250,240,"The amount of food the people in")
		text(250,275,"your party eat each day can")
		text(250,310,"change. These amounts are:")
		
		button(250,380,"  1. Filling - meals are large\n     and generous.",1,2)
		button(250,450,"  2. Meager - meals are small,\n     but adequate.",2,2)
		button(250,520,"  3. Bare bones - meals are very\n     small; everyone stays hungry.",3,2)
		
		write(250,590,"What is your choice? ",3)
		break;
		
		
		case 6:	//rest
		
		break;
		
		
		case 7:	//check party status
		menuvisual(704,64,sBanner)
		menuvisual(704,688,sBanner)
		
		i = 0
		repeat(5) {
			//10 chars per line
			xoffset = 100+(250 * i)
			yoffset = 300+power(-1,i+1)*150
			
			text(xoffset,yoffset,global.party[i].name)
			
			if (global.party[i].unknown = true) {text(xoffset,yoffset+35,"Unknown")}
			else if (global.party[i].infection = 0) {text(xoffset,yoffset+35,"Unbitten")}
			else {text(xoffset,yoffset+35,"Infected")}
			
			if (array_length(global.party[i].injuries) == 0) {
				text(xoffset,yoffset+70,"Uninjured")
			} else {
				j = 0
				repeat(array_length(global.party[i].injuries)) {
					text(xoffset,yoffset+70+(35*j),global.party[i].injuries[j])
					j++
					show_debug_message(j)
				}
			}
			i++
		}
		//currently the only thing that changes the total number of lines is number of injuries, 
		//more code needed here and in removal to change that
		centertext(744,"Press ENTER or click to continue")
		break;
		
		
		case 8:	//trade or hunt
		if (global.inside) {//trade
			
		} else {	//hunt
			room_goto(rHunting)
		}
		break;
		
		
		case 9:	//as of now shouldn't happen
		
		break;
		
		
		case 0.1:
		centertext(30,"Independence")
		centertext(65,global.smonth + " 1, 1848")


		square(0,135,1408,4)

		btext(5,135," Weather: " + global.weather)
		btext(5,170," Health: " + global.phealth)
		btext(5,205," Pace: " + global.pace)
		btext(5,240," Rations: " + global.rations)

		text(5,310,"You may:")

		button(5,380,"    1. Continue on trail",1)
		button(5,415,"    2. Check supplies",2)
		button(5,450,"    3. Look at map X",3)
		button(5,485,"    4. Change pace",4)
		button(5,520,"    5. Change food rations",5)
		button(5,555,"    6. Stop to rest X",6)
		button(5,590,"    7. Check party status X",7)
		if (global.inside) {
			button(5,625,"    8. Attempt to trade X",8)		//or hunt when outside
		} else {
			button(5,625,"    8. Attempt to hunt X",8)		//or trade when inside
		}
		
		write(5,730,"What is your choice? ",8)
		break;
	}
	
	//global.goto stuff is only supposed to activate for 1 frame so
	//it turns off here
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}






