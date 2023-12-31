scr_kartsettings()

if global.racestart=true{ability_timer+=(0.125)/2.5}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="DT Bullets"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="DT Bullets"{
pu=instance_create(x,y,obj_powerup_ylwbullet)
pu.direction=direction
pu.creator=id
pu.speed=14
pu.z=z
playercolor=c_yellow
alarm[1]=20
alarm[2]=40
alarm[3]=60
sound_2play(global.snd_power_frisk)
ability_timer=0
ability_trigger=false
}
}

