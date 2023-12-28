draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
draw_set_font(fnt_hud)
draw_set_color(c_white)
draw_text(x,y+136,string_hash_to_newline("Accel: "+string(global.control_pl2move_jk)))
draw_text(x,y+136+16,string_hash_to_newline("Break: "+string(global.control_pl2break_jk)))
draw_text(x,y+136+32,string_hash_to_newline("Right: "+string(global.control_pl2right_jk)))
draw_text(x,y+136+48,string_hash_to_newline("Left: "+string(global.control_pl2left_jk)))
draw_text(x,y+136+64,string_hash_to_newline("Powerup: "+string(global.control_pl2use_jk)))
draw_text(x,y+136+80,string_hash_to_newline("Attack: "+string(global.control_pl2special_jk)))
draw_text(x,y+136+96,string_hash_to_newline("Rearview: "+string(global.control_pl2cam_jk)))
//if gamepad_exists(2){draw_text(x,y+136+96+16,string_hash_to_newline("Control Enabled"))}
//if !gamepad_exists(2){draw_text(x,y+136+96+16,string_hash_to_newline("Control Not Enabled"))}

