{
  d3d_set_lighting(0)
  d3d_set_projection_ortho(0,0,640,480,0);
  d3d_set_hidden(false);
  draw_set_font(fnt_hud);
  draw_sprite_ext(spr_tex_temracestart,image_index,320-96,0,3,3,0,c_white,image_alpha)
  draw_set_alpha(1);
  d3d_set_hidden(true);
  d3d_set_lighting(global.lighting)
}

