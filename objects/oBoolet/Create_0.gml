lifetime = 2
xspeed = 0
yspeed = 0

dir = oPlayer.dir
show_debug_message(dir);
spd = 15

if(dir == 2){
    xspeed = -spd;
}
else if(dir == 1){
    yspeed = -spd;
}
else if (dir == 4){
    xspeed = spd
}
else if(dir == 3){
    yspeed = spd
}