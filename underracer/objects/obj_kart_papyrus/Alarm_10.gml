pu=instance_create(x,y,obj_powerup_bone)
pu.direction=direction+35
pu.speed=-4
pu.z=z
pu.creator=id
pu2=instance_create(x,y,obj_powerup_bone)
pu2.direction=direction
pu2.speed=-4
pu2.z=z
pu2.creator=id
pu3=instance_create(x,y,obj_powerup_bone)
pu3.direction=direction-35
pu3.speed=-4
pu3.z=z
pu3.creator=id

action_set_alarm(100, 10);
