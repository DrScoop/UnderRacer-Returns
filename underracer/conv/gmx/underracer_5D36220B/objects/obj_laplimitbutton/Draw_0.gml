draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_set_font(fnt_hud_big)
draw_set_color(c_white)
draw_text(x+64,y+85,string_hash_to_newline(string(global.lap_limit)))

