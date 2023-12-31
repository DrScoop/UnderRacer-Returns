function scr_wincampos() {
	if target.lap>global.lap_limit{
		DX = -50 
		height=26
		pitch=6
		z=0
		Len = point_distance(0, 0, DX, DY)
		Angle = point_direction(0, 0, DX, DY)
		target=obj_wincam_pos
		direction=0
	}

}
