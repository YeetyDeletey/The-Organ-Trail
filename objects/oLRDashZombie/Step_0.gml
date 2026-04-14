
if (global.menu == 1) {
	if (y > global.playery+64) {ey = 64}
	else if (y < global.playery-64) {ey = -16}
	else {ey = 16}
	
	//find if something in way
	if (dashing == 0) {
		
		obj = collision_line(global.playerx, global.playery+ey,x,global.playery+ey,oWall,false,false)
		if (obj != noone) {
			//go around object
			show_debug_message(obj.x)
			if (global.playerx < x) {
				mp_potential_step_object(obj.x - sprite_width/2,global.playery,spd,oWall)
			} else {
				mp_potential_step_object(obj.x + obj.sprite_width + sprite_width/2,global.playery,spd,oWall)
			}
		} else {
			mp_potential_step_object(x,global.playery,spd,oWall)
		}
		if (abs(global.playery - y) < 32 and obj == noone) {
			if (global.playerx < x) {dashing = -1}
			else {dashing = 1}
		}

	} else {	//dashing
		if (counter < -1) {	//stunned
			sprite_index = sZombie
		} else if (counter == -1) {	//reset
			dashing = 0
			counter = 0
			mult = 1
		} else if (counter < 20) {	//charging up
			sprite_index = sLRDZC
		} else {
			sprite_index = sLRDZD
			x += 7 * dashing * mult
			
			if (place_meeting(x,y,oWall) or counter = 105) {
				counter = -30
				x -= 7 * dashing * mult
			}
			if (counter > 65) {
				mult = int64((105-counter)/10)/4
				if ((global.playerx - x) * dashing > 0) {counter = 19; mult = 1}
			}
		}
		
		counter++
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
	if (global.playerx < x) {image_xscale = -1}
	else {image_xscale = 1}
	depth = -y
}

