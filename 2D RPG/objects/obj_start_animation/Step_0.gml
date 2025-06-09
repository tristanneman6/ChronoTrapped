

//animation_frame = 1;

//if animation_frame == 1 {
	//draw_sprite(spr_start_animation1, 1, 0,0);
//} if keyboard_check_pressed(ord("Z")) {
	//animation_frame = 2
//}

if sprite_exists(spr_start_animation1) {
	room_goto(rm_bed_room)
}