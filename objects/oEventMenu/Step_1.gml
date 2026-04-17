

//if should be a number don't forget to add global.txtinput != "" to both sides
if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.eventMenu {
		//global.menu being 0 means its the base screen
		//you only get off it after a screenwipe
		
        case 1:
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
}

if global.goto != 0 {
	switch global.eventMenu {
		//this is the code that actually adds new stuff to the screen
		case 1: 
            switch global.goto{ 
                case 1:
                    text(250, 135, "You have clicked Option 1");
                    break;
                case 2:
                    text(250, 135, "You clicked Option 2");
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






