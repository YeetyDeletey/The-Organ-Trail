
if keyboard_check_pressed(vk_enter) and global.trans = false or global.canclick = true and mouse_check_button_pressed(mb_left) and global.trans = false {
	switch global.menu {
		case 0:								//Main menu starting screen
		switch global.txtinput {
			case 1:
			screenwipe(250,240,10,1)
			break;
	
	
			case 2:
			global.menu = 2
			screenwipe(250,240,10,2)
			break;
	
	
			case 3:
			global.menu = 0
			global.goto = 0
			global.trans = false
			global.job = "c"
			global.wheels = 2
			global.axles = 2
			global.tongues = 2
			global.oxen = 2
			global.food = 95
			global.clothing = 5
			global.ammo = 60
			global.money = 500
			global.smonth = "March"
			global.party[0].name = "Owen"
			global.party[0].injuries = ["Broken leg", "Broken arm", "Dysentery"]
			global.party[1].name = "Jasmine"
			global.party[2].name = "AdaCancada"
			global.party[3].name = "LilTony"
			global.party[3].infection = 30
			global.party[4].name = "BigTony"
			room_goto(rTrailScreen)
			break;
	
	
			case 4:
			break;
	
	
			case 5:
			break;
	
	
			case 6:
			game_end()
			break;
		
		
			default:
			break;
		}
		break;
		
		
		default:
		screenwipe(250,240,10,(global.menu + 0.01))
		break;
	}
}

if global.goto != 0 {
	switch global.goto {
		case 1:
		global.menu = 0
		global.goto = 0
		global.trans = false
		room_goto(rPreMattShop)
		break;
		
		
		case 2:
		text(250,275,"Try taking a journey by covered")
		text(250,310,"wagon across 2000 miles of ")
		text(250,345,"plains, rivers, and Mountains. ")
		text(250,380,"Try! On the plains, will you ")
		text(250,415,"slosh your oxen through mud and ")
		text(250,450,"water-filled ruts or will you ")
		text(250,485,"plod through dust six inches ")
		text(250,520,"deep?")
		centertext(744,"Press ENTER or click to continue")
		break;
		
		case 2.01:
		text(250,275,"How will you cross the rivers? If")
		text(250,310,"you have money, you might take a ")
		text(250,345,"ferry (if there is a ferry). Or, ")
		text(250,380,"you can ford the river and hope ")
		text(250,415,"you and your wagon aren’t  ")
		text(250,450,"swallowed alive!")
		break;
		
		case 2.02:
		text(250,275,"What about supplies? Well, if ")
		text(250,310,"you’re low on food you can hunt. ")
		text(250,345,"You might get a buffalo... you ")
		text(250,380,"might. And there are bear in the ")
		text(250,415,"mountains.")
		break;
		
		case 2.03:
		text(250,275,"At the Dalles, you can try ")
		text(250,310,"navigating the Columbia River, ")
		text(250,345,"but if running the rapids with a ")
		text(250,380,"makeshift raft makes you queasy, ")
		text(250,415,"better take the Barlow Road.")
		break;
		
		case 2.04:
		text(250,275,"If for some reason you don’t ")
		text(250,310,"survive -- your wagon burns, or ")
		text(250,345,"thieves steal your oxen, or you ")
		text(250,380,"run out of provisions, or you die ")
		text(250,415,"of cholera -- don’t give up! Try ")
		text(250,450,"again...and again...until your ")
		text(250,485,"name is up with the others on the")
		text(250,520,"Oregon Top Ten.")
		break;
		
		case 2.05:
		global.menu = 0
		global.goto = 0
		global.trans = false
		room_goto(rMain_Menu1)
		break;
	}
	global.menu = global.goto
	global.goto = 0
	global.trans = false
}






