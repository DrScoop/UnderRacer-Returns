if other.id!=creator{
fx=instance_create(x,y,obj_bulletfx)
fx.direction=direction
fx.speed=-6
sound_2play(snd_hit)
sound_2play(snd_slct_flowey)
other.stun=true
other.speed=-7
instance_destroy()
}

