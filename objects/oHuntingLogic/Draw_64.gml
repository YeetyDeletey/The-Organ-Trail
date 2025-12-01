//draw_text(5,5,"8:00 AM")
if (global.time < 12) {
	draw_text(5,5,string(global.time) + ":00 AM")
} else if (global.time == 12) {
	draw_text(5,5,string(global.time) + ":00 PM")
} else {
	draw_text(5,5,string(global.time-12) + ":00 PM")	
}

