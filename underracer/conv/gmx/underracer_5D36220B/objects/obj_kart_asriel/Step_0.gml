scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_asriel) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/3}
ability_timer+=(0.125)/3
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Star Blazing"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu1=instance_create(x,y,obj_powerup_asrielstar)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_asrielstar)
pu2.direction=direction+45
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_asrielstar)
pu3.direction=direction-45
pu3.speed=14
pu3.creator=id
pu3.z=z
sound_2play(global.snd_power_asriel)
ability_timer=0
ability_trigger=false

}
}

