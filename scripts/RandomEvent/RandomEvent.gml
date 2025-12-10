// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomevent(){
	//irandom is 0-n, inclusive
	eventoccurs = random(10)
	if (eventoccurs > 7) {		//this is if an event does occur, 2/10 chance
		event = irandom(99) + 1
		
		if (random(10) > 5) {
			global.textbox = "Random event\ngain 15 dollars"
			global.money += 15
		} else {
			global.textbox = "Random event\nlose 15 dollars"
			global.money -= 15
		}
		
		switch event {
			//when an event happens it'll pop up a text box and change some variables
			//some custom events down the line will force the hunting minigame
			case 1:
		
			break;
		
		
			default:
			//default should be nothing happens
			break;
		}
	}

}	/*event chance from 1 to 10
	on 1 an event happens
	maybe have a set of positive events on a 3 or something
	default is nothing happens