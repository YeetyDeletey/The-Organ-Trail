//create text, first one at 250,135
//text(250,135,"Many kinds of people made the ")

menuvisual(704,44,sBanner)
menuvisual(704,688,sBanner)


text(250,205,"Weather: " + global.weather)
text(250,240,"River width: ")
text(250,275,"River depth: ")

text(250,310,"You may:")

button(250,380,"1. Attempt to ford the river",1)
button(250,415,"2. Caulk the wagon and float it across",2)
button(250,450,"3. Take a ferry across",3)
button(250,485,"4. Wait to see if conditions improve",4)
button(250,520,"5. Get more information",5)

write(250,590,"What is your choice? ",5)

function mainscreen() {
	
}
/*
switch global.eventMenu{
    
}
 * */