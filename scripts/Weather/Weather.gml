// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weather(){
	/*will probably want to know:
	the season
	the location within america
	previous weather
	*/
	/* this one is just a loop that goes through each in order
	switch global.weather {
		case "cool":
		global.weather = "snowy"
		break;
		case "snowy":
		global.weather = "hot"
		break;
		case "hot":
		global.weather = "cool"
		break;
	}*/
	
	num = random(10)
	if (num <= 1) {
		global.weather = "snowy"
	} else if (num < 2.5) {
		global.weather = "hot"
	} else {
		global.weather = "cool"
	}
	
}