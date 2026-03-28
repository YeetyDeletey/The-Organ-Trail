if (place_meeting(x,y,oChangeColor)) {
	if (global.weather == "snowy") {
		sprite_index = sWhite
	} else {
		switch global.climate {
			case "eastern forest":
			sprite_index = sGreen
			break;
			case "plains":
			sprite_index = sTan
			break;
			case "rocky mountains":
			sprite_index = sGreen
			break;
			case "desert":
			sprite_index = sTan
			break;
			case "western forest":
			sprite_index = sGreen
			break;
		}
	}
}