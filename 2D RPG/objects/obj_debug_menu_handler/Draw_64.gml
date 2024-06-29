/// @description Drawing Debug Menu
draw_set_font(Font_1)
draw_set_color(c_yellow)


//Game Over Screen
if global.health = 0 {
	show_gui = false;
	show_game_over = true;
	draw_set_color(c_black)
	draw_rectangle(0,0,950,750,false)
	draw_set_color(c_white)
	
	var game_over_text = "GAME OVER";
	var game_over_text_width = string_width(game_over_text);
	var game_over_text_height = string_height(game_over_text);
	var game_over_x = (display_get_gui_width() - game_over_text_width) / 2;
    var game_over_y = (display_get_gui_height() - game_over_text_height) / 2;

	draw_text(game_over_x,game_over_y,string(game_over_text))
	draw_set_color(c_gray);
    draw_rectangle(button_x, button_y, button_x + button_width, button_y + button_height, false); // Draw a gray button
    draw_set_color(c_white);
    draw_text_transformed(button_x + button_width / 6, button_y + button_height / 6, "Reset Game",0.75,0.75,0); // Draw text on the button
}


if (show_gui) {


//PLAYER HEALTH
draw_text(0, 159, "Player Health: " + string(global.health));
draw_text(0, 179, "Player Position: (" + string(obj_player.x) + ", " + string(obj_player.y) + ")");


//ROOM
var room_name = room_get_name(room);
draw_text(0,0,"Room:")
draw_text(0,17,string(room_name))


//FPS
draw_text(0, 70, "FPS: " + string(fps));
draw_text(0, 90, "Instance Count: " + string(instance_count));
}

