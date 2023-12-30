if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
	if (!variable_instance_exists(id, "z")) {
        z = 0;
    }
	      d3d_primitive_begin_texture(pr_trianglelist, sprite_get_texture(floortex,image_index));
	      d3d_vertex_normal_texture(x, y, zbottom+z, 0, 0, 1, 0, 0);
	      d3d_vertex_normal_texture(x + 32, y, zbottom+z, 0, 0, 1, 1, 0);
	      d3d_vertex_normal_texture(x + 32, y + 32, zbottom+z, 0, 0, 1, 1, 1);
	      //
	      d3d_vertex_normal_texture(x + 32, y + 32, zbottom+z, 0, 0, 1, 1, 1);
	      d3d_vertex_normal_texture(x, y + 32, zbottom+z, 0, 0, 1, 0, 1);
	      d3d_vertex_normal_texture(x, y, zbottom+z, 0, 0, 1, 0, 0);
	  d3d_primitive_end();
	  d3d_primitive_begin_texture(pr_trianglelist, background_get_texture(rooftex));
	      d3d_vertex_normal_texture(x, y, ztop+z, 0, 0, -1, 0, 0);
	      d3d_vertex_normal_texture(x + 32, y, ztop+z, 0, 0, -1, 1, 0);
	      d3d_vertex_normal_texture(x + 32, y + 32, ztop+z, 0, 0, -1, 1, 1);
	      //
	      d3d_vertex_normal_texture(x + 32, y + 32, ztop+z, 0, 0, -1, 1, 1);
	      d3d_vertex_normal_texture(x, y + 32, ztop+z, 0, 0, -1, 0, 1);
	      d3d_vertex_normal_texture(x, y, ztop+z, 0, 0, -1, 0, 0);
	  d3d_primitive_end()
	}
}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
if !variable_local_exists("z") z = 0;
      d3d_primitive_begin_texture(pr_trianglelist, sprite_get_texture(floortex,image_index));
      d3d_vertex_normal_texture(x, y, zbottom+z, 0, 0, 1, 0, 0);
      d3d_vertex_normal_texture(x + 32, y, zbottom+z, 0, 0, 1, 1, 0);
      d3d_vertex_normal_texture(x + 32, y + 32, zbottom+z, 0, 0, 1, 1, 1);
      //
      d3d_vertex_normal_texture(x + 32, y + 32, zbottom+z, 0, 0, 1, 1, 1);
      d3d_vertex_normal_texture(x, y + 32, zbottom+z, 0, 0, 1, 0, 1);
      d3d_vertex_normal_texture(x, y, zbottom+z, 0, 0, 1, 0, 0);
  d3d_primitive_end();
  d3d_primitive_begin_texture(pr_trianglelist, background_get_texture(rooftex));
      d3d_vertex_normal_texture(x, y, ztop+z, 0, 0, -1, 0, 0);
      d3d_vertex_normal_texture(x + 32, y, ztop+z, 0, 0, -1, 1, 0);
      d3d_vertex_normal_texture(x + 32, y + 32, ztop+z, 0, 0, -1, 1, 1);
      //
      d3d_vertex_normal_texture(x + 32, y + 32, ztop+z, 0, 0, -1, 1, 1);
      d3d_vertex_normal_texture(x, y + 32, ztop+z, 0, 0, -1, 0, 1);
      d3d_vertex_normal_texture(x, y, ztop+z, 0, 0, -1, 0, 0);
  d3d_primitive_end()
}}}

