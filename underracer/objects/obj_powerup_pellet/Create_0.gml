creator=0
camsin=0
camcos=0
cam=0
stun=false
modelsprite=spr_pellet
image_speed=0.5
DX = 0; // When this value is positive, the tip is right to the origin.
DY = 0; // When this value is negative, the tip is above the origin.
Len = point_distance(0, 0, DX, DY); // This is the distance between the tip and the origin.
Angle = point_direction(0, 0, DX, DY); // This is the angle to the tip from the origin.
adddir=0
adddir_dir=0
can_atk=false
image_alpha=0

action_set_alarm(200, 0);
action_set_alarm(150, 1);
