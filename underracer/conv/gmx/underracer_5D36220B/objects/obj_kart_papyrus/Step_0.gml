scr_kartsettings()

if stuntimer=25{sound_2play(snd_slct_papy) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/3}

if ability_timer<0{ability="None" ability_timer=0 ability_sndplay=true ability_trigger=false kart_maxspd=kart_maxspd_old playercolor=c_white}
if ability_timer>=100{ability_timer=100 ability="Spaghettore"}

if ability_trigger=true and ability_timer!=100 and playercolor!=c_yellow{ability_trigger=false}

if ability_trigger=true{

if ability="Spaghettore"{
ability_timer-=2
//kart_maxspd=kart_maxspd_db
//speed=kart_maxspd_db
playercolor=c_yellow
}

if ability_sndplay=true{
pu=instance_create(x,y,obj_powerup_bone_blue)
pu.direction=direction
pu.speed=10
pu.creator=id
pu.z=z
pu1=instance_create(x,y,obj_powerup_bone)
pu1.direction=direction
pu1.speed=14
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_bone)
pu2.direction=direction+90
pu2.speed=14
pu2.creator=id
pu2.z=z
pu3=instance_create(x,y,obj_powerup_bone)
pu3.direction=direction-90
pu3.speed=14
pu3.creator=id
pu3.z=z
pu4=instance_create(x,y,obj_powerup_bone)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=id
pu4.z=z
sound_2play(global.snd_power_papyrus)
ability_trigger=false
ability_sndplay=false
}

}

