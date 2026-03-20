
menuvisual(704,144,sBanner)
menuvisual(704,688,sBanner)

centertext(30,global.atlandmark)
centertext(65,global.smonth + " " + string(global.day) + ", " + string(global.year))

function mainscreen() {
	text(250,205,"Weather: " + global.weather)
	text(250,240,"River width: " + string(wid))
	text(250,275,"River depth: " + string_format(dep,1,1))

	text(250,310,"You may:")

	button(250,380,"1. Attempt to ford the river",1)
	button(250,415,"2. Caulk the wagon and float it across",2)
	button(250,450,"3. Take a ferry across",3)
	button(250,485,"4. Wait to see if conditions improve",4)
	button(250,520,"5. Get more information",5)

	write(250,590,"What is your choice? ",5)
}


wid = 100
dep = 2.5
crossingsprite = sFord

where = [0,0,0]
temp = global.textbox
global.textbox = ""
go = true

switch global.atlandmark {
	case "Kansas River Crossing":
	wid = round(random_range(300,400))
	dep = 3 + (round(random_range(0,10))/10)
	break;
	
	
	case "Big Blue River Crossing":
	wid = round(random_range(160,200))
	dep = 2.5 + (round(random_range(0,5))/10)
	break;
	
	
	case "Green River Crossing":
	wid = round(random_range(200,500))
	dep = 10 + (round(random_range(0,150))/10)
	break;
	
	
	case "Snake River Crossing":
	wid = round(random_range(700,1100))
	dep = 4 + (round(random_range(0,30))/10)
	break;
}




text(250,310,"You must cross the river in")
text(250,345,"order to continute. The river")
text(250,380,"at this point is currently")
text(250,415,string(wid) + " feet across, and " + string_format(dep,1,1))
text(250,450,"feet deep in the middle")

centertext(744,"Press ENTER or click to continue")

