var curcolor;
curcolor = draw_get_color();
//d3d_set_fog(false,c_black,10,global.renderdistance)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,image_alpha)
draw_set_font(fnt_hud)
draw_set_color(c_ltgray)
//d3d_set_fog(true,c_black,10,global.renderdistance)
draw_text(8,480-48,string_hash_to_newline("Controller Activated - Controller Mouse Buttons:"))
draw_text(8,480-32,string_hash_to_newline("UP:Accel. / DOWN:Break / LEFT and RIGHT: Steer left and right"))
draw_set_color(curcolor)

