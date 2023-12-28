scr_cam_definesencos()

var tex;
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-6*camsin,y-6*camcos,12+12,x+6*camsin,y+6*camcos,0+12,tex,1,1);

