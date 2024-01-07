if global.players=1{
d3d_set_lighting(0);
d3d_set_projection_ortho(0,0,640,480,0)
//d3d_set_hidden(false);
d3d_set_fog(false,c_black,10,global.renderdistance)
draw_sprite_ext(sprite_achievement,-1,480,480-add_y,1,1,0,c_white,image_alpha)
d3d_set_fog(true,c_black,10,global.renderdistance)
draw_set_alpha(1);
//d3d_set_hidden(true);
d3d_set_lighting(global.lighting);
}

if global.players=2{
d3d_set_lighting(0);
d3d_set_projection_ortho(0,0,640,240,0)
//d3d_set_hidden(false);
d3d_set_fog(false,c_black,10,global.renderdistance)
draw_sprite_ext(sprite_achievement,-1,480,240-add_y,1,1,0,c_white,image_alpha)
d3d_set_fog(true,c_black,10,global.renderdistance)
draw_set_alpha(1);
//d3d_set_hidden(true);
d3d_set_lighting(global.lighting);
}

