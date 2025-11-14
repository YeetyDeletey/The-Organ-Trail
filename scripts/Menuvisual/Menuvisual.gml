// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menuvisual(ex,ey,spr,lay){
	if (is_undefined(lay)) {
		instance_create_depth(ex,ey,1,oPiratedSprite,{spr:spr})
	} else {
		instance_create_depth(ex,ey,lay,oPiratedSprite,{spr:spr})
	}
}