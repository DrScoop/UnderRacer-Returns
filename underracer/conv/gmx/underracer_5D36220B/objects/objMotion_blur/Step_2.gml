surface_set_target(buffer); 
draw_clear_alpha(c_black,0); 
screen_redraw(); 
surface_set_target(surface); 
draw_clear_alpha(c_black,1);
draw_set_blend_mode_ext(7,11);
draw_surface(buffer,0,0); 
draw_set_blend_mode(bm_normal); 
surface_reset_target(); 
draw_surface_ext(surface,0,0,1,1,0,c_white,blur_amount); 
d3d_transform_set_identity();
screen_refresh();

