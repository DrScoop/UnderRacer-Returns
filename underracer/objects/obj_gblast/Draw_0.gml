// Place this code in the draw event of your 3d object
version =  1.68;   // 3d Animator version
var tex,curcolor,curalpha;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
// shape 1
tex = -1;
draw_set_color(c_white);
draw_set_alpha(1);
d3d_transform_set_identity();
d3d_transform_add_translation(0,0,-150);
d3d_transform_add_rotation_y(90);
d3d_transform_add_translation(0,0,150);
d3d_transform_add_rotation_y(-4);
d3d_transform_add_translation(144,0,-155.00);
d3d_transform_add_rotation_z(direction);
d3d_transform_add_translation(x,y,z+6.5);
d3d_draw_cylinder(-2.50,-2.50,300,2.50,2.50,0,tex,1,1,1,12);
d3d_transform_set_identity();
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code

