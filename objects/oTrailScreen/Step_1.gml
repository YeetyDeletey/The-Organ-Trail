if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {

	nextday()
	instance_create_depth(5,555,1,oScreenwipebar)
	instance_create_depth(5,590,1,oScreenwipebar)
	instance_create_depth(5,625,1,oScreenwipebar)
	instance_create_depth(5,660,1,oScreenwipebar)
	instance_create_depth(5,695,1,oScreenwipebar)
	instance_create_depth(5,730,1,oScreenwipebar)
	btext(5,555,"                     Date: " + global.smonth + " " + string(global.day) + ", " + string(global.year))
	btext(5,590,"                  Weather: " + global.weather)
	btext(5,625,"                   Health: " + global.health)
	btext(5,660,"                     Food: " + string(global.food) + " pounds")
	btext(5,695,"            Next landmark: " + string(global.distancetolandmark))
	btext(5,730,"           Miles traveled: " + string(global.distance))

}