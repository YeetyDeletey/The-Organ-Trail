


if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false and global.txtinput != "" {
	switch global.menu {
		//global.menu being 0 means its the base screen
		//you only get off it after a screenwipe
		case 0.1:								//Main menu starting screen
		switch global.txtinput {
							//txtinput is whatever the player inputted
							//last num of screenwipe sets global.goto to itself
							//when global.goto gets set to anything it does new stuff
							//(creating new text)
			case 1:
			screenwipe(375,170,16,1)
			break;
	
	
			case 2:
			screenwipe(375,170,16,2)
			break;
	
	
			case 3:
			screenwipe(375,170,16,3)
			break;
	
	
			case 4:
			screenwipe(375,170,16,4)
			break;
	
			
			case 5:
			screenwipe(375,170,16,5)
			break;
			
			
			case 6:
			screenwipe(375,170,16,6)
			break;
			
			
			default:
			break;
		}
		break;
		
		//when not on the main screen, it is assumed that you're 
		//clicking through multiple text boxes
		default:
		switch global.menu {
			case 1:
			oxenspent = 40*real(global.txtinput)
			break;
			
			case 2:
			foodspent = 1*real(global.txtinput)
			break;
			
			case 3:
			clothingspent = 10*real(global.txtinput)
			break;
			
			case 4:
			ammospent = 2*real(global.txtinput)
			break;
			
			case 5:
			sparespent = 10*real(global.txtinput)
			break;
		}
		bill = oxenspent + foodspent + clothingspent + ammospent + sparespent
		tempmoney = global.money - bill
		screenwipe(375,170,18,0.1)
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		//this is the code that actually adds new stuff to the screen
		case 0.1:
		text(375,170,"            Date")
		instance_create_depth(375,205,1,oMattBanner)
		txt = ""; for (i = 0; i < (4-string_length(string(oxenspent)));i++) {txt += " "}; 
		txt += "$" + string(oxenspent) + ".00"
		button(375,240,"1. Oxen           " + txt,1)
		txt = ""; for (i = 0; i < (4-string_length(string(foodspent)));i++) {txt += " "}; 
		txt += "$" + string(foodspent) + ".00"
		button(375,275,"2. Food           " + txt,2)
		txt = ""; for (i = 0; i < (4-string_length(string(clothingspent)));i++) {txt += " "}; 
		txt += "$" + string(clothingspent) + ".00"
		button(375,310,"3. Clothing       " + txt,3)
		txt = ""; for (i = 0; i < (4-string_length(string(ammospent)));i++) {txt += " "}; 
		txt += "$" + string(ammospent) + ".00"
		button(375,345,"4. Ammunition     " + txt,4)
		txt = ""; for (i = 0; i < (4-string_length(string(sparespent)));i++) {txt += " "}; 
		txt += "$" + string(sparespent) + ".00"
		button(375,380,"5. Spare Parts    " + txt,5)
		button(375,415,"6. Leave store",6)
		instance_create_depth(375,450,1,oMattBanner)
		txt = "      Total bill: "
		for (i = 0; i < (4-string_length(string(bill)));i++) {txt += " "}
		txt += "$" + string(bill) + ".00"
		text(375,485,txt)
		
		txt = "Amount you have:  "
		for (i = 0; i < (4-moneylen);i++) {txt += " "}
		txt += "$" + string(tempmoney) + ".00"
		text(375,555,txt)

		text(375,625," Which item would you")
		write(375,660," like to buy? ",6)
		break;
		
		
		case 1:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,310," There are 2 oxen in a yoke!")
		text(375,345," I reccomend at least 3 yoke.")
		text(375,380," I charge $40 a yoke.")
		
		text(375,450," How many yoke do you")
		write(375,485," like to buy? ",0)
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
		break;
		
		
		case 3:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," You'll need warm clothing in")
		text(375,275," yada yada words about clothing")
		text(375,310," 2 sets per person in base game")
		text(375,345," 10 dollars a set")
		text(375,380," Numbers to be changed in balance changes")
		
		text(375,450," How many sets of clothes do you")
		write(375,485," like to buy? ",0)
		break;
		
		
		case 4:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," I sell ammunition in boxes")
		text(375,275," yada yada words about ammo")
		text(375,310," 20 bullets a box")
		text(375,345," 2 dollars a box")
		text(375,380," Numbers to be changed in balance changes")
		
		text(375,450," How many boxes of ammo do you")
		write(375,485," like to buy? ",0)
		break;
		
		
		case 5:
		instance_create_depth(375,170,1,oMattBanner)
		
		text(375,240," Oh god this has 3 subactions in ")
		text(375,275," this menu")
		text(375,310," 10$ each, wagon wheels, axles,")
		text(375,345," and tongues")
		text(375,380," Numbers to be changed in balance changes")
		
		text(375,450," How many pounds of food do you")
		write(375,485," like to buy? ",0)
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
make money actually show the vsrisble it shjoul;d
make each thing change the appropriate variable


