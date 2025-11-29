// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function textbox(){
	//will do automating figuring out size based on lines/line breaks later
	//alongside making the edges look correct
	hei = 0
	wid = 0
	linelist = []
	
	i = 1
	line = ""
	go = false
	while (i < string_length(string(global.textbox))+1) {
		if (string_char_at(string(global.textbox),i) != "\n") {
			line += string_char_at(string(global.textbox),i)
			if (i == string_length(string(global.textbox))) {go = true}
		} else {go = true}
		
		if (go) {
			linelist[array_length(linelist)] = line
			if (string_length(line) > wid) {wid = string_length(line)}
			hei++
			line = ""
			go = false
		}
		
		
		i++
	}
	
	ex = room_width/2 - (13.3*wid)
	
	i = 0
	while (i < array_length(linelist)) {
		text(ex+13.3,347.5+(35*i)+17.5,linelist[i])
		//show_debug_message(ex)
		i++
	}

	instance_create_depth(ex,347.5,2,oTextBox,{wid:wid,hei:hei})
	
	global.textbox = ""
	return [ex+13.3,365,hei];
}