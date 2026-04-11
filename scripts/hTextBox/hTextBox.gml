// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function htextbox(){
	//will do automating figuring out size based on lines/line breaks later
	//alongside making the edges look correct
	hei = 0
	wid = 0
	linelist = []
	
	i = 1
	line = ""
	go = false
	while (i < string_length(string(global.htextbox))+1) {
		if (string_char_at(string(global.htextbox),i) != "\n") {
			line += string_char_at(string(global.htextbox),i)
			if (i == string_length(string(global.htextbox))) {go = true}
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
	while (i < array_length(linelist)) {	//note the depth it spawns at
		instance_create_depth(ex+13.3,365+(35*i),-1001,oText,{tex:linelist[i],bl:false})
		i++
	}

	instance_create_depth(ex,347.5,-1000,oTextBox,{wid:wid,hei:hei})
	
	global.htextbox = ""
	return [ex+13.3,365,hei];
}