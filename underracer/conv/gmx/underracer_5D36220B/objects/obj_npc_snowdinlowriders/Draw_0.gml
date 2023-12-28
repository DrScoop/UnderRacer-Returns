scr_cam_definesencos()

var tex;
draw_set_alpha(image_alpha)
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-16*camsin,y-16*camcos,32,x+16*camsin,y+16*camcos,0,tex,1,1);
draw_set_alpha(1)

