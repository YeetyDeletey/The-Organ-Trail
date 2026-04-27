function rockymountainevents(){
    //event = irandom(5);
    event = 3;
    
    switch event{
        case 1:
            global.textbox = "Landslide!\nYou lost 15 pounds of food";
            global.food -= 15;
            break;
        case 2:
            global.textbox = global.party[2] + " became depressed!\n"
            break;
        case 3:
            global.eventMenu = 1;
            room_goto(rEventMenu);
            break;
        case 4:
            global.eventMenu = 2;
            room_goto(rEventMenu);
    }
	return false;
}