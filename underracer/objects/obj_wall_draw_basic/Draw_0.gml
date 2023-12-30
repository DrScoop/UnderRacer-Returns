if (view_current=0) {
	if distance_to_object(obj_cam1) > global.renderdistance exit {
		version =  1.68;   // 3d Animator version
		var curcolor,curalpha;
		curcolor = draw_get_color();
		curalpha = draw_get_alpha();
		// shape 1
		draw_set_color(c_white);
		draw_set_alpha(1);
		d3d_transform_set_identity();
		d3d_transform_add_translation(0,0,0);
		d3d_transform_add_rotation_z(direction);
		d3d_transform_add_translation(x,y,z);
		d3d_draw_wall(-16,0,ztop+z,16,0,zbottom+z,background_get_texture(tex),hrepeat,vrepeat);
		d3d_transform_set_identity();
	}
}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
version =  1.68;   // 3d Animator version
var curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 1
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-16,0,ztop+z,16,0,zbottom+z,background_get_texture(tex),hrepeat,vrepeat);
d3d_transform_set_identity();
}}}

