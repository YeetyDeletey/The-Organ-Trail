if (global.distancetolandmark >= global.travel) {
	if (oTrailScreen.counter > 0) {num = (global.travel * oTrailScreen.counter / 4)}
	else {num = 0}
} else {
	if (oTrailScreen.counter > 0) {num = (global.distancetolandmark * oTrailScreen.counter / 4)}
	else {num = 0}
}
x = 680 - (global.distancetolandmark * 10) + num


