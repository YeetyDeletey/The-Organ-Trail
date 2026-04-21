

//if should be a number don't forget to add global.txtinput != "" to both sides
if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.eventMenu {
		//global.menu being 0 means its the base screen
		//you only get off it after a screenwipe
		
        case 1:
            if(global.menu == 10000){
                switch global.txtinput{
                  case 1:
                      screenwipe(250, 400,7,1);
                      instance_create_depth(room_width/2, room_height/2-100, 1, oScreenwipebar);
                      break;
                  case 2:
                      screenwipe(250, 400,7,2);
                      instance_create_depth(room_width/2, room_height/2-100, 1, oScreenwipebar);
                      break;
                  case 3:
                      screenwipe(250, 135,12,3);
                      break;
                  case 4:
                      screenwipe(250, 135,12,4);
                      break;
                  case 5:
                      screenwipe(250, 135,12,5);
                      break;
                }
            }
            else{
                room_goto(rThinkingScreen);
            }
        break;
    case 2:
        if(global.menu == 10000){
                switch global.txtinput{
                  case 1:
                      screenwipe(250, 135,12,1);
                      break;
                  case 2:
                      screenwipe(250, 135,12,2);
                      break;
                  case 3:
                      screenwipe(250, 135,12,3);
                      break;
                  case 4:
                      screenwipe(250, 135,12,4);
                      break;
                  case 5:
                      screenwipe(250, 135,12,5);
                      break;
                }
            }
            else{
                room_goto(rThinkingScreen);
            }
    
        default:
        break;
    }
}

if global.goto != 0 {
	switch global.eventMenu {
		//this is the code that actually adds new stuff to the screen
		case 1: 
            switch global.goto{ 
                case 1:
                    text(250, 135, "You get close to the survivor");
                    text(250, 170, "They suddenly jump forwards!");
                    
                    chance = irandom(10);
                    //chance = 4;
                    if(chance > 5){
                        text(250, 205, "You get bitten by the \"survivor\"!");
                        text(250, 240, "You run away from the area in a panic.");
                    }
                    else{
                        text(250, 205, "You dodge the bite from the \"survivor\".");
                        text(250, 275, "Using your gun, you shoot them \nuntil they stop moving.");
                        text(250, 345, "Searching their body you find \nsome supplies");
                        global.ammo += 10;
                        global.clothing += 2;
                        global.money += 20;
                        global.bulletsShot += 1;
                        text(250, 405, "You gained 10 ammo.\nYou gained 2 clothing.\nYou gained 20 dollars.\n");
                    }
                    
                    break;
                case 2:
                    text(250, 135, "You walk past the survivor\nmaking sure to keep your\ndistance from them.");
                    break;
                case 3:
                    text(250, 135, "You clicked Option 3");
                    break;
                case 4:
                    text(250, 135, "You clicked Option 4");
                    break;
                case 5:
                    text(250, 135, "You clicked Option 5");
                    break;
                
            }
		break;
		
		case 2:
            switch global.goto{ 
                case 1:
                    text(250, 135, "You have clicked Option 1 for case 2");
                    break;
                case 2:
                    text(250, 135, "You clicked Option 2 for case 2");
                    break;
                case 3:
                    text(250, 135, "You clicked Option 3 for case 2");
                    break;
                case 4:
                    text(250, 135, "You clicked Option 4 for case 2");
                    break;
                case 5:
                    text(250, 135, "You clicked Option 5 for case 2");
                    break;
                
            }
		break;
		
		case 2.01:
		
		break;
		
		
		case 3:
		mainscreen()
		break;
	}
	
	//global.goto stuff is only supposed to activate for 1 frame so
	//it turns off here
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}






