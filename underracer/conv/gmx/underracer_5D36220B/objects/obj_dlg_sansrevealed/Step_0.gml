if global.snowdincutscenefinal=true{instance_destroy()}

scr_dialoguebox_step()
if !sound_isplaying(snd_whoopee) and !sound_isplaying(global.snd_sans){sound_2loop(global.snd_sans)}

//Don't mind this, it's a simple fix because i set the variable to the wrong object accidentaly 
if instance_exists(dlg){spriteface=dlg.spriteface}

