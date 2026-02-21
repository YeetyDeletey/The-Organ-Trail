
centertext(30,"Independence")
centertext(65,global.smonth + " " + string(global.day) + ", " + string(global.year))

function mainscreen() {
	square(0,135,1408,4)

	btext(5,135," Weather: " + global.weather)
	btext(5,170," Health: " + global.phealth)
	btext(5,205," Pace: " + global.pace)
	btext(5,240," Rations: " + global.rations)

	text(5,310,"You may:")

	button(5,380,"    1. Continue on trail",1)
	button(5,415,"    2. Check supplies",2)
	button(5,450,"    3. Look at map X",3)
	button(5,485,"    4. Change pace",4)
	button(5,520,"    5. Change food rations",5)
	button(5,555,"    6. Stop to rest X",6)
	button(5,590,"    7. Check party status X~",7)
	if (global.landmark == "f") {
		button(5,625,"    8. Attempt to trade X",8)		//or hunt when outside
	} else {
		button(5,625,"    8. Attempt to hunt X",8)		//or trade when inside
	}

	write(5,730,"What is your choice? ",8)	
}
mainscreen()

global.menu = 0.1