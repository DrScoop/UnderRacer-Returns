target=creator

image_alpha+=0.125
if image_alpha>1{image_alpha=1 speed=0}

if instance_exists(obj_kart_flowey){
if obj_kart_flowey.stun=true{
fx=instance_create(x,y,obj_bulletfx)
fx.direction=direction
fx.speed=-3
instance_destroy()
}
}

