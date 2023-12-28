if can_target=true{
if instance_exists(target){
x=target.x + lengthdir_x(Len, Angle + direction)
y=target.y + lengthdir_y(Len, Angle + direction)
if z>1{z=target.z}
speed=target.speed
friction=target.friction
direction=target.direction+adddir
camx=x
camy=y
camsin = sin(direction*pi/180);
camcos = cos(direction*pi/180);
}
}
if destroy=true{instance_destroy()}

scr_wincampos()

if global.players<2{instance_destroy()}

Len = point_distance(0, 0, DX, DY); // This is the distance between the tip and the origin.
Angle = point_direction(0, 0, DX, DY); // This is the angle to the tip from the origin.

if global.gamemode="Campaign"{
hud.destroy=true
instance_destroy()
}

image_angle=direction

