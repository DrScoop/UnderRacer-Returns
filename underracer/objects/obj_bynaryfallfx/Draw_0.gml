scr_cam_definesencos()

var tex;
tex = sprite_get_texture(spr_binary,image_index);
d3d_set_fog(false,c_black,10,global.renderdistance)
d3d_draw_wall(x-12*camsin,y-12*camcos,24+z,x+12*camsin,y+12*camcos,0+z,tex,1,1);
d3d_set_fog(true,c_black,10,global.renderdistance)

