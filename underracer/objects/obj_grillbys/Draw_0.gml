if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
if !variable_instance_exists(self,"z") {z=0};
var tex_top;
tex_top = tex_snowdin_snowtile_snow;
var tex_front;
tex_front = tex_grillbys_front;
var tex_side_0;
tex_side_0 = tex_grillbys_side;
var tex_side_1;
tex_side_1 = tex_grillbys_side;
var tex_side_2;
tex_side_2 = tex_grillbys_side;

version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// top
tex = background_get_texture(tex_top);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,80);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-96,-112,5,96,112,0,tex,1,1);
d3d_transform_set_identity();
// front
tex = background_get_texture(tex_front);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(90);
d3d_transform_add_translation(96,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-112,0,80,112,0,0,tex,1,1);
d3d_transform_set_identity();
// side 0
tex = background_get_texture(tex_side_0);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(90);
d3d_transform_add_translation(-96,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-112,0,80,112,0,0,tex,1,1);
d3d_transform_set_identity();
// side 1
tex = background_get_texture(tex_side_1);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,112,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-96,0,80,96,0,0,tex,1,1);
d3d_transform_set_identity();
// side 2
tex = background_get_texture(tex_side_2);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,-112,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-96,0,80,96,0,0,tex,1,1);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code
}}

