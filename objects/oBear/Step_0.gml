//when shot
if(global.menu == 1 && alive){
    if(place_meeting(x,y, oBoolet)){
        inst = instance_place(x, y, oBoolet);
        if (inst != noone) {
            life -= 3;
        }
        //when killed
        if(life == 0){
            instance_destroy(inst);
            alive = false;
            image_yscale = -2
            if(oHuntingLogic.food_gained + meat <= 100){
    			gotanimalfood(meat,0);
    			oHuntingLogic.food_gained += meat;
    			global.food += meat;
    		} 
            else if(oHuntingLogic.food_gained + meat > 100 && oHuntingLogic.food_gained < 100){
    			gotanimalfood(meat,oHuntingLogic.food_gained+meat-100);
    			global.food += (100 - oHuntingLogic.food_gained);
    			oHuntingLogic.food_gained = 100;
    		} 
            else{
    			gotanimalfood(0,meat);
            }
        }
        
    }
    
    //when enraged
    if(distance_to_object(oPlayer) < 200 || distance_to_object(oBoolet) < 100 || enraged){
        enraged = true;
        mp_potential_step_object(global.playerx,global.playery,3,oWall);
    }
    
    if (!enraged) {
		//wander aimlessly
		x += x_speed
		if (place_meeting(x,y,oWall)) {
			x -= x_speed * 2
			x_speed *= -1}
	
		y += y_speed
		if (place_meeting(x,y,oWall)) {
			y -= y_speed * 2
			y_speed *= -1}
	}
    if(distance_to_object(oPlayer) < 15){
        global.food = 0;
        global.time = 18;
    }
    
    if(distance_to_object(oDeer) < 15){
        var nearestDeer = instance_nearest(x, y, oDeer);
        instance_destroy(nearestDeer);
    }
}