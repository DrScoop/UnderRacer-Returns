scr_kartsettings()

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="LOVE"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="LOVE"{
pu=instance_create(x,y,obj_powerup_knife)
pu.direction=direction
pu.creator=id
pu.speed=14
pu.z=z
alarm[1]=20
alarm[2]=40
alarm[3]=60
sound_2play(global.snd_power_chara)
ability_timer=0
ability_trigger=false
}
}

