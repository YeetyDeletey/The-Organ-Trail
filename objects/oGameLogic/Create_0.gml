//Set global variables
global.pressstart = font_add("PressStart2P-Regular.ttf",20,false,false,32,128)

//menu stuff
global.menu = 0
global.goto = 0
global.trans = false
global.canclick = false

global.txtinput = ""


//player stats
global.money = 0
global.oxen = 0
global.food = 0
global.clothing = 0
global.ammo = 0
global.spareparts = 0


//custom stats
global.job = "" //b,c,f


//world stats
global.month = 0
global.day = 1
global.time = 1


//party members
global.party = []


//Create other necessary objects (persistent)
instance_create_depth(x,y,1,oCursor)
instance_create_depth(x,y,1,oGotoroom)


/*party member setup
[name, special bonuses, health, hunger, exhaustion, injuries]


*/