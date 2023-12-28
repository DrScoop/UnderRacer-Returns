draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_set_font(fnt_hud)
if global.achieve_secretcodewall>-1{
draw_set_color(c_white)
draw_text(x+40,y,string_hash_to_newline("Secret Achievement : Not Completed"))
draw_text(x+40,y+16,string_hash_to_newline("It's a secret ;)"))
}
if global.achieve_secretcodewall=-1{
draw_set_color(c_yellow)
draw_text(x+40,y,string_hash_to_newline("It's a secret to everybody : COMPLETED"))
draw_text(x+40,y+16,string_hash_to_newline("Find the great code wall!"))
}

