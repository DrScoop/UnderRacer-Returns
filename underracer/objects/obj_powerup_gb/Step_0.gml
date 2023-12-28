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
blast=instance_create(x,y,obj_gblast)
blast.creator=id
blast.target=target
blast.z=z-5
blast.direction=direction
image_index=1
sound_2play(snd_gblast)
blasted=true
}}}}

}

if lifetimer<0{lifetimer=0}

if blasted=true and distance_to_object(nearenemy)>300{lifetimer=0}

if blasted=false {if alive=true and blasted=false and z<24{z+=2}}
if blasted=true and lifetimer<=0{blast.destroy=true z-=2 image_index=0}

if z<-33{instance_destroy()}

if image_index=1{vibration=choose(0.2,0.25,0.1,0.15,0.1,0.05)}

