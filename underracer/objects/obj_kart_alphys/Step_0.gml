scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_alphys) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2.5}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Electricity"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu=instance_create(x,y,obj_powerup_shock)
pu.direction=direction
pu.creator=id
pu.speed=14
pu.z=z
alarm[1]=20
alarm[2]=40
sound_2play(global.snd_power_alphys)
ability_timer=0
ability_trigger=false
}
}

