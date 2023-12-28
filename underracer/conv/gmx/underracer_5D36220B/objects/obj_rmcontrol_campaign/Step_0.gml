if global.racewon=true and can_playsong=true{can_playsong=false}

sound_volume(global.lvlsong,global.musicvolume)

if !gamepad_exists(1){global.controlinput=0}
if gamepad_exists(1){global.controlinput=1}

if global.gamemode="Campaign"{global.char1="Frisk" global.char1_obj=obj_kart_frisk}
if global.gamemode="Campaign Rally"{global.char1="Frisk" global.char1_obj=obj_kart_frisk}

if global.racewon=true and global.gamemode="Campaign Rally"{global.gamemode="Campaign"}

