function scr_drawhud() {
	if global.players=1{
		d3d_set_lighting(0);
		d3d_set_projection_ortho(0,0,640,480,0)
		d3d_set_hidden(false);
		draw_set_color(c_white)
		draw_set_font(fnt_hud);
		draw_sprite(spr_hud_box,-1,0,0)
		//First Text Drawn outside this script, Check object
		draw_text(12,6+16,string_hash_to_newline("Speed: "+string(target.speed)))
		draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)+" / "+string(global.lap_limit)))
		draw_text(12,6+48,string_hash_to_newline("Player : "+string(target.player)))
		draw_text(12,6+64,string_hash_to_newline("Magic : "+string(round(target.ability_timer))+" %"))
		draw_text(12,6+80,string_hash_to_newline("Attack : "+string(target.ability)))
		//draw_text(12,12+96,"Position: "+string(target.race_position))
		/*if showpos=true{
		draw_sprite_ext(spr_hud_positions,-1,450,0,2,2,0,c_white,1)
		draw_text(462,12   ,"Position 1: "+string(global.position_1_name))
		draw_text(462,12+16,"Position 2: "+string(global.position_2_name))
		draw_text(462,12+32,"Position 3: "+string(global.position_3_name))
		draw_text(462,12+48,"Position 4: "+string(global.position_4_name))
		draw_text(462,12+64,"Position 5: "+string(global.position_5_name))
		draw_text(462,12+80,"Position 6: "+string(global.position_6_name))
		}*/
		//HUD Powerup Box
		draw_sprite_ext(spr_hud_powerup,-1,0,432,1,1,0,c_white,1)
		draw_sprite_ext(sprite_powerup,-1,8,432+8,1,1,0,c_white,1)
		draw_text(12+42,432+16,string_hash_to_newline(string(target.powerup)))
		//HUD Timer
		draw_sprite_ext(spr_hud_timebox,-1,496,0,1,1,0,c_white,1)
		draw_text(496+46,12,string_hash_to_newline(string(target.minutes)+" : "+string(target.seconds)))
		draw_set_alpha(1);
		d3d_set_hidden(true);
		d3d_set_lighting(global.lighting);
	}

	if global.players=2{
	d3d_set_lighting(0);
	d3d_set_projection_ortho(0,0,640,240,0)
	d3d_set_hidden(false);
	draw_set_color(c_white)
	draw_set_font(fnt_hud);
	draw_sprite(spr_hud_box,-1,0,0)
	//First Text Drawn outside this script, Check object
	draw_text(12,6+16,string_hash_to_newline("Speed: "+string(target.speed)))
	draw_text(12,6+32,string_hash_to_newline("Lap: "+string(target.lap)))
	draw_text(12,6+48,string_hash_to_newline("Player : "+string(target.player)))
	draw_text(12,6+64,string_hash_to_newline("Magic : "+string(round(target.ability_timer))+" %"))
	draw_text(12,6+80,string_hash_to_newline("Attack : "+string(target.ability)))
	//draw_text(12,12+96,"Position: "+string(target.race_position))
	/*if showpos=true{
	draw_sprite_ext(spr_hud_positions,-1,450,0,2,2,0,c_white,1)
	draw_text(462,12   ,"Position 1: "+string(global.position_1_name))
	draw_text(462,12+16,"Position 2: "+string(global.position_2_name))
	draw_text(462,12+32,"Position 3: "+string(global.position_3_name))
	draw_text(462,12+48,"Position 4: "+string(global.position_4_name))
	draw_text(462,12+64,"Position 5: "+string(global.position_5_name))
	draw_text(462,12+80,"Position 6: "+string(global.position_6_name))
	}*/
	//HUD Powerup Box
	draw_sprite_ext(spr_hud_powerup,-1,0,192,1,1,0,c_white,1)
	draw_sprite_ext(sprite_powerup,-1,8,192+8,1,1,0,c_white,1)
	draw_text(12+42,192+16,string_hash_to_newline(string(target.powerup)))
	//HUD Timer
	draw_sprite_ext(spr_hud_timebox,-1,496,0,1,1,0,c_white,1)
	draw_text(496+46,12,string_hash_to_newline(string(target.minutes)+" : "+string(target.seconds)))
	draw_set_alpha(1);
	d3d_set_hidden(true);
	d3d_set_lighting(global.lighting);
	}



}
