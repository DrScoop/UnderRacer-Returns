/*
//recreates the model - only need when used with terrain_grid_destroy()
d3d_model_clear(global.terrainmodel)
for(xx=0;xx<global.swidth-1;xx+=1){
d3d_model_primitive_begin(global.terrainmodel,pr_trianglestrip); 
adraw=true;
for (yy=0;yy<global.sheight;yy+=1){
  adraw = !adraw; 
  z2=ds_grid_get(global.terraingrid,yy,xx+1);
  d3d_model_vertex_normal_texture(global.terrainmodel,yy*global.terrainsize,(xx+1)*global.terrainsize,z2,0,0,1,adraw,1);
  z1=ds_grid_get(global.terraingrid,yy,xx);
  d3d_model_vertex_normal_texture(global.terrainmodel,yy*global.terrainsize,xx*global.terrainsize,z1,0,0,1,adraw,0);
  }
d3d_model_primitive_end(global.terrainmodel);
}
