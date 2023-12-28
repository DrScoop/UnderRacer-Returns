if can_target=true{
x=target.x
y=target.y
}

if image_index=4{instance_destroy()}

if global.gamemode="Rally"{z=terrain_get_z(x,y)-64}
if global.gamemode="Campaign Rally"{z=terrain_get_z(x,y)-64}

