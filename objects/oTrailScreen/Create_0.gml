//stuff to figure out whats happening when enter
where = [0,0,0]

if global.showlandmark != 0 {//only at independence
	menuvisual(683,384,global.showlandmark,-100)
	global.menu = 0.1
} else if (global.landmark == "f" || global.landmark == "l") {
	where = textbox()
	global.menu = 0.2
} else if (global.landmark == "r") {	//could theoretically move this section 
	room_goto(rRiverScreen)				//into code in thinking screen for efficiency
} else if (global.landmark == "s") {
	show_debug_message("You're at a split path")
	room_goto(rSplitTrailScreen)
}else {	//default is going from thinking to trail screen
	global.menu = 1	
	if global.textbox != "" {
		where = textbox()
		global.menu = 0.2
	}
}

//river goes to options screen on how to cross
//forts and landmarks just keep going with a text box
//split opens up split menu box

menuvisual(0,0,sTopOfTrailScreen)
menuvisual(800,200,sWagon)
instance_create_depth(0,347.5,10,oSolidSquare,{wid:room_width,hei:4})

centertext(500,"Press ENTER to size up the situation")

instance_create_depth(0,537.5,10,oSolidSquare,{wid:room_width,hei:7,color:"w"})

function changingthings() {
	btext(5,555,"                     Date: " + global.smonth + " " + string(global.day) + ", " + string(global.year))
	btext(5,590,"                  Weather: " + global.weather)
	btext(5,625,"                   Health: " + global.phealth)
	btext(5,660,"                     Food: " + string(global.food) + " pounds")
	btext(5,695,"            Next landmark: " + string(global.distancetolandmark))
	btext(5,730,"           Miles traveled: " + string(global.distance))
}
changingthings()

cmax = 60
counter = 0



/*Global.menu states:
0.1: Showing a landmark
0.2: On a textbox
1: on the trail, timer ticking down
