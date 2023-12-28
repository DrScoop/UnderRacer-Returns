scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_undyne) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Spear Fear"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{

pu2=instance_create(x,y,obj_powerup_tilespear)
pu2.direction=direction-2
pu2.speed=-6
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_tilespear)
pu3.direction=direction+2
pu3.speed=-6
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_spear)
pu4.direction=direction
pu4.creator=id
pu4.z=z
pu4.adddir_dir+=1
pu5=instance_create(x,y,obj_powerup_spear)
pu5.direction=direction
pu5.creator=id
pu5.z=z
pu5.adddir_dir-=1
sound_2play(global.snd_power_undyne)
ability_timer=0
ability_trigger=false

}
}

