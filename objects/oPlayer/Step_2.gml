
if (place_meeting(x,y,oZombie)) and invin == 0 {
	bite++
	if(bite == 30) {
		invin = maxinvin
		global.textbox = "You got bitten"
		global.party[0].infection += 30
	}
} else if (bite > 0) {
	if (bite < 15) {
		global.textbox = "You got nicked by a zombie\nThere's a chance you got bitten"
		if (random(1) > 0.5) {
			global.bitten = true
		}
	} else {
		global.textbox = "You got bitten"
		invin = maxinvin
		global.party[0].infection += 30
	}
	bite = 0
}

//show_debug_message(bite)


