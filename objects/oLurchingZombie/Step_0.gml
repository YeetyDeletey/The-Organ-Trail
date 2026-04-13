
if (global.menu == 1) {
	//move
	if (counter < 45) {
		mp_potential_step_object(global.playerx,global.playery,1.5*percsp,oWall)
	} else {
		sprite_index = sLZ2
		mp_potential_step_object(global.playerx,global.playery,4*percsp,oWall)
	}
	
	//move variables
	counter++
	if (counter == cmax) {counter = 0; sprite_index = sLZ1}
	
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


