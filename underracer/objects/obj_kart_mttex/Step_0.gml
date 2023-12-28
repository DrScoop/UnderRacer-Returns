scr_kartsettings()

if stuntimer=25{sound_2play(snd_mttugh) stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<100{ability="None"}
if ability_timer>=100{ability_timer=100 ability="MettaLove"}

if ability_trigger=true and ability_timer<100{ability_trigger=false}

if ability_trigger=true{
if ability_timer=100 and ability="MettaLove"{
pu=instance_create(x,y,obj_powerup_mttsentry)
pu.direction=direction
pu.creator=id
pu.z=z
sound_2play(global.snd_power_mtt)
ability_timer=0
ability_trigger=false

}
}

