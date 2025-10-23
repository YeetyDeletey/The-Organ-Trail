
//The square above this text needs to be able to change colors based on weather
//Its the ground so maybe more as well too
square(0,365,room_width,3)

centertext(500,"Press ENTER to size up the situation")

square(0,555,room_width,6)
btext(5,555,"                     Date: " + global.smonth + " " + string(global.day) + ", " + string(global.year))
btext(5,590,"                  Weather: " + global.weather)
btext(5,625,"                   Health: " + global.health)
btext(5,660,"                     Food: " + string(global.food) + " pounds")
btext(5,695,"            Next landmark: ")
btext(5,730,"           Miles traveled: ")

