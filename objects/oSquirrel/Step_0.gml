if(global.menu == 1){
    
    if(hit){
        instance_destroy();
        if(oHuntingLogic.food_gained <= 95){
            oHuntingLogic.food_gained += 5;
            global.food += 5;
            oPlayer.amount = 5;
            oPlayer.food_gained = true;
        }
        else if(oHuntingLogic.food_gained > 95 && oHuntingLogic.food_gained < 100){
            global.food += (100 - oHuntingLogic.food_gained);
            oPlayer.amount = (100 - oHuntingLogic.food_gained);
            oHuntingLogic.food_gained = 100;
            oPlayer.food_gained = true;
        }
        else{
            oPlayer.food_gained = true;
            oPlayer.amount = 0;
        }
    }
   
   if(place_meeting(x, y, oWall)){
        if(place_meeting(x + x_speed, y, oWall)){
            x_speed = -1* x_speed
        }
        if(place_meeting(x, y + y_speed, oWall)){
            y_speed = -1* y_speed
        }
    }
   
   
   x += x_speed 
    y += y_speed
   
   
   if(x > 1350 || x < -15 || y < -15 || y > 820){
       instance_destroy()
   }
    if(place_meeting(x, y, oBorder)){
        show_debug_message("collided with border");
        instance_destroy();
    }
   if(life < 0){ 
    instance_destroy()
    } 
    else{
        life -= delta_time/1000000
    }
}   


