x = mouse_x
y = mouse_y

if instance_exists(oButton) {
	if place_meeting(x,y,oButton) {
		global.canclick = true
	}
	else {
		global.canclick = false
	}
}
else {
	global.canclick = true
}

