d3d_set_lighting(0);
d3d_set_projection_ortho(0,0,640,480,0)
d3d_set_hidden(false);
d3d_set_fog(false,c_black,10,global.renderdistance)
draw_sprite_ext(final_sprite,-1,320,240,1,1,0,c_white,1)
draw_text(320-48,240-32,string_hash_to_newline(string(global.roomname)))
draw_text(320-48,240-16,string_hash_to_newline("Gold: "+string(global.gold)))
d3d_set_fog(false,c_black,10,global.renderdistance)
draw_set_alpha(1);
d3d_set_hidden(true);
d3d_set_lighting(global.lighting);

