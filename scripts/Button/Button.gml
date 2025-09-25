// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function button(ex,ey,t,m,h) {
	//ex is x, ey is y
	//t is text within
	//m is the menu they send you to
	//h is height, w is width
	//height is a multiplier
	//default of 24, h of 2 multiplies it to 48
	if is_undefined(h) {
		instance_create_depth(ex,ey,1,oButton,{tex:t,hei:1,go:m})
	}
	else {
		instance_create_depth(ex,ey,1,oButton,{tex:t,hei:h,go:m})
	}
	
}