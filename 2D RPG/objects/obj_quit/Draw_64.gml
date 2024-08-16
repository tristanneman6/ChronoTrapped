draw_set_font(global.font_main);
draw_set_color(c_white)
if quitting == true {
draw_text_color(x, y, "Quitting...", c_white, c_white, c_white, c_white, 1)
} else {
	draw_text_color(x, y, "", c_white, c_white, c_white, c_white, 1)
}