// set color and transparency
draw_set_alpha(1);
draw_set_color(c_white);

//ambient lighting
d3d_light_define_direction(0,1,0,0,make_color_rgb(ambient_r,ambient_g,ambient_b));
d3d_light_define_direction(1,0,1,0,make_color_rgb(ambient_r,ambient_g,ambient_b));
d3d_light_define_direction(2,0,0,1,make_color_rgb(ambient_r,ambient_g,ambient_b));
  
d3d_light_define_direction(3,-1,0,0,make_color_rgb(ambient_r,ambient_g,ambient_b));
d3d_light_define_direction(4,0,-1,0,make_color_rgb(ambient_r,ambient_g,ambient_b));
d3d_light_define_direction(5,0,0,-1,make_color_rgb(ambient_r,ambient_g,ambient_b));
  
d3d_light_enable(0,true);
d3d_light_enable(1,true);
d3d_light_enable(2,true);
d3d_light_enable(3,true);
d3d_light_enable(4,true);
d3d_light_enable(5,true);
