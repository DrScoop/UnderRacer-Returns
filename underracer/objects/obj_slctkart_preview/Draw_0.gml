draw_self()
draw_sprite_ext(sprite_index,-1,x-sprite_get_width,y-sprite_get_height,4,4,image_angle,c_white,image_alpha)
draw_set_color(c_yellow)
draw_text(64,432,string_hash_to_newline(global.preview_charname))
draw_set_color(c_white)

