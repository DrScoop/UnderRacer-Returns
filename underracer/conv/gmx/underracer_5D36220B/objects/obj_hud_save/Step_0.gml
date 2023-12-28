if destroy=true{instance_destroy()}

if image_index>1{image_index=0}
if image_index<0{image_index=1}


//Keyboard
if clickd=false{
if keyboard_check_pressed(global.control_pl1left_kb) or keyboard_check_pressed(vk_left) or gamepad_check_button_pressed(1,global.control_pl1break_jk) or gamepad_check_button_pressed(1,global.control_pl1left_jk){
image_index-=1
sound_2play(snd_slct)
}
if keyboard_check_pressed(global.control_pl1right_kb) or keyboard_check_pressed(vk_right) or gamepad_check_button_pressed(1,global.control_pl1move_jk) or gamepad_check_button_pressed(1,global.control_pl1right_jk){
image_index+=1
sound_2play(snd_slct)
}
}

if keyboard_check_pressed(global.control_pl1use_kb) or keyboard_check_pressed(vk_enter) or gamepad_check_button_pressed(1,global.control_pl1use_jk){

if image_index=0{
if clickd=false{
clickd=true
alarm[0]=35
sound_2play(snd_save)
scr_save_data()
final_sprite=spr_hud_saved
}}

if image_index=1{
if clickd=false{
clickd=true
alarm[0]=1
sound_2play(snd_click)
}}

}

