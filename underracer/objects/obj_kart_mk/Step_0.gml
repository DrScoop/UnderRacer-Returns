scr_kartsettings()

if stuntimer=25{stuntimer=24}

if global.racestart=true{ability_timer+=(0.125)/2}
if ability_timer<=0{ability_timer=0 ability="None" ability_trigger=false ability_sndplay=true kart_maxspd=kart_maxspd_old}
if ability_timer>=100{ability_timer=100 ability="MonsterBoost"}

if ability_trigger=true{
if ability="MonsterBoost"{
kart_maxspd=kart_maxspd_db
speed=kart_maxspd_db
if ability_sndplay=true{sound_2play(snd_powerup_jetpack) ability_sndplay=false}
ability_timer-=5
}
}


