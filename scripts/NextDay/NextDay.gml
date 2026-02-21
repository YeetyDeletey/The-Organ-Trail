// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nextday(){
	
	global.food -= global.eat									//eat food
	
	if (global.food < 0) {										//health changes
		global.food = 0
		//do something 	if not eating enough
	}
	
																//movement
	travel = round((global.move + irandom_range(-1,2)) * (1-(global.time-8)*0.1))
	global.distance += travel
	global.distancetolandmark -= travel
	if (global.distancetolandmark) <= 0 {	//if hit a landmark
		global.distance += global.distancetolandmark
		changelandmark()
	} else {						//if didn't hit a landmark
		global.landmark = ""
		//maybe do different events based on time lost hunting?
		randomevent()											//random event X~
		
		repeat(array_length(global.party)) {											//zombie infection
			
		}
	}
	
	incrementday()												//day tracker
	
	weather()													//reroll the weather X~
	instance_create_depth(0,350,1,oChangeColor)
}