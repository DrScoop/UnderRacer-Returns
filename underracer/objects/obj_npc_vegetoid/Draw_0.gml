scr_cam_definesencos()

var tex;
tex = sprite_get_texture(modelsprite,image_index);
var tex2 = modelsprite;
var textureIndex = sprite_get_texture(tex2, 0);
global.spriteTextureLookup[? tex2] = textureIndex;

d3d_draw_wall(x-12*camsin,y-12*camcos,24,x+12*camsin,y+12*camcos,0,tex2,1,1,tex2);

