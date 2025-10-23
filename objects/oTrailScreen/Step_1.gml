if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	global.inside = false //this should be very removed later
	room_goto(rThinkingScreen)
	
}