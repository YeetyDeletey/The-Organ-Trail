function settravel(){
	global.travel = round((global.move + irandom_range(-1,2)) * (1-(global.time-8)*0.1))
}