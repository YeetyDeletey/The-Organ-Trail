// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnatedge(obj){
	spawn1 = random_range(0, 800)
	spawn2 = random_range(0 ,1350)
	var c = choose(1, 2, 3, 4)
	if(c == 1){
	    instance_create_depth(spawn2, 0, 1, obj)
	} else if(c == 2){
	    instance_create_depth(spawn2, 800, 1, obj)
	} else if(c==3){
	    instance_create_depth(0, spawn1, 1, obj)
	} else {
	    instance_create_depth(1350, spawn1, 1, obj)
	}
}