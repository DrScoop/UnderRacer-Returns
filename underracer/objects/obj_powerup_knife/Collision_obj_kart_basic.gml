if other.z<24{
if other.id!=creator{
fx=instance_create(x,y,obj_bonefx)
fx.direction=direction
fx.speed=-6
sound_2play(snd_hit)
other.stun=true
other.speed=0
other.path_speed=0
instance_destroy()
}}

