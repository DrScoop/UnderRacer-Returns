if image_index<0{image_index=4}
if image_index>4{image_index=0}

//Keyboard
if clickd=false{
	if keyboard_check_pressed(global.control_pl1move_kb) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(1,global.control_pl1move_jk) or gamepad_button_check_pressed(1,global.control_pl1left_jk){
		image_index-=1
		sound_2play(snd_slct)
	}
	if keyboard_check_pressed(global.control_pl1break_kb) or keyboard_check_pressed(vk_down) or gamepad_button_check_pressed(1,global.control_pl1break_jk) or gamepad_button_check_pressed(1,global.control_pl1right_jk){
		image_index+=1
		sound_2play(snd_slct)
	}
}

if keyboard_check_pressed(global.control_pl1use_kb) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(1,global.control_pl1use_jk){

if image_index=0{
if clickd=false{
clickd=true
alarm[0]=15
sound_2play(snd_click)
}}

if image_index=1{
if clickd=false{
clickd=true
alarm[1]=15
sound_2play(snd_click)
}}

if image_index=2{
if clickd=false{
clickd=true
alarm[2]=15
sound_2play(snd_click)
}}

if image_index=3{
	if clickd=false{
		clickd=true
		alarm[3]=15
		sound_2play(snd_click)
	}
}

if image_index=4{
if clickd=false{
clickd=true
alarm[4]=15
sound_2play(snd_click)
}}}

