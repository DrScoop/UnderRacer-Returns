if adddir_dir=1 {DY = 6}
if adddir_dir=-1 {DY = -6}

if instance_exists(target){
x=target.x + lengthdir_x(Len, Angle + direction)
y=target.y + lengthdir_y(Len, Angle + direction)
z=target.z
speed=target.speed
//friction=target.friction
direction=target.direction
camx=x
camy=y
camsin = sin(direction*pi/180);
camcos = cos(direction*pi/180);
}

//Head Bob
if speed!=0{
a += bspd;
cambob+=cos(a)*ba}

Len = point_distance(0, 0, DX, DY); 
Angle = point_direction(0, 0, DX, DY);

