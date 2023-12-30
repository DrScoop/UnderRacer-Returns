if (view_current = 0){
	if activate=true{
		//Camera Projection
		d3d_set_projection_ext(x,y,z+height,x+cos(direction*pi/180),y-sin(direction*pi/180),z+height-tan(degtorad(pitch)),0,0,1,zoom,__view_get( e__VW.WView, 0 )/__view_get( e__VW.HView, 0 ),1,32000)
	}
	// set color and transparency
	draw_set_alpha(1);
	draw_set_color(c_white);
}

