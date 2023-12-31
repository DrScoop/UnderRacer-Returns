scr_cam_definesencos()

var tex;
tex = background_get_texture(tex_pillar_ruins);
//var tex2 = tex_pillar_ruins;
d3d_draw_wall(x-14*camsin,y-14*camcos,32,x+14*camsin,y+14*camcos,0,tex,1,1);

