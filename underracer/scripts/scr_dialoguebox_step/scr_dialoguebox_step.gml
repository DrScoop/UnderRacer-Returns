function scr_dialoguebox_step() {
	if instance_exists(dlg){
		if dlg.stringpos >= string_length(dlg.originalstring){image_speed=0 image_index=0}
		if dlg.stringpos < string_length(dlg.originalstring){image_speed=0.25}
	}

	if gamepad_is_connected(0) {
		if gamepad_button_check_pressed(0,global.control_pl1use_jk){
			if instance_exists(dlg){
				if dlg.stringpos >= string_length(dlg.originalstring){
					alarm[0]=1
					dlg.destroy=true
					dialogue+=1
				}
			}
		}
		if gamepad_button_check_pressed(0,global.control_pl1special_jk){dlg.stringpos = string_length(dlg.originalstring)}
	}

	if keyboard_check_pressed(global.control_pl1use_kb){
		if instance_exists(dlg){
			if dlg.stringpos >= string_length(dlg.originalstring){
				alarm[0]=1
				dlg.destroy=true
				dialogue+=1
				
			}
		}
	}
	if instance_exists(dlg) and keyboard_check_pressed(global.control_pl1special_kb){dlg.stringpos = string_length(dlg.originalstring)}
	



}
