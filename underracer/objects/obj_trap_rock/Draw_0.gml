scr_cam_definesencos()

var tex;
tex = background_get_texture(tex_rock);
var tex2 = tex_rock;

// Example: Load a sprite and add it to the lookup table
var textureIndex = sprite_get_texture(tex2, 0);
global.spriteTextureLookup[? tex2] = textureIndex;

d3d_draw_wall(x-14*camsin,y-14*camcos,32,x+14*camsin,y+14*camcos,0,tex2,1,1,tex2);

