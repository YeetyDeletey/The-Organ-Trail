
instance_create_depth(704,396,1,oPlayer)

switch global.climate {
	case "eastern forest":	//6-9, not content with how I draw trees
	repeat(random_range(6,9)) {instance_create_depth(random(room_width-100)+50,random(room_height-100)+50,1,oTerrain,{spr:"dtree"})}
	repeat(random_range(3,5)) {instance_create_depth(random(room_width-200)+100,random(room_height-200)+100,1,oTerrainVisual,{spr:"grass"})}
	break;
			
	case "plains":	//7-10 but actually 0 (all background)
	repeat(random_range(7,10)) {instance_create_depth(random(room_width-200)+100,random(room_height-200)+100,1,oTerrainVisual,{spr:"grass"})}
	break;
			
	case "rocky mountains":	//6-14
	repeat(random_range(3,7)) {instance_create_depth(random(room_width),random(room_height-200)+100,1,oTerrain,{spr:"rock"})}
	repeat(random_range(3,7)) {instance_create_depth(random(room_width-200)+100,random(room_height),1,oTerrain,{spr:"ctree"})}
	break;
			
	case "desert":	//8-15
	repeat(random_range(2,4)) {instance_create_depth(random(room_width-200)+100,random(room_height-100)+50,1,oTerrain,{spr:"cacti"})}
	repeat(random_range(3,6)) {instance_create_depth(random(room_width),random(room_height),1,oTerrain,{spr:"desert shrub"})}
	repeat(random_range(2,5)) {instance_create_depth(random(room_width),random(room_height-200)+100,1,oTerrain,{spr:"rock"})}
	break;
			
	case "western forest":	//7-10, not fully happy with it
	repeat(random_range(7,10)) {instance_create_depth(random(room_width-100)+50,random(room_height-100)+50,1,oTerrain,{spr:"ctree"})}
	break;
}


instance_create_depth(random(1350),random(750),1,oLurchingZombie)


draw_set_font(global.pressstart)
global.menu	= 1

where = [0,0,0]
counter = 0

spawn_time_d = random(2)
spawn_time_s = random(2)

spawn1 = random_range(0, 800)
spawn2 = random_range(0 ,1350)

food_gained = 0;

/*
should probably add variables to say what should be created
when you enter and what type of hunting minigame is happening

types:
basic hunting - spawn some stuff and have a reasonable amount of 
animals/terrain spawn based on area, have a reasonable amount of
zombies spawn based on speed

encounter on the trail - when zombies get attracted to the sound
of gunfire, they'll start to walk towards the wagon and might cause
an encounter in the wagon. 
*/