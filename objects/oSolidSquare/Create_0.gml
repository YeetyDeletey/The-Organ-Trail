image_xscale = wid
image_yscale = hei

switch color {
	case "":
	changecolor()
	break;
	
	case "w":
	sprite_index = sWhite
	break;
	
}
	
function changecolor() {
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