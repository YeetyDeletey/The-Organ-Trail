

if(keyboard_check(ord("W"))){
    draw_sprite(sPlayer_U, 0, x, y)
    dir = 1
    
}
else if(keyboard_check(ord("A"))){
    draw_sprite(sPlayer_L, 0, x, y)
    dir = 2
}
else if(keyboard_check(ord("S"))){
    draw_sprite(sPlayer_S, 0, x, y)
    dir = 3
}
else if(keyboard_check(ord("D"))){
    draw_sprite(sPlayer_R, 0, x, y)
    dir = 4
}
else{
    draw_sprite(sPlayer_Neutral, 0, x, y);
}
