
//The square above this text needs to be able to change colors based on weather
//Its the ground so maybe more as well too
instance_create_depth(0,347.5,1,oSolidSquare,{wid:room_width,hei:4,color:"g"})

centertext(500,"Press ENTER to size up the situation")

instance_create_depth(0,537.5,2,oSolidSquare,{wid:room_width,hei:7,color:"w"})
btext(5,555,"                     Date: " + global.smonth + " " + string(global.day) + ", " + string(global.year))
btext(5,590,"                  Weather: " + global.weather)
btext(5,625,"                   Health: " + global.health)
btext(5,660,"                     Food: " + string(global.food) + " pounds")
btext(5,695,"            Next landmark: " + string(global.distancetolandmark))
btext(5,730,"           Miles traveled: " + string(global.distance))

