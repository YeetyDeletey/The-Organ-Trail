


if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.menu {
		case 0:								//Main menu starting screen
		switch global.txtinput {
			case 1:
			global.money = 1600
			global.job = "b"
			screenwipe(250,135,12,2)
			break;
	
	
			case 2:
			global.money = 800
			global.job = "c"
			screenwipe(250,135,12,2)
			break;
	
	
			case 3:
			global.money = 400
			global.job = "f"
			screenwipe(250,135,12,2)
			break;
	
	
			case 4:
			screenwipe(250,135,12,1)
			break;
	
		
			default:
			break;
		}
		break;
		
		case 1:
		screenwipe(250,135,10,1.01)
		break;
		
		case 2:
		if global.txtinput != "" {
			screenwipe(250,485,2,2.01)
			array_push(global.party, [global.txtinput,[],100,0,0,[]])
		}
		break;
		
		
		case 2.05:
		if global.txtinput = "y" or global.txtinput = "Y" {
			screenwipe(250,485,9,3)
		}
		else if global.txtinput = "n" or global.txtinput = "N" {
			global.goto = 2.1
		}
		break;
		
		
		case 2.06:
		if global.txtinput = "y" or global.txtinput = "Y" {
			screenwipe(250,485,9,3)
		}
		else if global.txtinput = "n" or global.txtinput = "N" {
			global.goto = 2.1
		}
		break;
		
		
		case 2.1:
		if global.txtinput != "" {
			global.goto = 2.1 + (int64(global.txtinput) * 0.1)
		}
		break;
		
		
		case 2.2:
		if global.txtinput != "" {
			array_insert(global.party, 0,[global.txtinput,[],100,0,0,[]])
			array_delete(global.party,1,1)
			instance_create_depth(250,555,1,oScreenwipebar)
			text(250,555,"1. " + global.party[0][0])
			global.goto = 2.06
		}
		break;
		
		
		case 2.3:
		if global.txtinput != "" {
			array_insert(global.party, 1,[global.txtinput,[],100,0,0,[]])
			array_delete(global.party,2,1)
			instance_create_depth(250,590,1,oScreenwipebar)
			text(250,590,"2. " + global.party[1][0])
			global.goto = 2.06
		}
		break;
		
		
		case 2.4:
		if global.txtinput != "" {
			array_insert(global.party, 2,[global.txtinput,[],100,0,0,[]])
			array_delete(global.party,3,1)
			instance_create_depth(250,625,1,oScreenwipebar)
			text(250,625,"3. " + global.party[2][0])
			global.goto = 2.06
		}
		break;
		
		
		case 2.5:
		if global.txtinput != "" {
			array_insert(global.party, 3,[global.txtinput,[],100,0,0,[]])
			array_delete(global.party,4,1)
			instance_create_depth(250,660,1,oScreenwipebar)
			text(250,660,"4. " + global.party[3][0])
			global.goto = 2.06
		}
		break;
		
		
		case 2.6:
		if global.txtinput != "" {
			array_insert(global.party, 4,[global.txtinput,[],100,0,0,[]])
			array_delete(global.party,5,1)
			instance_create_depth(250,695,1,oScreenwipebar)
			text(250,695,"5. " + global.party[4][0])
			global.goto = 2.06
		}
		break;
		
		
		case 3:
		if global.txtinput = "6" {
			screenwipe(250,135,13,3.1)
		}
		else if global.txtinput != "" {
			global.month = 2 + int64(global.txtinput)
			switch global.month {
				case 3: global.smonth = "March"; break;
				case 4: global.smonth = "April"; break;
				case 5: global.smonth = "May"; break;
				case 6: global.smonth = "June"; break;
				case 7: global.smonth = "July"; break;
			}
			screenwipe(250,135,13,4)
		}
		break;
		
		
		case 3.1:
		screenwipe(250,135,13,3)
		break;
		
		
		default:
		if global.txtinput != "" {
			array_push(global.party, [global.txtinput,[],100,0,0,[]])
			global.goto = global.menu + 0.01
		}
		break;
		
		
		case 4:
		screenwipe(250,240,9,4.1)
		break;
	}
}



if global.goto != 0 {
	switch global.goto {
		case 1:
		text(250,135,"Traveling to Oregon isn’t easy! ")
		text(250,170,"But if you’re a banker, you’ll ")
		text(250,205,"have more money for supplies and ")
		text(250,240,"services than a carpenter or a ")
		text(250,275,"farmer.")
		text(250,310,"However, the harder you have to ")
		text(250,345,"try, the more points you deserve!")
		text(250,380,"Therefore, the farmer earns the ")
		text(250,415,"greatest number of points and the")
		text(250,450,"banker earns the least.")
		centertext(744,"Press ENTER or click to continue")
		break;
		
		case 1.01:
		global.menu = 0
		global.goto = 0
		global.trans = false
		room_goto(rPreMattShop)
		break;
		
		
		case 2:
		menuvisual(128,-13,sPartyPrep)
		instance_create_depth(250,64,1,oScreenwipebar,)
		instance_create_depth(250,688,1,oScreenwipebar,)
		
		text(250,485,"What is the first name of the")
		write(250,520,"Wagon leader? ","w")
		break;
		
		
		case 2.01:
		text(250,485,"What are the first names of the ")
		text(250,520,"four other members in your party?")
		text(250,555,"1. " + global.party[0][0])
		write(250,590,"2. ","w")
		text(250,625,"3. ")
		text(250,660,"4. ")
		text(250,695,"5. ")
		break;
		
		
		case 2.02:
		keyboard_string = ""
		text(250,590,"2. " + global.party[1][0])
		write(250,625,"3. ","w")
		instance_create_depth(250,590,1,oScreenwipebar)		
		instance_create_depth(250,625,1,oScreenwipebar)
		break;
		
		
		case 2.03:
		keyboard_string = ""
		text(250,625,"3. " + global.party[2][0])
		write(250,660,"4. ","w")
		instance_create_depth(250,625,1,oScreenwipebar)		
		instance_create_depth(250,660,1,oScreenwipebar)
		break;
		
		
		case 2.04:
		keyboard_string = ""
		text(250,660,"4. " + global.party[3][0])
		write(250,695,"5. ","w")
		instance_create_depth(250,660,1,oScreenwipebar)
		break;
		
		
		case 2.05:
		keyboard_string = ""
		text(250,695,"5. " + global.party[4][0])
		write(250,730,"Are these names correct? ","y")
		instance_create_depth(250,695,1,oScreenwipebar)
		break;
		
		
		case 2.06:
		keyboard_string = ""
		write(250,730,"Are these names correct? ","y")
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		case 2.1:
		keyboard_string = ""
		write(250,730,"Change which name? ",5)
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		case 2.2:
		keyboard_string = ""
		write(250,555,"1. ","w")
		text(250,730,"Change which name? " + global.txtinput)
		instance_create_depth(250,555,1,oScreenwipebar)
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		case 2.3:
		keyboard_string = ""
		write(250,590,"2. ","w")
		text(250,730,"Change which name? " + global.txtinput)
		instance_create_depth(250,590,1,oScreenwipebar)
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		case 2.4:
		keyboard_string = ""
		write(250,625,"3. ","w")
		text(250,730,"Change which name? " + global.txtinput)
		instance_create_depth(250,625,1,oScreenwipebar)
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		case 2.5:
		keyboard_string = ""
		write(250,660,"4. ","w")
		text(250,730,"Change which name? " + global.txtinput)
		instance_create_depth(250,660,1,oScreenwipebar)
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		case 2.6:
		keyboard_string = ""
		write(250,695,"5. ","w")
		text(250,730,"Change which name? " + global.txtinput)
		instance_create_depth(250,695,1,oScreenwipebar)
		instance_create_depth(250,730,1,oScreenwipebar)
		break;
		
		
		
		case 3:
		instance_create_depth(128,-13,1,oScreenwipebar)
		instance_create_depth(250,744,1,oScreenwipebar)
		menuvisual(704,64,sBanner)
		menuvisual(704,688,sBanner)
		text(250,135,"It is 1848. Your jumping off ")
		text(250,170,"place for Oregon is Independence,")
		text(250,205,"Missouri. You must decide which ")
		text(250,240,"month to leave Independence.")
		button(250,310,"1. March",1)
		button(250,345,"2. April",2)
		button(250,380,"3. May",3)
		button(250,415,"4. June",4)
		button(250,450,"5. July",5)
		button(250,485,"6. Ask for advice",6)
		write(250,555,"What is your choice? ",6)
		break;
		
		
		case 3.1:
		text(250,135,"You attend a public meeting held ")
		text(250,170,"for “folks with the California - ")
		text(250,205,"Oregon fever.” You’re told: ")
		text(250,275,"If you leave too early, there ")
		text(250,310,"won’t be any grass for your oxen")
		text(250,345,"to eat. If you leave too late, ")
		text(250,380,"you may not get to Oregon before ")
		text(250,415,"winter comes. If you leave at ")
		text(250,450,"just the right time, there will ")
		text(250,485,"be green grass and the weather ")
		text(250,520,"will still be cool.")
		centertext(744,"Press ENTER or click to continue")
		break;
		
		
		case 4:
		text(250,240,"Before leaving Independence you ")
		text(250,275,"should buy equipment and ")
		text(250,310,"supplies. You have $" + string(global.money) + " in cash,")
		text(250,345,"but you don’t have to spend it ")
		text(250,380,"all now.")
		
		text(250,485,"You can buy whatever you need at ")
		text(250,520,"Matt’s General Store.")
		centertext(744,"Press ENTER or click to continue")
		break;
		
		
		case 4.1:
		global.menu = 0
		global.goto = 0
		global.trans = false
		room_goto(rMattShop)
		break;
	}
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}







