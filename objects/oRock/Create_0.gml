if(random_range(0,1) > 0.5) {
	sprite_index = sRock2
}

while(place_meeting(x,y,oPlayer) || place_meeting(x,y,oZombie)){
    instance_create_depth(random(1350),random(750),1,oRock)
    instance_destroy();
}
image_xscale = 2
image_yscale = 2
depth = -y