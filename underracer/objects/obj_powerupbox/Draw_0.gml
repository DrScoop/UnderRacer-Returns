scr_cam_definesencos()

var tex;
tex = background_get_texture(tex_powerupbox);
var tex2 = tex_powerupbox;

var textureIndex = sprite_get_texture(tex2, 0);
global.spriteTextureLookup[? tex2] = textureIndex;

d3d_draw_wall(x-14*camsin,y-14*camcos,32+global.char1_obj.z,x+14*camsin,y+14*camcos,0+global.char1_obj.z,tex2,1,1,tex_powerupbox);

