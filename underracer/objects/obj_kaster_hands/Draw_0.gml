scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_kaster_hands,image_index);
d3d_draw_wall(x-2*camsin,y-2*camcos,4+10+cambob,x+2*camsin,y+2*camcos,0+10+cambob,tex,1,1);

