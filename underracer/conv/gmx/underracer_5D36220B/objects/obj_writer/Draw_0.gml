{
d3d_set_lighting(0)
d3d_set_projection_ortho(0,0,640,480,0);
d3d_set_hidden(false);
draw_set_color(c_white);
draw_set_font(font);
scr_textdraw()
draw_set_alpha(1);
d3d_set_hidden(true);
d3d_set_lighting(global.lighting)
}

