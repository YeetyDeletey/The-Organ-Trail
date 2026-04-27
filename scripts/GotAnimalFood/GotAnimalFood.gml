// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gotanimalfood(amount, excess){
	if(excess == 0){
		global.htextbox = "You gained " + string(amount) + " food."
	}
	else if (amount > 0 && excess > 0) {
		global.htextbox = "You were only able to carry " + string(amount - excess) + " pounds \nof food. The excess meat on the corpse \nwill attract some zombies to the area"
	} else {
		global.htextbox = "You are carrying the maximum amount \nof food. The stench of the corpse \nwill attract more zombies to the area"
	}
}