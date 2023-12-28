// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
if !variable_local_exists("z") z = -1;
var tex_shape_1;
tex_shape_1 = tex_mttshow_gate;

version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 1
tex = background_get_texture(tex_shape_1);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(90);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-32,-2,96,32,2,0,tex,1,1);
d3d_transform_set_identity();
// shape 2
tex = -1;
draw_set_color(0);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,32,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-2.50,-2.50,96,2.50,2.50,0,tex,1,1);
d3d_transform_set_identity();
// shape 3
tex = -1;
draw_set_color(0);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,-32,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-2.50,-2.50,96,2.50,2.50,0,tex,1,1);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code

