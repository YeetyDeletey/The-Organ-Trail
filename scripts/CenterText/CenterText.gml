// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function centertext(ey,t) {
	//ey is y
	//t is text within
	var obj = instance_create_depth(room_width/2,ey,1,oCenterText,{tex:t})
}