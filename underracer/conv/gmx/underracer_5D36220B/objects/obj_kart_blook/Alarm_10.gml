pu=instance_create(x,y,obj_powerup_tear)
pu.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu.speed=-5
pu.z=z
pu.creator=id
pu2=instance_create(x,y,obj_powerup_tear)
pu2.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu2.speed=-5
pu2.z=z
pu2.creator=id
pu3=instance_create(x,y,obj_powerup_tear)
pu3.direction=direction+choose(10,0,-10,20,-20,30,-30)
pu3.speed=-5
pu3.z=z
pu3.creator=id

action_set_alarm(150, 10);
