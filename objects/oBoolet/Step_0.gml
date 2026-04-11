if (global.menu == 1) {
	if(lifetime == 0){
	    instance_destroy()
	}
	else{
	    lifetime -= delta_time/1000000
    
	    x += xspeed
	    y += yspeed
	}
}
depth = -y