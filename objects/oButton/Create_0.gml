//Needs text, wid, hei
if hei != 1 {
	image_yscale = ((hei * 35) - 11)
}
else {
	image_yscale = 24
}
image_xscale = 908


draw_set_font(global.pressstart)
draw_set_color(c_white)

candie = false