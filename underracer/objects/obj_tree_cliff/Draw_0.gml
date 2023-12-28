scr_cam_definesencos()

if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
  var tex;
  tex = background_get_texture(tex_spruce);
  d3d_draw_wall(x-size/2*camsin,y-size/2*camcos,z+size,
                x+size/2*camsin,y+size/2*camcos,z,tex,1,1);
}}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
  var tex;
  tex = background_get_texture(tex_spruce);
  d3d_draw_wall(x-size/2*camsin,y-size/2*camcos,z+size,
                x+size/2*camsin,y+size/2*camcos,z,tex,1,1);
}}}

