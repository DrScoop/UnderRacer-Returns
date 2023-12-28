pu1=instance_create(x,y,obj_powerup_pellet)
pu1.direction=direction
pu1.creator=id
pu1.z=z+6
pu2=instance_create(x,y,obj_powerup_pellet)
pu2.direction=direction+10
pu2.creator=id
pu2.z=z
pu2.adddir_dir-=1
pu3=instance_create(x,y,obj_powerup_pellet)
pu3.direction=direction-10
pu3.creator=id
pu3.z=z
pu3.adddir_dir+=1

