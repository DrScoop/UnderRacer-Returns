/// @description Returns the texture id for the given background.
/// @param back The index of the background to use.
/// @returns {pointer} a pointer to the background texture

/*function background_get_texture(argument0) {
    var spriteIndex = argument0;

    // Get the sprite name
    var spriteName = sprite_get_name(spriteIndex);

    // Get sprite width and height
    var sprWidth = sprite_get_width(spriteIndex);
    var sprHeight = sprite_get_height(spriteIndex);

    // Create a surface of sprite size
    var surf = -1;
    if (!surface_exists(surf)) {
        surf = surface_create(sprWidth, sprHeight);
    }

    // Draw sprite onto the surface
    if (surface_exists(surf)) {
        surface_set_target(surf);
        draw_clear_alpha(c_white, 0);
        draw_sprite(spriteIndex, 0, 0, 0);
        surface_reset_target();
    }

    // Get the texture index from the surface
    var textureIndex = -1;
    if (surface_exists(surf)) {
        textureIndex = sprite_create_from_surface(surf, 0, 0, sprWidth, sprHeight, false, false, false, false);
        surface_free(surf);
    }

    return textureIndex;
}*/


function background_get_texture(argument0) {
	
	var dum = sprite_get_name(argument0)
	return sprite_get_texture(argument0, 0);


}
