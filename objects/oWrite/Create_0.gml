candie = false

draw_set_font(global.pressstart)
draw_set_color(c_white)


switch typ {
	case 0://if type is 0, it takes any number, length of 2 (number being bought)
	nums = [0,1,2,3,4,5,6,7,8,9]
	len = 2
	break;
	
	case "y"://if type is y, it only takes y/n (yes/no decisions)
	nums = ["y","n","Y","N"]
	len = 3
	break;
	
	case "w"://if type is w, it takes up to 10 letters (names)
	nums = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
	len = 10
	break;
	
	default://if type is a number>0, the range is 1 through that number (menus)
	nums = array_create(typ,1)
	counter = 1
	while counter < array_length(nums) {
		nums[counter] += counter
		counter += 1
	}
	len = string_length(string(typ))
	if len >= 2 {
		array_push(nums,0)
	}
	break;
}



