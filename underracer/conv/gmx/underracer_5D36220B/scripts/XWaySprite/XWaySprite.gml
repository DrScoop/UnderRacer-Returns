//XWaySprite(camx,camy,8objx,8objy,8objdir,directions)

/*
Returns a number between 0 & n-1, where n is the directions
argument. The return value represents what directional-sprite
to draw. 0 is the sprite for facing the camera, n-1 is the sprite
for facing slightly to the left. The other numbers are for all
the sprites in between, in clockwise order.
*/

var camx, camy, xpos, ypos, fdir, dir, dirtocam;

camx = argument0;
camy = argument1;
xpos = argument2;
ypos = argument3;

fdir = 360/argument5;
dir = argument4 + fdir/2;

if (dir > 360)
{
  dir -= 360;
}

dirtocam = round(point_direction(xpos,ypos,camx,camy)/fdir);
dir = floor(dir/fdir);
dir -= dirtocam;

if (dir < 0)
{
  dir += argument5;
}

return dir;
