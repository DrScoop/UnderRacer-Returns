floortex=tex_floor_ruins
rooftex=tex_roof_ruins
// Example: Load a sprite and add it to the lookup table
var textureIndex = sprite_get_texture(floortex, 0);
global.spriteTextureLookup[? floortex] = textureIndex;

textureIndex = sprite_get_texture(rooftex, 0);
global.spriteTextureLookup[? rooftex] = textureIndex;

z=0
zbottom=0
ztop=64

