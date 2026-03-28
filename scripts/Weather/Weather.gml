// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weather(){
	/*will probably want to know:
	the season
	the location within america
	previous weather
	
	types of weather:
	hot
	warm
	cool
	cold
	
	snowy
	rainy
	*/
	tmax = 0	//max the temp can be in this climate
	tmin = 0	//same but for min
	rmax = 0	//max that global.weathertemp can change in a day
	
	num = irandom(9)+1						//note: still need to add season and check numbers
	switch global.climate {
		case "eastern forest":	//max 90 min 40
		tmax = 90
		tmin = 40
		rmax = 20
		break;
		
		case "plains":			//max 110 min 32
		tmax = 110
		tmin = 32
		rmax = 30
		break;
		
		case "rocky mountains":	//max 90 min 40
		tmax = 90
		tmin = 40
		rmax = 40
		break;
		
		case "desert":			//max 130 min 60
		tmax = 115
		tmin = 60
		rmax = 30
		break;
		
		case "western forest":	//max 100 min 50
		tmax = 100
		tmin = 40
		rmax = 25
		break;
	}
	perc = (global.weathertemp - tmin) / (tmax - tmin) * 10
	if (num > perc) {
		global.weathertemp += irandom(rmax)
	} else {
		global.weathertemp -= irandom(rmax)
	}
	global.weathertemp = min(global.weathertemp, tmax)
	global.weathertemp = max(global.weathertemp, tmin)
	
	if global.weathertemp > 82 {
		global.weather = "hot"
	} else if global.weathertemp > 60 {
		global.weather = "warm"
	} else if global.weathertemp > 32 {
		global.weather = "cool"
	} else {
		global.weather = "cold"
	} 
	
	//show_debug_message(global.climate + ": " + string(global.weathertemp) + " " + global.weather)
}