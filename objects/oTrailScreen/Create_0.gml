//stuff to figure out whats happening when enter
where = [0,0,0]
if global.showlandmark != 0 {//only at independence
	menuvisual(683,384,global.showlandmark,-100)
	global.menu = 0.1
} else if (global.landmark == "f" and global.textbox != "" || global.landmark == "l" and global.textbox != "") {
	where = textbox()
	global.menu = 0.2
} else if (global.landmark == "r") {	//could theoretically move this section 
	room_goto(rRiverScreen)				//into code in thinking screen for efficiency
} else if (global.landmark == "s") {
	room_goto(rSplitTrailScreen)
} else {	//default is going from thinking to trail screen
	global.menu = 1	
	if global.textbox != "" {
		where = textbox()
		global.menu = 0.2
	}
}
//river goes to options screen on how to cross
//forts and landmarks just keep going with a text box
//split opens up split menu box



//creating visual stuff
menuvisual(0,70,sTopOfTrailScreen)
menuvisual(850,200,sWagon)
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

switch global.nextlandmark {
	//NOTE: STILL NEED FORT HALL, FORT BOISE, BLUE MOUNTAINS, FORT WALLA WALLA, THE DALLES
	case "Fort Kearney":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTFortKearney})
	break;
	case "Chimney Rock":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTChimneyRock})
	break;
	case "Fort Laramie":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTFortLaramie})
	break;
	case "Independence Rock":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTIndependenceRock})
	break;
	case "South Pass":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTSouthPass})
	break;
	case "Fort Bridger":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTFortBridger})
	break;
	case "Soda Springs":
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTSodaSprings})
	break;
	
	default:
	//this catches all the river crossings
	instance_create_depth(0,203,1,oTrailMarker,{spr:sTRiver})
	break;
}




//setting up variables
cmax = 40
counter = 0
settravel()

/*Global.menu states:
0.1: Showing a landmark
0.2: On a textbox
1: on the trail, timer ticking down
