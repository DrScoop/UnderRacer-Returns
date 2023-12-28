if timer_trigger=true{timer-=1 visible=false}

if timer<=0{visible=true timer_trigger=false timer=100}

if global.gamemode="Rally"{z=terrain_get_z(x,y)-64}
if global.gamemode="Campaign Rally"{z=terrain_get_z(x,y)-64}

