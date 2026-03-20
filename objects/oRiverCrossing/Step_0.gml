if (global.menu == 3) {
	x -= 2.5
	y -= 1
	if (y == 340) {
		global.goto = 3.5
		instance_destroy()
	}
	count--
	if (count == 0) {
		count = 10
		rand = round(random(100)) {	//THIS TO BE REPLACED WITH MORE
			if (rand < 5) {			//COMPLEX RANDOM FUNCTION
				global.textbox = "Aw heck an oxen drowned\nor something"
			}
		}
	}
}