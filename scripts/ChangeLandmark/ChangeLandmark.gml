// removing destinations, distances, landmarksprites, landmarkannouncements
function changelandmark(){
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

