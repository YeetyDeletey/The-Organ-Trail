//Set global variables
global.pressstart = font_add("PressStart2P-Regular.ttf",20,false,false,32,128)
draw_set_color(c_white)

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
global.wheels = 0
global.axles = 0
global.tongues = 0


//custom stats
global.job = "" //b,c,f


//world stats that auto change
global.month = 3
global.smonth = ""
global.day = 1
global.time = 1
global.inside = true
global.weather = "cool"
global.health = "good"


//player settings
global.pace = "steady"
global.move = 15
global.rations = "filling"


//party members
global.party = []


//Create other necessary objects (persistent)
instance_create_depth(x,y,1,oCursor)
instance_create_depth(x,y,1,oGotoroom)
//it has to load the font before the text so this is necessary trust


/*party member setup
[name, special bonuses, health, hunger, exhaustion, injuries]


made the month work, added global vars for thinking settings
made the change for inside/outside forts
made square have delay before dying
*/