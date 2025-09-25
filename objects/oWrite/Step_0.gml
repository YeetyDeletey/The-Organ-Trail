

global.txtinput = keyboard_string;
if (string_length(global.txtinput) > len)
{
    keyboard_string = string_copy(global.txtinput, 1, len);
	global.txtinput = string_copy(global.txtinput, 1, len);
}
if not array_contains(nums,string_char_at(keyboard_string,string_length(keyboard_string))) {
	keyboard_string = string_copy(keyboard_string, 1, string_length(keyboard_string) - 1);
	global.txtinput = keyboard_string
}



if place_meeting(x,y,oScreenwipebar) and candie = true {
	keyboard_string = string_copy(keyboard_string, 1, string_length(keyboard_string) - 1);
	global.txtinput = keyboard_string
	instance_destroy()
}
candie = true