//Set global variables
global.pressstart = font_add("PressStart2P-Regular.ttf",20,false,false,32,128)
draw_set_color(c_white)	//font is 35 tall by 26.6 wide

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

//hunting stuff
global.playerx = -1
global.playery = -1
global.bitten = false //VERY TEMPORARY

//custom stats
global.job = "" //b,c,f


//world stats that auto change
global.year = 1848
global.month = 3
global.smonth = "March"
global.day = 1
global.time = 8
global.inside = true
global.showlandmark = sIndependence
global.weather = "cool"
global.health = "good"
global.distance = 0
global.destinations = ["Kansas River Crossing", "Big Blue River Crossing", "Fort Kearney", "Chimney Rock", 
						"Fort Laramie", "Independence Rock", "South Pass"] //then from here the path splits
global.distances = [102, 83, 118, 250, 86, 190, 102]
global.distancetolandmark = 102
//global.textbox is so that it can be set by random objects at any point in the step without causing problems
global.textbox = "From Independence it is 102\nmiles to the Kansas River \ncrossing."
global.landmarksprites = [sKansasRiverCrossing,sBigBlueRiverCrossing,sIndependence,sIndependence,sIndependence,sIndependence,sIndependence,sIndependence]
global.landmarkannouncements = ["From Kansas River Crossing\nit is 83 miles to the Big\nBlue River Crossing",
"From the Big Blue River\nCrossing it is 118 miles\nto Fort Kearney",
"On to chimney rock",
"Fort Laramie",
"hey this is Independence\nRock thats pretty cool"]

//player settings
global.pace = "steady"
global.move = 15
global.rations = "filling"
global.eat = 15


//party members
global.party = []


//Create other necessary objects (persistent)
instance_create_depth(x,y,1,oCursor)
instance_create_depth(x,y,1,oGotoroom)
//it has to load the font before the text so this is necessary trust


//randomize()

/*party member setup
[name, special bonuses, health, hunger, exhaustion, injuries]

Set up the hunting screen base logic object, 
some sprites, player movement

set up player getting nicked/bitten
added infection to nextday function
made time pass when hunting, auto kicked out
made travel less far based on time hunting
*/