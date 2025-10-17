// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function btext(ex,ey,t) {
	//ex is x, ey is y
	//t is text within
	instance_create_depth(ex,ey,1,oText,{tex:t,bl:true})
}