// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weather(){
	/*will probably want to know:
	the season
	the location within america
	previous weather
	*/
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
	}
	
}