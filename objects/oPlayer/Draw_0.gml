if (global.menu == 1) {
	switch dir {
		case 1:
		spr = sPlayer_U
		break;
		
		case 2:
		spr = sPlayer_L
		break;
		
		case 3:
		spr = sPlayer_D
		break;
		
		case 4:
		spr = sPlayer_R
		break;
	}
}
sprite_index = spr
draw_self()