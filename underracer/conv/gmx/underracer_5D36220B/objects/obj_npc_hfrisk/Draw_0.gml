scr_cam_definesencos()

var tex;
draw_set_alpha(image_alpha)
tex = sprite_get_texture(modelsprite,image_index);
d3d_draw_wall(x-9*camsin,y-9*camcos,20,x+9*camsin,y+9*camcos,0,tex,1,1);
draw_set_alpha(1)

