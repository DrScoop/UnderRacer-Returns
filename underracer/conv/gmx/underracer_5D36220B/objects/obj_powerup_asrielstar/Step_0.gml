var nearenemy;
nearenemy=instance_nearest_notme(x,y,obj_kart_basic,creator)

if distance_to_object(nearenemy)<50{destroy=true}

if destroy=true{
pu1=instance_create(x,y,obj_powerup_asrielbullet)
pu1.direction=direction
pu1.speed=14
pu1.creator=creator
pu1.z=z
pu2=instance_create(x,y,obj_powerup_asrielbullet)
pu2.direction=direction+45
pu2.speed=14
pu2.creator=creator
pu2.z=z
pu3=instance_create(x,y,obj_powerup_asrielbullet)
pu3.direction=direction-45
pu3.speed=14
pu3.creator=creator
pu3.z=z
pu4=instance_create(x,y,obj_powerup_asrielbullet)
pu4.direction=direction+180
pu4.speed=14
pu4.creator=creator
pu4.z=z
pu5=instance_create(x,y,obj_powerup_asrielbullet)
pu5.direction=direction+90
pu5.speed=14
pu5.creator=creator
pu5.z=z
pu6=instance_create(x,y,obj_powerup_asrielbullet)
pu6.direction=direction-90
pu6.speed=14
pu6.creator=creator
pu6.z=z
pu7=instance_create(x,y,obj_powerup_asrielbullet)
pu7.direction=direction+225
pu7.speed=14
pu7.creator=creator
pu7.z=z
pu8=instance_create(x,y,obj_powerup_asrielbullet)
pu8.direction=direction-225
pu8.speed=14
pu8.creator=creator
pu8.z=z
fx=instance_create(x,y,obj_bulletfx_big)
fx.direction=direction
fx.speed=-3
sound_2play(snd_hit)
instance_destroy()
}

