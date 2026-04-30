
hp = 5
alive = true
wandertime = 120 + irandom(180)
moving = true
meat = irandom(100)+200	//set meat to whatever it should be

//don't clip into wall
while (place_meeting(x,y,oWall)) {
	if (x == 0 || x == 1350) {
		y = random(room_height)
	} else {
		x = random(room_width)
	}
}

//setspeed function for complete direction change
function setspeed() {
	x_speed = random_range(0, maxs)
	y_speed = random_range(0, maxs)
	while (x_speed + y_speed < 1) {
		x_speed = random_range(0, maxs)
		y_speed = random_range(0, maxs)
	}
	if random(1) > 0.4 {y_speed = -1 * y_speed}
	if random(1) > 0.4 {x_speed = -1 * x_speed}
}

//setting initial speed into the screen
maxs = 1.5
x_speed = random_range(0, maxs)
y_speed = random_range(0, maxs)
while (x_speed + y_speed < maxs) {
	x_speed = random_range(0, maxs)
	y_speed = random_range(0, maxs)
}

if(x == 1350){
    x_speed = -1 * x_speed
	if random(1) > 0.4 {y_speed = -1 * y_speed}}
if(x == 0){
	if random(1) > 0.4 {y_speed = -1 * y_speed}}
if(y == 800){
    y_speed = -1 * y_speed
	if random(1) > 0.4 {x_speed = -1 * x_speed}}
if(y == 0){
	if random(1) > 0.4 {x_speed = -1 * x_speed}}

//don't forget to make the sprite center top
sc = 2	//change if desired to scale up
image_yscale = sc