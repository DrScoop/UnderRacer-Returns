scr_cam_definesencos()

var tex;
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-16*camsin,y-16*camcos,32+z,x+16*camsin,y+16*camcos,0+z,tex,1,1);

