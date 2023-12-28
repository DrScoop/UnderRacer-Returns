scr_kartsettings()

if stuntimer=25{sound_2play(snd_honk) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2.5}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Tears"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu=instance_create(x,y,obj_powerup_tear)
pu.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu.speed=-5
pu.z=z
pu.creator=id
pu2=instance_create(x,y,obj_powerup_tear)
pu2.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu2.speed=-5
pu2.z=z
pu2.creator=id
pu3=instance_create(x,y,obj_powerup_tear)
pu3.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu3.speed=-5
pu3.z=z
pu3.creator=id
alarm[1]=30
alarm[2]=60
sound_2play(global.snd_power_blook)
ability_timer=0
ability_trigger=false
}
}

