pu1=instance_create(x,y,obj_powerup_fireball)
pu1.direction=direction-175
pu1.speed=12
pu1.creator=id
pu1.z=z
pu2=instance_create(x,y,obj_powerup_fireball)
pu2.direction=direction-185
pu2.speed=12
pu2.creator=id
pu2.z=z

action_set_alarm(150, 10);
