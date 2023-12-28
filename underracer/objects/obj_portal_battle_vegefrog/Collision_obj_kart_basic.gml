if tex_door = tex_ruins_dooriel{
if other.player=1{if global.dialogue=false{alarm[0]=40 global.start_speed=0 instance_create(0,0,obj_hud_battle) sound_stop_all() global.dialogue=true}}
if other.player!=1{with other{instance_destroy()}}
}

