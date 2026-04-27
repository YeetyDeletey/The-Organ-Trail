
life = 7

hit = false;
coll = false;
alive = true
meat = irandom(10)+65	//set meat to whatever it should be

//don't clip into wall
while (place_meeting(x,y,oWall)) {
	if (x == 0 || x == 1350) {
		y = random(room_height)
	} else {
		x = random(room_width)
	}
}

//set speed
mins = 1
maxs = 2
x_speed = random_range(mins, maxs)
y_speed = random_range(mins, maxs)

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
sc = 1	//change if desired to scale up
image_yscale = sc