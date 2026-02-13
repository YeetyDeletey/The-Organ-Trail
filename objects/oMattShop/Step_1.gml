


if keyboard_check_pressed(vk_enter) and global.trans = false and global.txtinput != "" or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false and global.txtinput != "" {
	switch global.menu {
		case 0.1:								//Main menu starting screen
		screenwipe(375,170,16,real(global.txtinput))
		break;
		
		
		case 5:
		if (real(global.txtinput) <= 100) and global.money - (oxenspent + real(global.txtinput)*10 + foodspent + clothingspent + ammospent + sparespent) >= 0 {
			sparespent += 10 * real(global.txtinput)
			global.wheels = real(global.txtinput)
			global.goto = 5.1}
		break;
		
		
		case 5.1:
		if (real(global.txtinput) <= 100) and global.money - (oxenspent + real(global.txtinput)*10 + foodspent + clothingspent + ammospent + sparespent) >= 0 {
			sparespent += 10 * real(global.txtinput)
			global.axles = real(global.txtinput)
			global.goto = 5.2}
		break;
		
		
		case 5.2:
		if (real(global.txtinput) <= 100) and global.money - (oxenspent + real(global.txtinput)*10 + foodspent + clothingspent + ammospent + sparespent) >= 0 {
			sparespent += 10 * real(global.txtinput)
			global.tongues = real(global.txtinput)
			screenwipe(375,170,17,0.1)
			bill = oxenspent + foodspent + clothingspent + ammospent + sparespent
			tempmoney = global.money - bill
			instance_create_depth(900,555,1,oScreenwipebar)}
		break;
		
		
		default:
		switch global.menu {	//extra switch statement added so everything here does the stuff below before the break
			case 1:
			if (real(global.txtinput) <= 3) and global.money - (real(global.txtinput)*40 + foodspent + clothingspent + ammospent + sparespent) >= 0 {
				oxenspent = 40*real(global.txtinput)}
			break;
			
			case 2:
			if (real(global.txtinput) <= 50) and global.money - (oxenspent + real(global.txtinput) + clothingspent + ammospent + sparespent) >= 0 {
				foodspent = 1*real(global.txtinput)}
			break;
			
			case 3:
			if (real(global.txtinput) <= 100) and global.money - (oxenspent + foodspent + real(global.txtinput)*10 + ammospent + sparespent) >= 0 {
				clothingspent = 10*real(global.txtinput)}
			break;
			
			case 4:
			if (real(global.txtinput) <= 3) and global.money - (oxenspent + foodspent + clothingspent + real(global.txtinput)*20 + sparespent) >= 0 {
				ammospent = 20*real(global.txtinput)}
			break;
			
			case 5:	//shouldn't happen
			if (real(global.txtinput) <= 100) and global.money - (real(global.txtinput)*40 + foodspent + clothingspent + ammospent + sparespent) >= 0 {
				sparespent = 10*real(global.txtinput)}
			break;
		}
		
		screenwipe(375,170,17,0.1)
		instance_create_depth(865,510,1,oScreenwipebar)
		bill = oxenspent + foodspent + clothingspent + ammospent + sparespent
		tempmoney = global.money - bill
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		//this is the code that actually adds new stuff to the screen
		case 0.1:
		templimit = 6
		mainscreen()
		break;
		
		
		case 1:
		templimit = 3
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," There are 2 oxen in a yoke!")
		text(375,275," I'd normally reccomend at least")
		text(375,310," 3 yoke, but stock is running low")
		text(375,345," so 3 is the most I can provide.")
		text(375,380," I charge $40 a yoke.")
		
		text(375,450," How many yoke do you")
		write(375,485," like to buy? ",0)
		
		text(375,730," Bill so far: $" + string(bill) + ".00")
		menuvisual(865,510,sOxen)
		break;
		
		
		case 2:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," Food's a bit scarce these days,")
		text(375,275," So the best I can offer you is")
		text(375,310," a dollar per pound, with a limit")
		text(375,345," of 50 pounds max. I have to feed")
		text(375,380," myself, after all.")
		
		text(375,450," How many pounds of food do you")
		write(375,485," like to buy? ",0)
		
		text(375,730," Bill so far: $" + string(bill) + ".00")
		menuvisual(865,510,sFood)
		break;
		
		
		case 3:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," You'll need warm clothing in")
		text(375,275," the mountains. I reccomend")
		text(375,310," taking at least 2 sets of ")
		text(375,345," clothes per person. Each ")
		text(375,380," set is $10.00")
		
		text(375,450," How many sets of clothes do you")
		write(375,485," like to buy? ",0)
		
		text(375,730," Bill so far: $" + string(bill) + ".00")
		menuvisual(865,510,sClothing)
		break;
		
		
		case 4:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," I sell ammunition in boxes")
		text(375,275," of 20 bullets. Due to the")
		text(375,310," current situation, each box")
		text(375,345," is $20.00, and you can buy")
		text(375,380," 3 boxes at most.")
		
		text(375,450," How many boxes of ammo do you")
		write(375,485," like to buy? ",0)
		
		text(375,730," Bill so far: $" + string(bill) + ".00")
		menuvisual(865,510,sGun)
		break;
		
		
		case 5:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," It's a good idea to have a ")
		text(375,275," few spare parts for your ")
		text(375,310," wagon. Here are the prices:")
		
		text(375,380," wagon wheel  - $10.00 each")
		text(375,415," wagon axle   - $10.00 each")
		text(375,450," wagon tongue - $10.00 each")
		
		write(375,520," How many wagon wheels? ",0)
		
		text(375,730," Bill so far: $" + string(bill) + ".00")
		menuvisual(900,555,sSpareparts)
		sparespent = 0
		break;
		
		
		case 5.1:
		instance_create_depth(375,520,1,oScreenwipebar)
		write(375,520," How many wagon axles? ",0)
		break;
		
		
		case 5.2:
		instance_create_depth(375,520,1,oScreenwipebar)
		write(375,520," How many wagon tongues? ",0)
		break;
			
			
		case 6:		//leave screen
		global.oxen = oxenspent / 40
		global.food = foodspent
		global.clothing = clothingspent / 10
		global.ammo = ammospent
		
		room_goto(rThinkingScreen)
		break;
	}
	
	//global.goto stuff is only supposed to activate for 1 frame so
	//it turns off here
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}



/*
stuff still to be added to this menu:
do work on templimit and <= checks


