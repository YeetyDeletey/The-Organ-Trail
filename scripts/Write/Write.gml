// Script assets have changed for v2.3.0 see
function write(ex,ey,t,ty) {
	//ex is x, ey is y
	//t is text within
	//type is the type of input it takes
	//if type is a number>0, the range is 1 through that number (menus)
	//if type is 0, it takes any number (number being bought)
	//if type is y, it only takes y/n (yes/no decisions)
	//if type is w, it takes up to 10 letters (names)
	instance_create_depth(ex,ey,1,oWrite,{tex:t,typ:ty})
}