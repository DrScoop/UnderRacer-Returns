scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_muffet) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Webs"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="Webs"{
pu1=instance_create(x,y,obj_powerup_tileweb)
pu1.direction=direction
pu1.speed=-6
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_tileweb)
pu2.direction=direction-4
pu2.speed=-6
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_tileweb)
pu3.direction=direction+4
pu3.speed=-6
pu3.creator=id
pu3.z=z
alarm[2]=15
sound_2play(global.snd_power_muffet)
ability_timer=0
ability_trigger=false
playercolor=c_purple
}
}

