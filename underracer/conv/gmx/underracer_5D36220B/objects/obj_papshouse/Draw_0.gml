if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
if !variable_local_exists("z") z = 0;
var tex_shape_2;
tex_shape_2 = tex_papshouse_side;
var tex_front;
tex_front = tex_papshouse_front;
var tex_shape_4;
tex_shape_4 = tex_papshouse_side;
var tex_shape_5;
tex_shape_5 = tex_papshouse_side;
var tex_top;
tex_top = tex_snowdin_snowtile_snow;
var tex_2floor;
tex_2floor = tex_papshouse_side;
var tex_top_2;
tex_top_2 = tex_snowdin_snowtile_snow;

version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 2
tex = background_get_texture(tex_shape_2);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,96,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-112,0,80,112,0,0,tex,1,1);
d3d_transform_set_identity();
// front
tex = background_get_texture(tex_front);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,-96,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-112,0,80,112,0,0,tex,1,1);
d3d_transform_set_identity();
// shape 4
tex = background_get_texture(tex_shape_4);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(90);
d3d_transform_add_translation(112,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-96,0,80,96,0,0,tex,1,1);
d3d_transform_set_identity();
// shape 5
tex = background_get_texture(tex_shape_5);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(90);
d3d_transform_add_translation(-112,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-96,0,80,96,0,0,tex,1,1);
d3d_transform_set_identity();
// top
tex = background_get_texture(tex_top);
draw_set_color(c_white);
draw_set_alpha(1);
texture_set_repeat(true);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,-16);
d3d_transform_add_rotation_x(180);
d3d_transform_add_translation(0,0,16);
d3d_transform_add_rotation_z(45);
d3d_transform_add_translation(0,0,80);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_cone(-162.50,-162.50,32,162.50,162.50,0,tex,1,1,1,4);
d3d_transform_set_identity();
// 2floor
tex = background_get_texture(tex_2floor);
draw_set_color(c_white);
draw_set_alpha(1);
texture_set_repeat(false);
d3d_transform_set_identity();
d3d_transform_add_translation(-24,16,80);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-75,-75,80,75,75,0,tex,1,1);
d3d_transform_set_identity();
// top 2
tex = background_get_texture(tex_top_2);
draw_set_color(c_white);
draw_set_alpha(1);
texture_set_repeat(true);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,-16);
d3d_transform_add_rotation_x(180);
d3d_transform_add_translation(0,0,16);
d3d_transform_add_rotation_z(45);
d3d_transform_add_translation(-24,16,160);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_cone(-112.50,-112.50,32,112.50,112.50,0,tex,1,1,1,4);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code
}}

