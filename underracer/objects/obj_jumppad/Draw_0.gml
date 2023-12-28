if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
// Place this code in the draw event of your 3d object
var curcolor,curalpha,name,time,factor,frameprev,framenext,valueprev,shape,tex,alpha,zpos,xwidth,ywidth,zwidth,zangle,xrotate;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
for (shape=1;shape<=maxshape;shape+=1) if !shapes[shape,3]
{
  tex = -1;
  if shapes[shape,5] != -1
  {
    if shapes[shape,9] == 0 tex = background_get_texture(shapes[shape,5]);
    else tex = sprite_get_texture(shapes[shape,5],floor((frame mod shapes[shape,10])*sprite_get_number(shapes[shape,5])/shapes[shape,10]));
  }
  else if shapes[0,5] != -1
  {
    if shapes[0,9] == 0 tex = background_get_texture(shapes[0,5]);
    else tex = sprite_get_texture(shapes[0,5],floor((frame mod shapes[0,10])*sprite_get_number(shapes[0,5])/shapes[0,10]));
  }
  name = "T"+string(shapes[shape,0]);
  for (time=0;time<=shapes[shape,8];time+=1)
  {
    framenext = shapes[shape,16+(16*time)];
    if framenext > frame
    {
      frameprev = shapes[shape,16+(16*(time-1))];
      factor = (frame-frameprev)/(framenext-frameprev);
      valueprev = shapes[shape,18+(16*(time-1))];
      alpha = valueprev+factor*(shapes[shape,18+(16*time)]-valueprev);
      valueprev = shapes[shape,21+(16*(time-1))];
      zpos = valueprev+factor*(shapes[shape,21+(16*time)]-valueprev);
      valueprev = shapes[shape,22+(16*(time-1))];
      xwidth = 0.5*(valueprev+factor*(shapes[shape,22+(16*time)]-valueprev));
      valueprev = shapes[shape,23+(16*(time-1))];
      ywidth = 0.5*(valueprev+factor*(shapes[shape,23+(16*time)]-valueprev));
      valueprev = shapes[shape,24+(16*(time-1))];
      zwidth = valueprev+factor*(shapes[shape,24+(16*time)]-valueprev);
      valueprev = shapes[shape,27+(16*(time-1))];
      zangle = valueprev+factor*(shapes[shape,27+(16*time)]-valueprev);
      valueprev = shapes[shape,29+(16*(time-1))];
      xrotate = valueprev+factor*(shapes[shape,29+(16*time)]-valueprev);
      break;
    }
    if framenext == frame
    {
      alpha = shapes[shape,18+(16*time)];
      zpos = shapes[shape,21+(16*time)];
      xwidth = 0.5*shapes[shape,22+(16*time)];
      ywidth = 0.5*shapes[shape,23+(16*time)];
      zwidth = shapes[shape,24+(16*time)];
      zangle = shapes[shape,27+(16*time)];
      xrotate = shapes[shape,29+(16*time)];
      break;
    }
  }
  if time == shapes[shape,8]+1
  {
    alpha = shapes[shape,18+(16*(time-1))];
    zpos = shapes[shape,21+(16*(time-1))];
    xwidth = 0.5*shapes[shape,22+(16*(time-1))];
    ywidth = 0.5*shapes[shape,23+(16*(time-1))];
    zwidth = shapes[shape,24+(16*(time-1))];
    zangle = shapes[shape,27+(16*(time-1))];
    xrotate = shapes[shape,29+(16*(time-1))];
  }
  draw_set_color(c_white);
  draw_set_alpha(alpha);
  d3d_transform_set_identity();
  d3d_transform_add_translation(0,0,-zwidth/2);
  d3d_transform_add_rotation_x(xrotate);
  d3d_transform_add_translation(0,0,zwidth/2);
  d3d_transform_add_rotation_z(zangle);
  d3d_transform_add_translation(0,0,zpos);
  d3d_transform_add_rotation_z(direction);
  d3d_transform_add_translation(x,y,z);
  switch (shapes[shape,1])
  {
    case 1: d3d_draw_wall(-xwidth,0,zwidth,xwidth,0,0,tex,shapes[shape,14],shapes[shape,15]); break;
    case 2: d3d_primitive_begin_texture(pr_trianglelist,tex);
            d3d_vertex_normal_texture(0,0,zwidth,0,1,0,0.5*shapes[shape,14],0);
            d3d_vertex_normal_texture(-xwidth,0,0,0,1,0,0,shapes[shape,15]);
            d3d_vertex_normal_texture(xwidth,0,0,0,1,0,shapes[shape,14],shapes[shape,15]);
            d3d_primitive_end(); break;
    case 3: d3d_draw_block(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15]); break;
    case 4: d3d_draw_cylinder(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,6],shapes[shape,7]); break;
    case 5: d3d_draw_ellipsoid(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,7]); break;
    case 6: d3d_draw_cone(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,6],shapes[shape,7]); break;
  }
  d3d_transform_set_identity();
}
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code
}}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
// Place this code in the draw event of your 3d object
var curcolor,curalpha,name,time,factor,frameprev,framenext,valueprev,shape,tex,alpha,zpos,xwidth,ywidth,zwidth,zangle,xrotate;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
for (shape=1;shape<=maxshape;shape+=1) if !shapes[shape,3]
{
  tex = -1;
  if shapes[shape,5] != -1
  {
    if shapes[shape,9] == 0 tex = background_get_texture(shapes[shape,5]);
    else tex = sprite_get_texture(shapes[shape,5],floor((frame mod shapes[shape,10])*sprite_get_number(shapes[shape,5])/shapes[shape,10]));
  }
  else if shapes[0,5] != -1
  {
    if shapes[0,9] == 0 tex = background_get_texture(shapes[0,5]);
    else tex = sprite_get_texture(shapes[0,5],floor((frame mod shapes[0,10])*sprite_get_number(shapes[0,5])/shapes[0,10]));
  }
  name = "T"+string(shapes[shape,0]);
  for (time=0;time<=shapes[shape,8];time+=1)
  {
    framenext = shapes[shape,16+(16*time)];
    if framenext > frame
    {
      frameprev = shapes[shape,16+(16*(time-1))];
      factor = (frame-frameprev)/(framenext-frameprev);
      valueprev = shapes[shape,18+(16*(time-1))];
      alpha = valueprev+factor*(shapes[shape,18+(16*time)]-valueprev);
      valueprev = shapes[shape,21+(16*(time-1))];
      zpos = valueprev+factor*(shapes[shape,21+(16*time)]-valueprev);
      valueprev = shapes[shape,22+(16*(time-1))];
      xwidth = 0.5*(valueprev+factor*(shapes[shape,22+(16*time)]-valueprev));
      valueprev = shapes[shape,23+(16*(time-1))];
      ywidth = 0.5*(valueprev+factor*(shapes[shape,23+(16*time)]-valueprev));
      valueprev = shapes[shape,24+(16*(time-1))];
      zwidth = valueprev+factor*(shapes[shape,24+(16*time)]-valueprev);
      valueprev = shapes[shape,27+(16*(time-1))];
      zangle = valueprev+factor*(shapes[shape,27+(16*time)]-valueprev);
      valueprev = shapes[shape,29+(16*(time-1))];
      xrotate = valueprev+factor*(shapes[shape,29+(16*time)]-valueprev);
      break;
    }
    if framenext == frame
    {
      alpha = shapes[shape,18+(16*time)];
      zpos = shapes[shape,21+(16*time)];
      xwidth = 0.5*shapes[shape,22+(16*time)];
      ywidth = 0.5*shapes[shape,23+(16*time)];
      zwidth = shapes[shape,24+(16*time)];
      zangle = shapes[shape,27+(16*time)];
      xrotate = shapes[shape,29+(16*time)];
      break;
    }
  }
  if time == shapes[shape,8]+1
  {
    alpha = shapes[shape,18+(16*(time-1))];
    zpos = shapes[shape,21+(16*(time-1))];
    xwidth = 0.5*shapes[shape,22+(16*(time-1))];
    ywidth = 0.5*shapes[shape,23+(16*(time-1))];
    zwidth = shapes[shape,24+(16*(time-1))];
    zangle = shapes[shape,27+(16*(time-1))];
    xrotate = shapes[shape,29+(16*(time-1))];
  }
  draw_set_color(c_white);
  draw_set_alpha(alpha);
  d3d_transform_set_identity();
  d3d_transform_add_translation(0,0,-zwidth/2);
  d3d_transform_add_rotation_x(xrotate);
  d3d_transform_add_translation(0,0,zwidth/2);
  d3d_transform_add_rotation_z(zangle);
  d3d_transform_add_translation(0,0,zpos);
  d3d_transform_add_rotation_z(direction);
  d3d_transform_add_translation(x,y,z);
  switch (shapes[shape,1])
  {
    case 1: d3d_draw_wall(-xwidth,0,zwidth,xwidth,0,0,tex,shapes[shape,14],shapes[shape,15]); break;
    case 2: d3d_primitive_begin_texture(pr_trianglelist,tex);
            d3d_vertex_normal_texture(0,0,zwidth,0,1,0,0.5*shapes[shape,14],0);
            d3d_vertex_normal_texture(-xwidth,0,0,0,1,0,0,shapes[shape,15]);
            d3d_vertex_normal_texture(xwidth,0,0,0,1,0,shapes[shape,14],shapes[shape,15]);
            d3d_primitive_end(); break;
    case 3: d3d_draw_block(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15]); break;
    case 4: d3d_draw_cylinder(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,6],shapes[shape,7]); break;
    case 5: d3d_draw_ellipsoid(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,7]); break;
    case 6: d3d_draw_cone(-xwidth,-ywidth,zwidth,xwidth,ywidth,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,6],shapes[shape,7]); break;
  }
  d3d_transform_set_identity();
}
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code
}}}

