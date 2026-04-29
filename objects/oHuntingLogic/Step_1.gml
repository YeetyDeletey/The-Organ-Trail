if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space) {
	switch (global.menu) {
		case 3:
		screenwipe(where[0],where[1],where[2],1)
		break;
	}
}
//display text
if (global.htextbox != "") {
	where = htextbox()
	global.menu = 3}
if (global.goto != 0) {
	global.menu = global.goto
	global.goto = 0}



if(global.menu == 1){	//while hunting occurring
	
	//spawn deer
    if(spawn_time_d <= 0){
	    spawnatedge(oDeer)
	    spawn_time_d = random(2) + 2.5}
	else{
		spawn_time_d -= delta_time/1000000}

	//spawn squirrel
	if(spawn_time_s <= 0){
		spawnatedge(oSquirrel)
	    spawn_time_s = random(2) + 1.5}
	else{
	    spawn_time_s -= delta_time/1000000}
		
	//spawn zombie
	if (zcounter == 0) {
		repeat(2) {	//2 tries
			i = irandom(array_length(poptions)-1)
			if (points >= poptions[i]) {
				spawnatedge(zoptions[i])
				points -= poptions[i]
				zcounter = max(mindelay + irandom(maxrand) - (global.bulletsShot * 6) + poptions[i] * 6, 60)
				break;}
		} //if it faisl
		if (zcounter == 0) {zcounter = max(mindelay + irandom(maxrand) - (global.bulletsShot * 6),60)}
		//some point balancing
		if (points <= 5) {
			points += 10
		} else if (points < 10) {
			points += 5
		} else if (points > 50) {
			points -= int64((points - 50) / 3)
		}
		
	}
	show_debug_message(string(points) + "      " + string(zcounter))
	//progress time
    counter++
	zcounter--
	if (counter % 6 == 0) {points++} //10 per second
	if (counter == 120) {
		global.time++
		counter = 0
	} if (global.time == 18) {
	    global.goto = 0;
	    global.trans = false;
		room_goto(rThinkingScreen)
	}
}

