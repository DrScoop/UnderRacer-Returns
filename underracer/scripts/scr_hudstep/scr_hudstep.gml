function scr_hudstep() {
	if is_string(target.powerup) {
		/*
		if target.powerup="None"{
			sprite_powerup = spr_powerup_none;
		}
		if target.powerup="Spikes"{sprite_powerup=spr_powerup_spikes}
		if target.powerup="G. Blaster"{sprite_powerup=spr_powerup_gb}
		if target.powerup="Spaghetti"{sprite_powerup=spr_powerup_spaghetti}
		if target.powerup="Bone"{sprite_powerup=spr_powerup_bone}
		if target.powerup="Blue Bone"{sprite_powerup=spr_powerup_bluebone}
		if target.powerup="Spear"{sprite_powerup=spr_powerup_spears}
		if target.powerup="Jetpack"{sprite_powerup=spr_powerup_jetpack}
		*/
		
		// Converted the above if chain with a nicer switch-case - gg
		
		switch target.powerup {
			case "None": { 
				sprite_powerup = spr_powerup_none;
				}; break;
			case "Spikes": { 
				sprite_powerup = spr_powerup_spikes;
				}; break;
			case "G. Blaster": { 
				sprite_powerup = spr_powerup_gb;
				}; break;
			case "Spaghetti": { 
				sprite_powerup = spr_powerup_spaghetti;
				}; break;
			case "Bone": { 
				sprite_powerup = spr_powerup_bone	;
				}; break;
			case "Blue Bone": { 
				sprite_powerup = spr_powerup_bluebone;
				}; break;
			case "Spear": { 
				sprite_powerup = spr_powerup_spears;
				}; break;
			case "Jetpack": { 
				sprite_powerup = spr_powerup_jetpack;
				}; break;
		}
	}
}
