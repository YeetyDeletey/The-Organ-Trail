if (place_meeting(x,y,oChangeColor)) {
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
}