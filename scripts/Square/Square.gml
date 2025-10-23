// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function square(ex,ey,wid,hei){
//ex and ey are x and y
//wid is width, hei is how many lines tall

instance_create_depth(ex,ey,2,oSquare,{wid:wid,hei:hei})
}