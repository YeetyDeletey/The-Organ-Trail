// note that there is event priority of health > weather > location > constant chance
function randomevent(){
	//establish chances of each event type happening
	//note that for stuff like health this will be more complex,
	//random is a placeholder
	heventoccurs = random(10)
	weventoccurs = random(10)
	leventoccurs = random(10)
	ceventoccurs = random(10)
	
	//player health decreasing (diseases like dysntary)
	if (heventoccurs > 10) {
		healthevents()	//X
		
		
		
	//weather based (droughts, blizzard)
	} else if (weventoccurs > 10) {
		weatherevents()	//X
	
	
	
	//location / something about the trail itself (bad water, dead end trail, robbery)
	} else if (leventoccurs > 7) {
		switch global.climate {
			case "eastern forest":
			break;
			
			case "plains":
			break;
			
			case "rocky mountains":
			rockymountainevents();
			break;
			
			case "desert":
			break;
			
			case "western forest":
			break;
		}
		
		
	
	//constant chance - accident on the trail (broken bone, broken wagon part)
	} else if (ceventoccurs > 7) {		//this is if an event does occur, 2/10 chance
		event = irandom(99) + 1
		
		if (random(10) > 5) {
			global.textbox = "Random event\ngain 15 dollars"
			global.money += 15
		} else {
			global.textbox = "Random event\nlose 15 dollars"
			global.money -= 15
		}
		
		switch event {
			//when an event happens it'll pop up a text box and change some variables
			//some custom events down the line will force the hunting minigame
			case 1:
		          
			break;
            
            case 2:
                
            break;
		
		
			default:
			//default should be nothing happens
			break;
		}
	}
}
	