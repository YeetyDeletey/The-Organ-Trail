if(random_range(0,1) > 0.5) {
	sprite_index = sRock2
}

while(place_meeting(x,y,oPlayer) || place_meeting(x,y,oZombie)){
    instance_create_layer(random(1350),random(750),"Terrain",oTree)
    instance_destroy();
}
