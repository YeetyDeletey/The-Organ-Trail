
if (global.menu == 1) {
	//move	
	distop = distance_to_point(global.playerx,global.playery)
	if (distop < (250 - (starthp - hp) * 20)) {
		//close, move in
		if (!alerted) {
			sprite_index = sLazyMoving
			spd = 3.5
			alerted = true
		} else {spd = max(spd - 0.02, 0.5)}
		mp_potential_step_object(global.playerx,global.playery,spd,oWall)
	} else {
		if (spd > 0.5) {
			//slow down
			mp_potential_step_object(global.playerx,global.playery,spd,oWall)
			spd -= 0.15
		} else {
			//sit down
			sprite_index = sLazySitting
			alerted = false
		}
	}
	
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
	if (distop < 300) {	//doesn't turn when sitting unless close
		if (global.playerx < x) {image_xscale = -1}
		else {image_xscale = 1}}
	depth = -y
}

