// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constantchanceevents(){
	//placeholder/reminder how events work
	if (random(10) > 5) {
		global.textbox = "Random event\ngain 15 dollars"
		global.money += 15
	} else {
		global.textbox = "Random event\nlose 15 dollars"
		global.money -= 15
	}
}