// Place this code in the draw event of your 3d object
var curcolor,curalpha,name,time,factor,frameprev,framenext,valueprev,zgpos,xscale,yscale,zscale,shape,tex,color,xpos,ypos,zpos,xwidth,ywidth,zwidth,zangle,xrotate;
curcolor = draw_get_color();
curalpha = draw_get_alpha();
for (time=0;time<=shapes[0,8];time+=1)
{
  framenext = shapes[0,16+(16*time)];
  if framenext > frame
  {
    frameprev = shapes[0,16+(16*(time-1))];
    factor = (frame-frameprev)/(framenext-frameprev);
    valueprev = shapes[0,21+(16*(time-1))];
    zgpos = valueprev+factor*(shapes[0,21+(16*time)]-valueprev);
    valueprev = shapes[0,22+(16*(time-1))];
    xscale = valueprev+factor*(shapes[0,22+(16*time)]-valueprev);
    valueprev = shapes[0,23+(16*(time-1))];
    yscale = valueprev+factor*(shapes[0,23+(16*time)]-valueprev);
    valueprev = shapes[0,24+(16*(time-1))];
    zscale = valueprev+factor*(shapes[0,24+(16*time)]-valueprev);
    break;
  }
  if framenext == frame
  {
    zgpos = shapes[0,21+(16*time)];
    xscale = shapes[0,22+(16*time)];
    yscale = shapes[0,23+(16*time)];
    zscale = shapes[0,24+(16*time)];
    break;
  }
}
if time == shapes[0,8]+1
{
  zgpos = shapes[0,21+(16*(time-1))];
  xscale = shapes[0,22+(16*(time-1))];
  yscale = shapes[0,23+(16*(time-1))];
  zscale = shapes[0,24+(16*(time-1))];
}
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
      color = merge_color(shapes[shape,17+(16*(time-1))],shapes[shape,17+(16*time)],factor);
      valueprev = shapes[shape,19+(16*(time-1))];
      xpos = valueprev+factor*(shapes[shape,19+(16*time)]-valueprev);
      valueprev = shapes[shape,20+(16*(time-1))];
      ypos = valueprev+factor*(shapes[shape,20+(16*time)]-valueprev);
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
      color = shapes[shape,17+(16*time)];
      xpos = shapes[shape,19+(16*time)];
      ypos = shapes[shape,20+(16*time)];
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
    color = shapes[shape,17+(16*(time-1))];
    xpos = shapes[shape,19+(16*(time-1))];
    ypos = shapes[shape,20+(16*(time-1))];
    zpos = shapes[shape,21+(16*(time-1))];
    xwidth = 0.5*shapes[shape,22+(16*(time-1))];
    ywidth = 0.5*shapes[shape,23+(16*(time-1))];
    zwidth = shapes[shape,24+(16*(time-1))];
    zangle = shapes[shape,27+(16*(time-1))];
    xrotate = shapes[shape,29+(16*(time-1))];
  }
  draw_set_color(color);
  draw_set_alpha(1);
  d3d_transform_set_identity();
  d3d_transform_add_translation(0,0,-zwidth*zscale/2);
  d3d_transform_add_rotation_x(xrotate);
  d3d_transform_add_translation(0,0,zwidth*zscale/2);
  d3d_transform_add_rotation_z(zangle);
  d3d_transform_add_translation(xpos*xscale,ypos*yscale,zpos*zscale);
  d3d_transform_add_translation(0*xscale,0*yscale,zgpos*zscale);
  d3d_transform_add_rotation_z(direction);
  d3d_transform_add_translation(x,y,z);
  switch (shapes[shape,1])
  {
    case 1: d3d_draw_wall(-xwidth*xscale,0,zwidth*zscale,xwidth*xscale,0,0,tex,shapes[shape,14],shapes[shape,15]); break;
    case 2: d3d_primitive_begin_texture(pr_trianglelist,tex);
            d3d_vertex_normal_texture(0,0,zwidth*zscale,0,1,0,0.5*shapes[shape,14],0);
            d3d_vertex_normal_texture(-xwidth*xscale,0,0,0,1,0,0,shapes[shape,15]);
            d3d_vertex_normal_texture(xwidth*xscale,0,0,0,1,0,shapes[shape,14],shapes[shape,15]);
            d3d_primitive_end(); break;
    case 3: d3d_draw_block(-xwidth*xscale,-ywidth*yscale,zwidth*zscale,xwidth*xscale,ywidth*yscale,0,tex,shapes[shape,14],shapes[shape,15]); break;
    case 4: d3d_draw_cylinder(-xwidth*xscale,-ywidth*yscale,zwidth*zscale,xwidth*xscale,ywidth*yscale,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,6],shapes[shape,7]); break;
    case 5: d3d_draw_ellipsoid(-xwidth*xscale,-ywidth*yscale,zwidth*zscale,xwidth*xscale,ywidth*yscale,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,7]); break;
    case 6: d3d_draw_cone(-xwidth*xscale,-ywidth*yscale,zwidth*zscale,xwidth*xscale,ywidth*yscale,0,tex,shapes[shape,14],shapes[shape,15],shapes[shape,6],shapes[shape,7]); break;
  }
  d3d_transform_set_identity();
}
draw_set_color(curcolor);
draw_set_alpha(curalpha);
// end draw event code

