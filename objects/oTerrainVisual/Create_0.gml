if (random(1) > 0.4) {image_xscale = 2}
else {image_xscale = -2}
image_yscale = 2

switch spr {
	case "grass":
	rand = random_range(0,1)
	if (rand > 0.7) {sprite_index = sGrass1}
	else if (rand > 0.3) {sprite_index = sGrass2}
	else {sprite_index = sSGrass1}
	depth = 1000
	break;
}