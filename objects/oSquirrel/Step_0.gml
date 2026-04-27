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
		}
		else if(oHuntingLogic.food_gained + meat > 100 && oHuntingLogic.food_gained < 100){
			gotanimalfood(meat,oHuntingLogic.food_gained+meat-100)
			global.food += (100 - oHuntingLogic.food_gained);
			oHuntingLogic.food_gained = 100;
		}
		else{
			gotanimalfood(0,meat)
		}
	}
    
	//movement
	x += x_speed
	if (place_meeting(x,y,oWall)) {
		x -= x_speed * 2
		x_speed *= -1
	}
	
	y += y_speed
	if (place_meeting(x,y,oWall)) {
		y -= y_speed * 2
		y_speed *= -1
	}
   
	
	//if timewise should despawn
	if(life < 0){
		instance_destroy()}
	else{
		life -= delta_time/1000000}
    
	//if border
	if(place_meeting(x, y, oBorder)){
		instance_destroy();
	}
	
	//visual stuff
	depth = -y
	if (x_speed < 0) {image_xscale = -2}
	else {image_xscale = 2}
}   
