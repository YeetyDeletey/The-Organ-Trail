
if (global.menu = 1) {
	if (global.playerx > x) {
		x += wspeed
		repeat(wspeed) {
			if(place_meeting(x,y,oWall) or global.playerx < x) {
				x -= 1
			}
		}
	} else if (global.playerx < x) {
		x -= wspeed
		repeat(wspeed) {
			if(place_meeting(x,y,oWall) or global.playerx > x) {
				x += 1
			}
		}
	}

	if (global.playery > y) {
		y += wspeed
		repeat(wspeed) {
			if(place_meeting(x,y,oWall) or global.playery < y) {
				y -= 1
			}
		}
	} else if (global.playery < y) {
		y -= wspeed
		repeat(wspeed) {
			if(place_meeting(x,y,oWall) or global.playery > y) {
				y += 1
			}
		}
	}
}
	
	