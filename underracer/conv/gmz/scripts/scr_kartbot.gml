if global.bot_trigger=false{instance_destroy()}

if global.racestart=true{bot_racestart=true}
if global.racestart=false{bot_racestart=false}

if bot_pathstart=false{speed+=kart_accel}

if bot_racestart=true and bot_pathstart=true{
path_start(botpath,botspd,2,true)
speed=0
bot_action="Move"
bot_pathstart=2
}

if stun=false{
path_speed+=kart_accel
if path_speed>kart_maxspd{path_speed=kart_maxspd}
if path_speed<-kart_maxspd/4{path_speed=-kart_maxspd/4}
}
if stun=true{path_speed-=friction}

/*
if speed<1 and bot_action!="Reverse"{bot_action="Reverse"}
if bot_action="Move"{speed+=kart_accel}
if bot_action="Reverse"{speed-=kart_accel}
if bot_action="Reverse" and speed<-1{bot_action="Move"}
*/

if powerup!="None"{powerup_trigger=true}

var nearkart,nearwall;
nearkart=instance_nearest(x,y,obj_kart_basic)
nearwall=instance_nearest(x,y,obj_col_basic)
