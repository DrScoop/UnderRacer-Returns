// Place this code in the draw event of your 3d object
// Specify here each background or sprite index to be used as textures (don't use background_get_texture() or sprite_get_texture())
version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 1
tex = sprite_get_texture(spr_tex_lapend,image_index);
draw_set_color(c_white);
draw_set_alpha(1);
texture_set_repeat(true);
d3d_transform_set_identity();
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z);
d3d_draw_block(-8,-48,128,8,48,0,tex,3,4,spr_tex_lapend);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code

