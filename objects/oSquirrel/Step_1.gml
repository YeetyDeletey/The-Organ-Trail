if(before){
    if(x <= 0 && x_speed < 0){
        x_speed = -1 * x_speed
    }
    else if(x >= 800 && x_speed > 0){
        x_speed = -1 * x_speed
    }
    
    if(y <= 0 && y_speed < 0){
        y_speed = -1 * y_speed
    }
    else if(y >= 1350 && y_speed > 0){
        y_speed = -1 * y_speed
    }
    before = false
}