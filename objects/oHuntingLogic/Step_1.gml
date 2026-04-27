if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space) {
	switch (global.menu) {
		case 3:
		screenwipe(where[0],where[1],where[2],1)
		break;
	}
}
if (global.htextbox != "") {
	where = htextbox()
	global.menu = 3
}
	
if (global.goto != 0) {
	global.menu = global.goto
	global.goto = 0
}

if(global.menu != 3){
    counter++
}

if (counter == 120) {
	global.time++
	counter = 0
}
if (global.time == 18) {
    global.goto = 0;
    global.trans = false;
	room_goto(rThinkingScreen)
}



if(global.menu == 1){
    if(spawn_time_d <= 0){
	    var c = choose(1, 2, 3, 4)
	    if(c == 1){
	        instance_create_depth(spawn2, 0, 1, oDeer)
	    } else if(c == 2){
	        instance_create_depth(spawn2, 800, 1, oDeer)
	    } else if(c==3){
	        instance_create_depth(0, spawn1, 1, oDeer)
	    } else {
	    	instance_create_depth(1350, spawn1, 1, oDeer)
	    }
    
	    spawn_time_d = random(2) + 2.5
	}
	else{
		spawn_time_d -= delta_time/1000000
	}

	if(spawn_time_s <= 0){
	    var c = choose(1, 2, 3, 4)
	    if(c == 1){
	        instance_create_depth(spawn2, 0, 1, oSquirrel)
	    }
	    else if(c == 2){
	        instance_create_depth(spawn2, 800, 1, oSquirrel)
	    }
	    else if(c==3){
	        instance_create_depth(0, spawn1, 1, oSquirrel)
	    }
	    else {
	    	instance_create_depth(1350, spawn1, 1, oSquirrel)
	    }
    
	    spawn_time_s = random(2) + 1.5
		spawn1 = random_range(0, 800)
		spawn2 = random_range(0 ,1350)
	}
	else{
	    spawn_time_s -= delta_time/1000000
	}
}

