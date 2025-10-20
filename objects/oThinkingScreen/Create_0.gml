
centertext(30,"Independence")
centertext(65,global.smonth + " 1, 1848")


Square(0,135,1408,4)

btext(5,135," Weather: " + global.weather)
btext(5,170," Health: " + global.health)
btext(5,205," Pace: " + global.pace)
btext(5,240," Rations: " + global.rations)

text(5,310,"You may:")

button(5,380,"    1. Continue on trail X",1)
button(5,415,"    2. Check supplies X",2)
button(5,450,"    3. Look at map X",3)
button(5,485,"    4. Change pace X",4)
button(5,520,"    5. Change food rations X",5)
button(5,555,"    6. Stop to rest X",6)
if (global.inside) {
	button(5,590,"    7. Attempt to trade X",7)	//or hunt when outside
	button(5,625,"    8. Buy supplies X",8)		//or leave when outside
	button(5,660,"    9. Leave X",9)			//or nothing when outside
	write(5,730,"What is your choice? ",9)
} else {
	button(5,590,"    7. Attempt to hunt X",7)	//or hunt when outside
	button(5,625,"    8. Leave X",8)			//or leave when outside
	write(5,730,"What is your choice? ",8)
}

global.menu = 0.1