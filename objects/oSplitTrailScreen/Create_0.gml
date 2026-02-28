function mainscreen() {
	menuvisual(704,64,sBanner)
	menuvisual(704,688,sBanner)

	text(250,205,"The trail divides here.")
	text(250,240,"You may:")
	
	switch global.atlandmark {
		case "South Pass":
		button(250,310,"  1. Go straight to Soda Springs",1)
		button(250,345,"  2. Take a detour to Fort Bridger",2)
		break;
		
		
		case "Blue Mountains":
		button(250,310,"  1. Go North to The Dalles",1)
		button(250,345,"  2. Go South to Fort Walla Walla",2)
		break;
		
		
		case "The Dalles":
		button(250,310,"  1. Go through Barlow Toll Road",1)
		button(250,345,"  2. Go down Colombia River",2)
		break;
	}
	button(250,380,"  3. Check the map X",3)

	write(250,450,"What is your choice? ",3)
}

global.menu = 0
mainscreen()