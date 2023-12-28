if global.racestart=true{image_alpha-=0.0125}

if image_alpha<=0{instance_destroy()}

if image_index=4{
global.racestart=true 
sound_2play(snd_racestart) 
sound_2loop(global.lvlsong)
image_index=5 
addnumb=false}

if global.level="Ruins"{global.lvlsong=global.snd_ruins}

if global.level="Blook Boss"{global.lvlsong=global.snd_blook}

if global.level="Toriel Boss"{global.lvlsong=global.snd_toriel}

if global.level="Ruins Battle"{global.lvlsong=global.snd_toriel}

if global.level="Snowdin Forest"{global.lvlsong=global.snd_snowdin}

if global.level="Waterfall"{global.lvlsong=global.snd_waterfall}

if global.level="CORE"{global.lvlsong=global.snd_core}

if global.level="Sans Rally"{global.lvlsong=global.snd_sans}

if global.level="Snowdin Battle"{global.lvlsong=global.snd_snowdincircuit}

if global.level="Papyrus Boss"{global.lvlsong=global.snd_papyrus}

