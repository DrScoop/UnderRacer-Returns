//returns the height a a position
//argument0 = the x position to return the height at
//argument1 = the y position to return the height at

gx=floor(argument0/global.terrainsize);
gy=floor(argument1/global.terrainsize);
ox = argument0-global.terrainsize*gx;
oy = argument1-global.terrainsize*gy;
z1=ds_grid_get(global.terraingrid,gx,gy);
z2=ds_grid_get(global.terraingrid,gx+1,gy);
z3=ds_grid_get(global.terraingrid,gx+1,gy+1);
z4=ds_grid_get(global.terraingrid,gx,gy+1);
if(ox>oy){
mz=z1-ox*(z1-z2)/global.terrainsize-oy*(z2-z3)/global.terrainsize;
}
else{
mz=z1-ox*(z4-z3)/global.terrainsize-oy*(z1-z4)/global.terrainsize;
}
return mz+3
