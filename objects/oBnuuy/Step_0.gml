if(global.menu == 1 && alive){
	//if shot
	if(place_meeting(x,y,oBoolet)){
		inst = instance_place(x, y, oBoolet);
		if (inst != noone) {
			instance_destroy(inst)}
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
    
	//get startled when shooting
	if (global.shoot) {
		startled = true
		godir = arctan((y-global.playery)/(x-global.playerx))
		if (x < global.playerx) {
			ex = x - (cos(godir) * 1500)
			ey = y - (sin(godir) * 1500)
		} else {
			ex = x + (cos(godir) * 1500)
			ey = y + (sin(godir) * 1500)
		}
	}
	
	//moving
	if (!startled) {
		//wander aimlessly
		x += x_speed
		if (place_meeting(x,y,oWall)) {
			x -= x_speed * 2
			x_speed *= -1}
	
		y += y_speed
		if (place_meeting(x,y,oWall)) {
			y -= y_speed * 2
			y_speed *= -1}
	} else {
		//run away
		mp_potential_step_object(ex,ey,5,oWall)
	}
   
	
	//other reasons to despawn
	if(life < 0){	//timer
		instance_destroy()}
	else{
		life -= delta_time/1000000}
	if(place_meeting(x, y, oBorder)){ //border
		instance_destroy();}
	
	//visual stuff
	depth = -y
	if (x_speed < 0) {image_xscale = -2}
	else {image_xscale = 2}
}   
if(move_time < 0){
        
        x_speed = random_range(0, maxs);
        y_speed = random_range(0, maxs);
        if random(1) > 0.4 {y_speed = -1 * y_speed}
        if random(1) > 0.4 {x_speed = -1 * x_speed}
        move_time = random_range(3,5);
    }
    else if(move_time < 0.6){
        x_speed = 0;
        y_speed = 0;
        move_time -= delta_time/1000000;
    }
    else{
        move_time -= delta_time/1000000;
    }
