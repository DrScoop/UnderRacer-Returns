if sprite_index=spr_options_bindsettings{if image_index>6{can_bind=false sprite_index=spr_options_bind_pl1 image_index=0}}

if can_bind=true{
if sprite_index=spr_options_bindsettings{
if image_index=0{if mouse_check_button_pressed(mb_any){global.control_pl1move_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
if image_index=1{if mouse_check_button_pressed(mb_any){global.control_pl1break_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
if image_index=2{if mouse_check_button_pressed(mb_any){global.control_pl1right_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
if image_index=3{if mouse_check_button_pressed(mb_any){global.control_pl1left_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
if image_index=4{if mouse_check_button_pressed(mb_any){global.control_pl1use_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
if image_index=5{if mouse_check_button_pressed(mb_any){global.control_pl1special_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
if image_index=6{if mouse_check_button_pressed(mb_any){global.control_pl1cam_jk=gamepad_find_button(1) sound_2play(snd_click) alarm[0]=3}}
}}

