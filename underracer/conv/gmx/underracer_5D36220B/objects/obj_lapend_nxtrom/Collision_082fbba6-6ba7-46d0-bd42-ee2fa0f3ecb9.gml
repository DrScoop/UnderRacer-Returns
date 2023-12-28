if other.player=1{global.start_speed=other.speed sound_2play(snd_click) other.visible=false alarm[0]=15 instance_create(x,y,obj_hud_black)}
if other.player!=1{with other{sound_2play(snd_lapcomplete) instance_destroy()}}

