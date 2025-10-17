//create text, first one at 250,135
//

centertext(30,"Independence")
centertext(65,"March 1, 1848")


Square(0,135,1408,4)

btext(5,135,"Weather: cold")
btext(5,170,"Health: good")
btext(5,205,"Pace: steady")
btext(5,240,"Rations: filling")

text(5,310,"You may:")

button(5,380,"    1. Continue on trail X",1)
button(5,415,"    2. Check supplies X",2)
button(5,450,"    3. Look at map X",3)
button(5,485,"    4. Change pace X",4)
button(5,520,"    5. Change food rations X",5)
button(5,555,"    6. Stop to rest X",6)
button(5,590,"    7. Attempt to trade X",7)
button(5,625,"    8. Talk to people X",8)
button(5,660,"    9. Buy supplies X",9)

write(5,730,"What is your choice? ",9)
/*
set up this screen
edited text to be able to output black
fixed bugs
added X to unfinished stuff