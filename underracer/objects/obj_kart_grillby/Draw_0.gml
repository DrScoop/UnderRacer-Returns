scr_cam_definesencos()

var tex;
tex = sprite_get_texture(final_sprite,image_index);
draw_set_color(playercolor)
d3d_draw_wall(x-kwidth*camsin,y-kwidth*camcos,kheight+vibration+vibration,x+kwidth*camsin,y+kwidth*camcos,kbottom+vibration+vibration,tex,1,1)

