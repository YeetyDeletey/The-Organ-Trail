// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenwipe(ex1,ey1,r,g){
	//ex is x, ey is y (default for middle text of 250,240)
	//r is the number of rows to clear
	//it will set global.goto to g after clearing text
	//w is for if the width has to be changed, defaults to 908
	
	
	instance_create_depth(x,y,1,oScreenwipe,{ex:ex1,ey:ey1,rows:r,goto:g})
	
}