function scr_powerups() {
	if powerup_trigger=true{
	if powerup="None"{powerup_trigger=false}
	if powerup="Spikes"{
	pu=instance_create(x,y,obj_powerup_spike)
	pu.direction=direction
	pu.speed=-3
	pu.z=z
	pu.creator=id
	sound_2play(snd_powerup_spikes)
	powerup="None"
	powerup_trigger=false
	}
	if powerup="Jetpack"{
	if powerup_sndplay=true{sound_2play(snd_powerup_jetpack) powerup_sndplay=false}
	kart_maxspd=kart_maxspd_db
	speed=kart_maxspd_db
	powerup_timer-=1
	}
	if powerup="Spaghetti"{if powerup_sndplay=true{sound_2play(snd_powerup_spaghetti) powerup_sndplay=false} powerup_timer-=0.25 playercolor=c_yellow}
	if powerup="G. Blaster"{
	pu=instance_create(x,y,obj_powerup_gb)
	pu.direction=direction
	pu.creator=id
	pu.z=z
	sound_2play(snd_powerup_gb)
	powerup="None"
	powerup_trigger=false
	}
	if powerup="Bone"{
	pu=instance_create(x,y,obj_powerup_bone)
	pu.direction=direction
	pu.speed=14
	pu.creator=id
	pu.z=z
	pu2=instance_create(x,y,obj_powerup_bone)
	pu2.direction=direction+10
	pu2.speed=14
	pu2.creator=id
	pu2.z=z
	pu3=instance_create(x,y,obj_powerup_bone)
	pu3.direction=direction-10
	pu3.speed=14
	pu3.creator=id
	pu3.z=z
	sound_2play(snd_powerup_bone)
	powerup="None"
	powerup_trigger=false
	}
	if powerup="Spear"{
	pu=instance_create(x,y,obj_powerup_spear)
	pu.direction=direction
	pu.creator=id
	pu.z=z
	pu.adddir_dir+=1
	pu2=instance_create(x,y,obj_powerup_spear)
	pu2.direction=direction
	pu2.creator=id
	pu2.z=z
	pu2.adddir_dir-=1
	sound_2play(snd_powerup_spear)
	powerup="None"
	powerup_trigger=false
	}
	if powerup="Blue Bone"{
	pu=instance_create(x,y,obj_powerup_bone_blue)
	pu.direction=direction
	pu.speed=10
	pu.creator=id
	pu.z=z
	sound_2play(snd_powerup_bone)
	powerup="None"
	powerup_trigger=false
	}
	}

	if powerup_timer<=0{powerup="None" powerup_trigger=false powerup_sndplay=true kart_maxspd=kart_maxspd_old playercolor=c_white powerup_timer=50}




}
