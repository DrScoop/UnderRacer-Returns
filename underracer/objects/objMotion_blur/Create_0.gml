//window_h = window_get_region_height();
window_h = window_get_height()
//window_w = window_get_region_width(); 
window_w = window_get_width(); 
surface = surface_create(window_get_width(),window_get_height()); 
buffer  = surface_create(window_get_width(),window_get_height());
fx = window_w/display_get_width(); 
fy = window_h/display_get_height();
//set_automatic_draw(0); 
//draw_automatically = 0;
draw_clear(c_black); 
blur_amount = 0.34; //blur level (1 NO BLUR, 0 SUPER BLURRY) so choose 0.7 as an average

