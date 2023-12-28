target=creator

if alive=true{
if can_target=true{

nearenemy=instance_nearest_notme(x,y,obj_kart_basic,creator)

x=creator.x
y=creator.y

if nearenemy!=creator{
if distance_to_object(nearenemy)<300{
if !collision_line(x,y,nearenemy.x,nearenemy.y,obj_col_basic,1,1){direction=point_direction(x,y,nearenemy.x,nearenemy.y) can_atk=true}
if collision_line(x,y,nearenemy.x,nearenemy.y,obj_col_basic,1,1){direction=target.direction can_atk=false}
}}}


if z>20{
if can_atk=true{
if lifetimer>0{
lifetimer-=2
if blasted=false{
blast=instance_create(x,y,obj_powerup_shock)
blast.creator=creator
blast.target=target
blast.direction=direction
blast.speed=8
image_index=1
blasted=true
down=true
image_index=0
alarm[1]=15
}}}}

}

if lifetimer<0{lifetimer=0}

if down=true and distance_to_object(nearenemy)>300{lifetimer=0}

if down=false {if alive=true and down=false and z<24{z+=2}}
if down=true and lifetimer<=0{z-=2 image_index=0}

if z<-33{instance_destroy()}

