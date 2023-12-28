scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_gaster) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="W.D. Blaster"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="W.D. Blaster"{
pu=instance_create(x,y,obj_powerup_gb)
pu.direction=direction
pu.creator=id
pu.z=z
sound_2play(global.snd_power_gaster)
alarm[1]=20
alarm[2]=40
ability_timer=0
ability_trigger=false
}
}

