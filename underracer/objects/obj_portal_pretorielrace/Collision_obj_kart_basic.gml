if other.player=1{if global.dialogue=false{alarm[0]=15 global.start_speed=0 sound_stop_all() global.dialogue=true}}
if other.player!=1{with other{instance_destroy()}}

