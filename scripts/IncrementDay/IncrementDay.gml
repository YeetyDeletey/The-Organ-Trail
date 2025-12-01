// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function incrementday(){
	global.day++
	global.time = 8
	nextmonth = false
	switch global.month {
		case 1:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "February"}
		break;
	
		case 2:
		if (global.day > 28) {
			nextmonth = true
			global.smonth = "March"}
		break;
	
		case 3:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "April"}
		break;
	
		case 4:
		if (global.day > 30) {
			nextmonth = true
			global.smonth = "May"}
		break;
	
		case 5:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "June"}
		break;
	
		case 6:
		if (global.day > 30) {
			nextmonth = true
			global.smonth = "July"}
		break;
	
		case 7:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "August"}
		break;
	
		case 8:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "September"}
		break;
	
		case 9:
		if (global.day > 30) {
			nextmonth = true
			global.smonth = "October"}
		break;
	
		case 10:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "November"}
		break;
	
		case 11:
		if (global.day > 30) {
			nextmonth = true
			global.smonth = "December"}
		break;
	
		case 12:
		if (global.day > 31) {
			nextmonth = true
			global.smonth = "January"}
		break;
	}
	
	if (nextmonth) {
		global.month++
		global.day = 1
		if (global.month == 13) {
			global.month = 1
			global.year++
		}
	}
}