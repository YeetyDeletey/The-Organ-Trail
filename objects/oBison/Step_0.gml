if(global.menu == 1 && alive){
	//if shot
	if(place_meeting(x,y,oBoolet)){
		inst = instance_place(x, y, oBoolet);
		if (inst != noone) {
			instance_destroy(inst)}
		hp--
		moving = true
		sprite_index = sBison
		wandertime = 60 + irandom(180)
		setspeed()
		if (hp == 0) {
			alive = false
			image_yscale = -2
			if(oHuntingLogic.food_gained + meat <= 100){
				gotanimalfood(meat,0)
				oHuntingLogic.food_gained += meat;
				global.food += meat;
			} else if(oHuntingLogic.food_gained + meat > 100 && oHuntingLogic.food_gained < 100){
				gotanimalfood(meat,oHuntingLogic.food_gained+meat-100)
				global.food += (100 - oHuntingLogic.food_gained);
				oHuntingLogic.food_gained = 100;
			} else{
				gotanimalfood(0,meat)}
		}
	}
    
	//movement
	if (moving) {
		x += x_speed
		//only spawns in plains, shouldn't hit a wall
		if (place_meeting(x,y,oWall)) {
			x -= x_speed * 2
			moving = false
			wandertime = 60 + irandom(180)
			sprite_index = sBisonEat
		}
	
		y += y_speed
		if (place_meeting(x,y,oWall)) {
			y -= y_speed * 2
			moving = false
			wandertime = 60 + irandom(180)
			sprite_index = sBisonEat
		}
	} //else is sitting still eating
	
	wandertime--
	if (wandertime == 0) {
		if (moving) {moving = false; sprite_index = sBisonEat}
		else {setspeed(); moving = true; sprite_index = sBison}
		wandertime = 60 + irandom(180)
	}
   
	
	//other reasons to despawn
	if(place_meeting(x, y, oBorder)){ //border
		instance_destroy();}
	
	//visual stuff
	depth = -y
	if (x_speed < 0) {image_xscale = -sc}
	else {image_xscale = sc}
}   
