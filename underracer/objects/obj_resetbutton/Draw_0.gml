draw_set_font(fnt_hud)
draw_set_color(c_yellow)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
if reset=true{draw_text(x-8,y+48,string_hash_to_newline("RESET Successful!"))}
draw_set_color(c_white)

