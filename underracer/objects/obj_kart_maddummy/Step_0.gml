scr_kartsettings()

if stuntimer=25{sound_2play(snd_honk) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/4}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="Knife Dance"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="Knife Dance"{
pu=instance_create(x,y,obj_powerup_knife)
pu.direction=direction
pu.speed=14
pu.creator=id
pu.z=z
pu1=instance_create(x,y,obj_powerup_cotton)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_cotton)
pu2.direction=direction+10
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_cotton)
pu3.direction=direction-10
pu3.speed=14
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_cotton)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=id
pu4.z=z
pu5=instance_create(x,y,obj_powerup_cotton)
pu5.direction=direction+190
pu5.speed=14
pu5.creator=id
pu5.z=z
pu6=instance_create(x,y,obj_powerup_cotton)
pu6.direction=direction-190
pu6.speed=14
pu6.creator=id
pu6.z=z
sound_2play(global.snd_power_mad)
ability_timer=0
ability_trigger=false

}
}

