
if (global.menu == 1) {
	//move
	
	
	
	
	//hit
	if (place_meeting(x,y,oBoolet)) {
		hp -= 1
		inst = instance_place(x, y, oBoolet);
		if (inst != noone) {
			instance_destroy(inst)}
			
		if (hp == 0) {instance_destroy()}
		percsp = hp/starthp
	}
	
	//visual stuff
	if (global.playerx < x) {image_xscale = -1}
	else {image_xscale = 1}
	depth = -y
}

