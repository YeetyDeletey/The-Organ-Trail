
if place_meeting(x,y,oScreenwipebar) and candie = true {
	instance_destroy()
}

if place_meeting(x,y,oCursor) {
	keyboard_string = string(go)
}

candie = true