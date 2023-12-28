if global.achieve_floweysouls>=1{
global.unlock_asriel=true 
global.achieve_floweysouls=-1 
hud=instance_create(x,y,obj_hud_achievement)
hud.sprite_achievement=spr_unlock_asriel
}

if global.achieve_corefall>=6{
global.unlock_gaster=true 
global.achieve_corefall=-1
hud=instance_create(x,y,obj_hud_achievement)
hud.sprite_achievement=spr_unlock_gaster
}

if global.achieve_secretcodewall=1{
global.achieve_secretcodewall=-1
hud=instance_create(x,y,obj_hud_achievement)
hud.sprite_achievement=spr_unlock_secretcodewall
}

if global.achieve_papyblaster=1{
global.achieve_papyblaster=-1
hud=instance_create(x,y,obj_hud_achievement)
hud.sprite_achievement=spr_unlock_papyblaster
}

