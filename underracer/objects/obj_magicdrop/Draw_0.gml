scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_magicdrop,image_index);
var tex2 = spr_magicdrop;
d3d_draw_wall(x-14*camsin,y-14*camcos,32,x+14*camsin,y+14*camcos,0,tex,1,1,tex2);

