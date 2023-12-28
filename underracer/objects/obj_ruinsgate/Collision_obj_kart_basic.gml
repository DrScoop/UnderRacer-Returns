if other.player=1{global.start_speed=other.speed room_goto_next() instance_destroy()}
if other.player!=1{with other{instance_destroy()}}

