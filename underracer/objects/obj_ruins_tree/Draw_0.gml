scr_cam_definesencos()

var tex;
tex = background_get_texture(tex_ruins_tree);
var tex2 = tex_ruins_tree;

var textureIndex = sprite_get_texture(tex2, 0);
global.spriteTextureLookup[? tex2] = textureIndex;

d3d_draw_wall(x-28*camsin,y-28*camcos,64,x+28*camsin,y+28*camcos,0,tex2,1,1,tex2);

