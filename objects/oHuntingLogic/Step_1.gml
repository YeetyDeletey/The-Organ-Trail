if keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) {
	switch (global.menu) {
		case 3:
		screenwipe(where[0],where[1],where[2],1)
		break;
	}
}
if (global.menu = 2) {
	global.textbox = "You've been bitten!"
	where = textbox()
	global.menu = 3
}
	
if (global.goto != 0) {
	global.menu = global.goto
	global.goto = 0
}