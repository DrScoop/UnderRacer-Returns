image_speed=0.0625/2
DX = 0; // When this value is positive, the tip is right to the origin.
DY = 0; // When this value is negative, the tip is above the origin.
Len = point_distance(0, 0, DX, DY); // This is the distance between the tip and the origin.
Angle = point_direction(0, 0, DX, DY); // This is the angle to the tip from the origin.
adddir=0
adddir_dir=0
bspd = 0.05 // bobbing speed
ba = 0.1 // bobbing amount
a = 0;
cambob=0

