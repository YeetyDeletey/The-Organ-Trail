// removing destinations, distances, landmarksprites, landmarkannouncements
function changelandmark(){
	global.atlandmark = global.nextlandmark
	switch global.nextlandmark {
		case "Independence":
		global.textbox = "From Independence it is 102\nmiles to the Kansas River \ncrossing."
		global.distancetolandmark = 102
		global.nextlandmark = "Kansas River Crossing"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		case "Kansas River Crossing":
		global.textbox = "From the Big Blue River\nCrossing it is 118 miles\nto Fort Kearney"
		global.distancetolandmark = 83
		global.nextlandmark = "Big Blue River Crossing"
		global.showlandmark = sKansasRiverCrossing
		global.landmark = "r"
		break;
		
		case "Big Blue River Crossing":
		global.textbox = "On to Fort Kearney"
		global.distancetolandmark = 119
		global.nextlandmark = "Fort Kearney"
		global.showlandmark = sBigBlueRiverCrossing
		global.landmark = "r"
		break;
		
		case "Fort Kearney":
		global.textbox = "On to Chumney Rock"
		global.distancetolandmark = 250
		global.nextlandmark = "Chimney Rock"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		case "Chimney Rock":
		global.textbox = "On to Fort Laramie"
		global.distancetolandmark = 86
		global.nextlandmark = "Fort Laramie"
		global.showlandmark = sIndependence
		global.landmark = "l"
		break;
		
		case "Fort Laramie":
		global.textbox = "hey this is Fort\nLaramie thats pretty cool"
		global.distancetolandmark = 190
		global.nextlandmark = "Independence Rock"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		case "Independence Rock":
		global.textbox = "The rock of the free"
		global.distancetolandmark = 102
		global.nextlandmark = "South Pass"
		global.showlandmark = sIndependence
		global.landmark = "l"
		break;
		
		
		case "South Pass":
		global.showlandmark = sIndependence
		global.landmark = "s"
		break;
		
		
		case "Green River Crossing":
		global.textbox = "now to soda springs"
		global.distancetolandmark = 144
		global.nextlandmark = "Soda Springs"
		global.showlandmark = sIndependence
		global.landmark = "r"
		break;
						//these 2 are alternate split paths
		case "Fort Bridger":
		global.textbox = "hope that was worth it"
		global.distancetolandmark = 162
		global.nextlandmark = "Soda Springs"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		
		case "Soda Springs":
		global.textbox = "now to fort hall"
		global.distancetolandmark = 57
		global.nextlandmark = "Fort Hall"
		global.showlandmark = sIndependence
		global.landmark = "l"
		break;
		
		
		case "Fort Hall":
		global.textbox = "now for snake river crossing"
		global.distancetolandmark = 182
		global.nextlandmark = "Snake River Crossing"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		
		case "Snake River Crossing":
		global.textbox = "get ready for fort yeah bois"
		global.distancetolandmark = 114
		global.nextlandmark = "Fort Boise"
		global.showlandmark = sIndependence
		global.landmark = "r"
		break;
		
		
		case "Fort Boise":
		global.textbox = "yeah BOIIIIIIIIII"
		global.distancetolandmark = 160
		global.nextlandmark = "Blue Mountains"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		
		case "Blue Mountains":
		global.showlandmark = sIndependence
		global.landmark = "s"
		break;
		
		
		case "Fort Walla Walla":
		global.textbox = "now to da dalles"
		global.distancetolandmark = 120
		global.nextlandmark = "The Dalles"
		global.showlandmark = sIndependence
		global.landmark = "f"
		break;
		
		
		case "The Dalles":
		global.showlandmark = sIndependence
		global.landmark = "s"
		break;
		
		
		case "Barlow Toll Bridge":
		//then activate the barlow toll bridge stuff
		//this will be a fort that is always overrun and will be a big final battle type thing
		break;
		
		
		case "Colombia River":
		//then activate the colmbia river stuff
		//this will be a final battle fight but you're on a raft made of your wagon
		//so there's limited space (& probably will also require dodging rocks)
		break;
		/*
		case "":
		global.textbox = ""
		global.distancetolandmark = 
		global.nextlandmark = ""
		global.showlandmark = sIndependence
		global.landmark = ""
		break;
		
		
		*/
	}
}

