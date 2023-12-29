scr_cam_definesencos()

/*var tex;
tex = background_get_texture(tex_pillar_ruins);*/
var tex2 = tex_pillar_ruins;

// Example: Load a sprite and add it to the lookup table
var textureIndex = sprite_get_texture(tex_pillar_ruins, 0);
global.spriteTextureLookup[? tex_pillar_ruins] = textureIndex;

d3d_draw_wall(x-14*camsin,y-14*camcos,32,x+14*camsin,y+14*camcos,0,tex2,1,1,tex2);

