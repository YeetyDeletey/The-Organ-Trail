if (random(1) > 0.4) {image_xscale = 2}
else {image_xscale = -2}
image_yscale = 2
depth = -y

switch spr {
	case "rock":
	rand = random(1)
	if(rand > 0.4) {sprite_index = sRock1}
	else {sprite_index = sRock2}
	break;
	
	case "srock":	//small rock
	sprite_index = sCacti1
	break;
	
	case "ctree":	//coniferous tree
	rand = random(1)
	if(rand > 0.55) {sprite_index = sCTree1}
	else {sprite_index = sCTree2}
	break;
	
	case "dtree":	//deciduous tree
	rand = random(1)
	if(rand > 0.55) {sprite_index = sDTree1}
	else {sprite_index = sDTree2}
	break;
	
	case "cacti":
	sprite_index = sCacti1
	break;
	
	case "desert shrub":
	rand = random(1)
	if(rand > 0.4) {sprite_index = sDesertShrub1}
	else {sprite_index = sDesertShrub2}
	break;
}

while(place_meeting(x,y,oPlayer) || place_meeting(x,y,oZombie)){
    instance_create_depth(random(room_width),random(room_height),1,oTerrain,{spr:spr})
    instance_destroy();
}