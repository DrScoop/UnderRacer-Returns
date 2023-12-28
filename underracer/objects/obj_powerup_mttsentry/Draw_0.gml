scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_mttsentry,image_index);
d3d_draw_wall(x-12*camsin,y-12*camcos,24+z+vibration,x+12*camsin,y+12*camcos,0+z+vibration,tex,1,1);

