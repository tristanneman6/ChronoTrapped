var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p = 1;

draw_sprite_tiled(bg_forest_side, 0, _camx*_p, _camy*_p);

draw_sprite_tiled(bg_forest_side, 1, _camx*.8, _camy*.8);

draw_sprite_tiled(bg_forest_side, 2, _camx*.6, _camy*.6);

draw_sprite_tiled(bg_forest_side, 3, _camx*.4, _camy*.4);