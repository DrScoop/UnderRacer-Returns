// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
if !variable_local_exists("z") z = 0;
var tex_pillar1;
tex_pillar1 = tex_ruinsportal_pillar;
var tex_pillar2;
tex_pillar2 = tex_ruinsportal_pillar;
var tex_upperpart;
tex_upperpart = tex_ruinsportal_upper;
var tex_upperpart_1;
tex_upperpart_1 = tex_ruinsportal_upper;
var tex_fillerwall;
tex_fillerwall = tex_black;

version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// pillar1
tex = background_get_texture(tex_pillar1);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(16,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_cylinder(-4,-4,32,4,4,0,tex,1,1,1,8);
d3d_transform_set_identity();
// pillar2
tex = background_get_texture(tex_pillar2);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(-16,0,0);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_cylinder(-4,-4,32,4,4,0,tex,1,1,1,8);
d3d_transform_set_identity();
// upperpart
tex = background_get_texture(tex_upperpart);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,-4.00,32);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-20,0,16,20,0,0,tex,1,1);
d3d_transform_set_identity();
// upperpart 1
tex = background_get_texture(tex_upperpart_1);
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,4,32);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_wall(-20,0,16,20,0,0,tex,1,1);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// fillerwall
//d3d_draw_wall();
// end draw event code

