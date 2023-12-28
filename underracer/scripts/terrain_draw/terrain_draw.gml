function terrain_draw(argument0) {
	//argument0 = terrain texture
	d3d_set_culling(1);
	d3d_model_draw(global.terrainmodel,0,0,z,background_get_texture(argument0))
	d3d_set_culling(0);



}
