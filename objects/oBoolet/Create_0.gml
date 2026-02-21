lifetime = 2
xspeed = 0
yspeed = 0

dir = oPlayer.dir

if(dir == 2){
    xspeed = -10;
}
else if(dir == 1){
    yspeed = -10;
}
else if (dir == 4){
    xspeed = 10
}
else if(dir == 3){
    yspeed = 10
}