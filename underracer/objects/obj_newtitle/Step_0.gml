if gamepad_button_check(0,global.control_pl1use_jk){
sound_2loop(global.snd_menu)
room_goto_next()
}

if gamepad_button_check(0,global.control_pl1special_jk){
sound_2loop(global.snd_menu)
room_goto_next()
}

if keyboard_check_pressed(vk_anykey){
sound_2loop(global.snd_menu)
room_goto_next()
}

if keyboard_check_pressed(vk_escape){
sound_2loop(global.snd_menu)
room_goto_next()
}

