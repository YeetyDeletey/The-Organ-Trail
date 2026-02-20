if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) {
	switch (global.menu) {
		case 3:
		screenwipe(where[0],where[1],where[2],1)
		break;
	}
}
if (global.textbox != "") {
	where = textbox()
	global.menu = 3
}
	
if (global.goto != 0) {
	global.menu = global.goto
	global.goto = 0
}

if (keyboard_check_pressed(ord("P"))) {
	room_goto(rTrailScreen)}

counter++
if (counter == 60) {
	global.time++
	counter = 0
}
if (global.time == 18) {
	room_goto(rThinkingScreen)
}




if(spawn_time < 0){
    var c = choose(1, 2, 3, 4)
    if(c == 1){
        instance_create_layer(spawn2, 0, "Animals", oDeer)
    }
    else if(c == 2){
        instance_create_layer(spawn2, 800, "Animals", oDeer)
    }
    else if(c==3){
        instance_create_layer(0, spawn2, "Animals", oDeer)
    }
    else {
    	instance_create_layer(1350, spawn2, "Animals", oDeer)
    }
    
    spawn_time = random_range(1, 3)
}
else{
    spawn_time -= delta_time/1000000
}
