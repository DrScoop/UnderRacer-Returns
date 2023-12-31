// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
if variable_instance_exists(self,"z") { z = 0 } //!variable_local_exists("z") z = 0;
var tex_shape_1;
tex_shape_1 = tex_ruinsportal_upper_wall;
var tex_shape_2;
tex_shape_2 = tex_ruinsportal_pillar;
var tex_shape_3;
tex_shape_3 = tex_ruinsportal_pillar;

version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 1
tex = background_get_texture(tex_shape_1);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,48);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-19,-2.50,16,19,2.50,0,tex,1,1);
d3d_transform_set_identity();
// shape 2
tex = background_get_texture(tex_shape_2);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(16,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_cylinder(-2.50,-2.50,48,2.50,2.50,0,tex,1,1,1,12);
d3d_transform_set_identity();
// shape 3
tex = background_get_texture(tex_shape_3);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(-16,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_cylinder(-2.50,-2.50,48,2.50,2.50,0,tex,1,1,1,12);
d3d_transform_set_identity();
// shape 4
tex = -1;
draw_set_color(0);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,-2.50);
d3d_transform_add_rotation_x(90);
d3d_transform_add_translation(0,0,2.50);
d3d_transform_add_translation(0,0,45.40);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-16,-0,5,16,0,0,tex,1,1);
d3d_transform_set_identity();
// shape 5
tex = -1;
draw_set_color(0);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,-2.50);
d3d_transform_add_rotation_x(90);
d3d_transform_add_translation(0,0,2.50);
d3d_transform_add_translation(0,0,61.60);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-16,-0,5,16,0,0,tex,1,1);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code

