scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_grassfx,image_index);
d3d_draw_wall(x-7*camsin,y-7*camcos,15,x+7*camsin,y+7*camcos,0,tex,1,1);

