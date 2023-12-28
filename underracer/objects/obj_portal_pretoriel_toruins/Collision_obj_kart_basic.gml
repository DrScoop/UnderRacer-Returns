if other.player=1{if global.dialogue=false{alarm[0]=10 global.start_speed=0 global.dialogue=true}}
if other.player!=1{with other{instance_destroy()}}

