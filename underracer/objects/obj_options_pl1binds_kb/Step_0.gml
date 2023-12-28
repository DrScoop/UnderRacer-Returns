if sprite_index=spr_options_bindsettings{if image_index>6{can_bind=false sprite_index=spr_options_bind_pl1 image_index=0}}

if can_bind=true{
if sprite_index=spr_options_bindsettings{
if image_index=0{if keyboard_check_pressed(vk_anykey){global.control_pl1move_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
if image_index=1{if keyboard_check_pressed(vk_anykey){global.control_pl1break_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
if image_index=2{if keyboard_check_pressed(vk_anykey){global.control_pl1right_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
if image_index=3{if keyboard_check_pressed(vk_anykey){global.control_pl1left_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
if image_index=4{if keyboard_check_pressed(vk_anykey){global.control_pl1use_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
if image_index=5{if keyboard_check_pressed(vk_anykey){global.control_pl1special_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
if image_index=6{if keyboard_check_pressed(vk_anykey){global.control_pl1cam_kb=keyboard_lastkey sound_2play(snd_click) alarm[0]=1}}
}}

