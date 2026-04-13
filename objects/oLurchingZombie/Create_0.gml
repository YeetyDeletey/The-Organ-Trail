
while (place_meeting(x,y,oWall)) {
	x = random(room_width)
	y = random(room_height)
}

counter = 0
cmax = 60

//starthp is what they spawn with, hp is current hp,
//percsp is a multiplier that gets lower as health goes down
starthp = 5
hp = starthp
percsp = 1
