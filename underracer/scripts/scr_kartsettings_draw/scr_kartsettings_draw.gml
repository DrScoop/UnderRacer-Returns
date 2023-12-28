function scr_kartsettings_draw() {
	scr_cam_definesencos()

	var tex;
	tex = sprite_get_texture(final_sprite,image_index);
	draw_set_color(playercolor)
	d3d_draw_wall(x-(kartwidth*1.1)*camsin,y-(kartwidth*1.1)*camcos,z+(kartheight*1.1)+vibration+vibration,x+(kartwidth*1.1)*camsin,y+(kartwidth*1.1)*camcos,z+(kartbottom*1.1)+vibration+vibration,tex,1,1)



}
