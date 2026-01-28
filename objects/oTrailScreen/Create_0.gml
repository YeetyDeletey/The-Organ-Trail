
//The square above this text needs to be able to change colors based on weather
//Its the ground so maybe more as well too
menuvisual(0,0,sTopOfTrailScreen)
menuvisual(800,200,sWagon)
instance_create_depth(0,347.5,10,oSolidSquare,{wid:room_width,hei:4})

centertext(500,"Press ENTER to size up the situation")

instance_create_depth(0,537.5,10,oSolidSquare,{wid:room_width,hei:7,color:"w"})
btext(5,555,"                     Date: " + global.smonth + " " + string(global.day) + ", " + string(global.year))
btext(5,590,"                  Weather: " + global.weather)
btext(5,625,"                   Health: " + global.phealth)
btext(5,660,"                     Food: " + string(global.food) + " pounds")
btext(5,695,"            Next landmark: " + string(global.distancetolandmark))
btext(5,730,"           Miles traveled: " + string(global.distance))

if global.showlandmark != 0 {
	menuvisual(683,384,global.showlandmark,-100)
	global.menu = 0.1
} else {
	global.menu = 1	
}
where = [0,0,0]

cmax = 60
counter = 0

/*Global.menu states:
0.1: Showing a landmark
0.2: On a textbox
1: on the trail, timer ticking down
