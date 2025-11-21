image_xscale = wid
image_yscale = hei

switch color {
	case "":
	switch global.weather {
		case "snowy":
		sprite_index = sWhite
		break;
		case "cool":
		sprite_index = sGreen
		break;
		case "hot":
		sprite_index = sTan
		break;
	}
	break;
	
	case "w":
	sprite_index = sWhite
	break;
	
}
	
