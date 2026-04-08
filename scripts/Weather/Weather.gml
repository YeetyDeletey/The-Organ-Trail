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
				snowy/rainy will happen in events not in weather
				need to figure out where to put droughts, might just
				make them like based on oxen health going down from heat or something
	*/
	tmax = 0	//max the temp can be in this climate
	tmin = 0	//same but for min
	rmax = 0	//max that global.weathertemp can change in a day
	
	num = irandom(9)+1
	switch global.climate {
		case "eastern forest":
		tmax = 90
		tmin = 40
		rmax = 20
		break;
		
		case "plains":
		tmax = 110
		tmin = 32
		rmax = 30
		break;
		
		case "rocky mountains":
		tmax = 90
		tmin = 40
		rmax = 40
		break;
		
		case "desert":
		tmax = 115
		tmin = 60
		rmax = 30
		break;
		
		case "western forest":
		tmax = 100
		tmin = 30
		rmax = 25
		break;
	}
	
	switch global.month {		//this needs so much testing holy frick
		case 1:
		tmax -= 30
		tmin -= 30
		rmax += 0
		break;
		
		case 2:
		tmax -= 20
		tmin -= 20
		rmax += 10
		break;
		
		case 3:
		tmax += 0
		tmin -= 20
		rmax += 30
		break;
		
		case 4:
		tmax += 0
		tmin += 0
		rmax += 10
		break;
		
		case 5:
		tmax += 10
		tmin += 10
		rmax += 0
		break;
		
		case 6:
		tmax += 20
		tmin += 10
		rmax += 0
		break;
		
		case 7:
		tmax += 20
		tmin += 20
		rmax += 0
		break;
		
		case 8:
		tmax += 20
		tmin += 0
		rmax += 0
		break;
		
		case 9:
		tmax += 10
		tmin += 10
		rmax += 10
		break;
		
		case 10:
		tmax += 0
		tmin += 0
		rmax += 15
		break;
		
		case 11:
		tmax -= 10
		tmin -= 10
		rmax += 20
		break;
		
		case 12:
		tmax -= 20
		tmin -= 20
		rmax += 10
		break;
	}
		
		
		
	perc = (global.weathertemp - tmin) / (tmax - tmin) * 10		//calculating temperature
	if (num > perc) {
		global.weathertemp += irandom(rmax)
	} else {
		global.weathertemp -= irandom(rmax)
	}
	global.weathertemp = min(global.weathertemp, tmax)
	global.weathertemp = max(global.weathertemp, tmin)
	
	
	if global.weathertemp > 81 {
		global.weather = "hot"
	} else if global.weathertemp > 54 {
		num = irandom(9)+1
		if (num > 9) {
			global.weather = "rainy"
		} else {
			global.weather = "warm"
		}
	} else if global.weathertemp > 27 {
		num = irandom(9)+1
		if (num > 9) {
			global.weather = "rainy"
		} else {
			global.weather = "cool"
		}
	} else {
		num = irandom(9)+1
		if (num > 9) {
			global.weather = "snowy"
		} else {
			global.weather = "cold"
		}
	} 
	//show_debug_message(string(num) + "  |  " + string(perc) + "  Weather: " + string(global.weathertemp) + "  |  " + global.weather)
}