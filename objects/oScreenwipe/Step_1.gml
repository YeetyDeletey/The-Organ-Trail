if counter < rows {
	instance_create_depth(ex,ey+(counter*35),0,oScreenwipebar)
	counter += 1
}
else if counter = rows {
	global.goto = goto
	counter += 1
	show_debug_message(global.goto)
	instance_destroy()
}