// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nextday(){
	
	global.food -= global.eat							//eat food
	
	if (global.food < 0) {								//health changes
		global.food = 0
		//do something 	if not eating enough
	} 
	/*then also do stuff for pace, recovering from bodily harm/illness
	I feel like there has to be more that I'm forgetting */
	
	travel = global.move + irandom_range(-1,2)			//movement X
	global.distance += travel
	global.distancetolandmark -= travel
	if (global.distancetolandmark) <= 0 {	//if hit a landmark
		global.distance += global.distancetolandmark
		array_delete(global.destinations,0,1)
		array_delete(global.distances,0,1)
		global.distancetolandmark = global.distances[0]
		
		global.showlandmark = global.landmarksprites[0]
		array_delete(global.landmarksprites,0,1)
		global.textbox = global.landmarkannouncements[0]
		//show_debug_message(global.textbox)
		array_delete(global.landmarkannouncements,0,1)
		global.inside = true
	} else {						//if didn't hit a landmark
		global.inside = false
		randomevent()}									//random event X
	
	incrementday()										//day tracker
	
	weather()											//reroll the weather X
	instance_create_depth(0,350,1,oChangeColor)
}