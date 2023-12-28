scr_cam_definesencos()

var tex;
tex = background_get_texture(tex_wfall_lamp);
d3d_draw_wall(x-16*camsin,y-16*camcos,32,x+16*camsin,y+16*camcos,0,tex,1,1);

