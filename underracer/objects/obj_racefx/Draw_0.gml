scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_racefx,image_index);
d3d_draw_wall(x-7*camsin,y-7*camcos,15+z,x+7*camsin,y+7*camcos,0/*+z*/,tex,1,1);

