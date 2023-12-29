floortex=tex_floor_trap
rooftex=tex_roof_ruins

// Example: Load a sprite and add it to the lookup table
var textureIndex = sprite_get_texture(floortex, 0);
global.spriteTextureLookup[? floortex] = textureIndex;

textureIndex = sprite_get_texture(rooftex, 0);
global.spriteTextureLookup[? rooftex] = textureIndex;

z=0
zbottom=0
ztop=64

instance_create(x+8,y+8,obj_trap_spikes)
instance_create(x+24,y+8,obj_trap_spikes)
instance_create(x+8,y+24,obj_trap_spikes)
instance_create(x+24,y+24,obj_trap_spikes)

