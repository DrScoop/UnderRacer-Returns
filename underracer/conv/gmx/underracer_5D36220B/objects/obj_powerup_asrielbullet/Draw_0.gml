scr_cam_definesencos()

var tex;
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-6*camsin,y-6*camcos,16+z,x+6*camsin,y+6*camcos,4+z,tex,1,1);

