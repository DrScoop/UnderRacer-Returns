scr_cam_definesencos()

var tex;
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-6*camsin,y-6*camcos,12+2+z,x+6*camsin,y+6*camcos,0+2+z,tex,1,1);

