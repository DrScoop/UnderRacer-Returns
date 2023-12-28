scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_flowey) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/3.5}

if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="F. Pellets"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100{
pu1=instance_create(x,y,obj_powerup_pellet)
pu1.direction=direction
pu1.creator=id
pu1.z=z+6
pu2=instance_create(x,y,obj_powerup_pellet)
pu2.direction=direction
pu2.creator=id
pu2.z=z
pu2.adddir_dir-=1
pu3=instance_create(x,y,obj_powerup_pellet)
pu3.direction=direction
pu3.creator=id
pu3.z=z
pu3.adddir_dir+=1
pu4=instance_create(x,y,obj_powerup_pellet)
pu4.direction=direction+180
pu4.creator=id
pu4.z=z+6
pu5=instance_create(x,y,obj_powerup_pellet)
pu5.direction=direction-25
pu5.creator=id
pu5.z=z
pu5.adddir_dir-=1
pu6=instance_create(x,y,obj_powerup_pellet)
pu6.direction=direction+25
pu6.creator=id
pu6.z=z
pu6.adddir_dir+=1
sound_2play(global.snd_power_flowey)
ability_timer=0
ability_trigger=false
alarm[1]=20
alarm[2]=40
alarm[3]=60
}
}

