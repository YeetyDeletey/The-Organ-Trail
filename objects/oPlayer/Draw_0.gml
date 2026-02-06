

if(keyboard_check(ord("W"))){
    draw_sprite(Player_U, 0, x, y);
}
else if(keyboard_check(ord("A"))){
    draw_sprite(Player_L, 0, x, y);
}
else if(keyboard_check(ord("S"))){
    draw_sprite(Player_S, 0, x, y);
}
else if(keyboard_check(ord("D"))){
    draw_sprite(Player_R, 0, x, y)
}
else{
    draw_self();
}