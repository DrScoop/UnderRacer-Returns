scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_bulletfx,image_index);
d3d_draw_wall(x-14*camsin,y-14*camcos,32,x+14*camsin,y+14*camcos,0,tex,1,1);

