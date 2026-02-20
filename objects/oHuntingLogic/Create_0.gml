
//making things, will add if/switch statement based on type later
instance_create_layer(704,396,"Player",oPlayer)

repeat(10) {
	instance_create_layer(random(1350),random(750),"Terrain",oRock)
}
repeat(5) {
	instance_create_layer(random(1350),random(750),"Terrain",oTree)
}

instance_create_layer(random(1350),random(750),"Zombies",oWalkZombie)


draw_set_font(global.pressstart)
global.menu	= 1

where = [0,0,0]
counter = 0

spawn_time = random_range(1, 3)

spawn1 = random_range(0, 800)
spawn2 = random_range(0 ,1350)


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