// note that there is event priority of health > weather > location > constant chance
function randomevent(){
	//establish chances of each event type happening
	//note that for stuff like health this will be more complex,
	//random is a placeholder
	heventoccurs = random(10) > 10
	weventoccurs = random(10)
	leventoccurs = random(10)
	ceventoccurs = random(10)
	
	//player health decreasing (diseases like dysntary)		X
	if (heventoccurs) {
		healthevents()
		
		
		
	//weather based (droughts, blizzard)	X
	} else if (weventoccurs > 10) {
		weatherevents()
	
	
	
	//location / something about the trail itself (bad water, dead end trail, robbery)	X
	} else if (leventoccurs > 7) {
		//might be worth making the chance of this event type fluctuate based on which climate
		switch global.climate {
			case "eastern forest":
			easternforestevents();
                //rockymountainevents();
			break;
			
			case "plains":
			plainsevents();
            //   rockymountainevents();
			break;
			
			case "rocky mountains":
			rockymountainevents();
			break;
			
			case "desert":
			desertevents();
            //    rockymountainevents();
			break;
			
			case "western forest":
			westernforestevents();
            //    rockymountainevents();
			break;
		}
		
		
	
	//constant chance - accident on the trail (broken bone, broken wagon part)		X
	} else if (ceventoccurs > 7) {
		constantchanceevents()
	}
}
	