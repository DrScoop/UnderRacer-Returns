//Player Camera
activate=true
height=18
camdir=0

camsin = 0;
camcos = 0;

zoom=90
pitch=0
adddir=0
z=0
DX = -20; // When this value is positive, the tip is right to the origin.
DY = 0; // When this value is negative, the tip is above the origin.
target=obj_lapend
can_target=false
alarm[0]=3

Len = point_distance(0, 0, DX, DY); // This is the distance between the tip and the origin.
Angle = point_direction(0, 0, DX, DY); // This is the angle to the tip from the origin.
destroy=false

hudcreate=false

