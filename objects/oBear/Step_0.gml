//when shot
if(global.menu == 1 && alive){
    if(place_meeting(x,y, oBoolet)){
        inst = instance_place(x, y, oBoolet);
        if (inst != noone) {

            bearlife -= 3;

            var nearestBoolet = instance_nearest(x, y, oBoolet);
            instance_destroy(nearestBoolet);
        }
        //when killed
        if(bearlife == 0){

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
    if((distance_to_object(oPlayer) < 200 || distance_to_object(oBoolet) < 50 || enraged) && rage_time > 0){
        enraged = true;
        mp_potential_step_object(global.playerx,global.playery,3,oWall);
        rage_time -= delta_time/1000000;
    }
    else{
        enraged = false;
        rage_time = 4;
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
    if(distance_to_object(oPlayer) < 15 && hit_time == 0){
        hit_time = 1;
        global.htextbox = "A bear attacked you.\nYou limp back to your camp\nunable to bring back any food.";
        oHuntingLogic.food_gained = 0;
        global.time = 18;
    }
    
    if(move_time < 0){
        randomise();
        x_speed = random_range(mins, maxs);
        y_speed = random_range(mins, maxs);
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
    
    if(distance_to_object(oDeer) < 15){
        var nearestDeer = instance_nearest(x, y, oDeer);
        instance_destroy(nearestDeer);
    }
}