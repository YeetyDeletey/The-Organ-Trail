//haha this object is called "oh dear!"

life = 20

hit = false;
coll = false;
alive = true
meat = irandom(10)+65

startled = false
godir = 0
ex = 0
ey = 0
move_time = 3;


image_yscale = 2

//don't clip into wall
while (place_meeting(x,y,oWall)) {
	if (x == 0 || x == 1350) {
		y = random(room_height)
	} else {
		x = random(room_width)
	}
}

//set speed
maxs = 2
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