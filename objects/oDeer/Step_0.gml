if(global.menu == 1){
   
   if(position_meeting(x, y, oWall)){
       y += 20
       x -= 20;
   }
   
   
   x += x_speed 
    y += y_speed
   
   
   if(x > 1350 || x < -15 || y < -15 || y > 820){
       instance_destroy()
   }
   if(life < 0){ 
    instance_destroy()
    } 
    else{
        life -= delta_time/1000000
    }
}   


