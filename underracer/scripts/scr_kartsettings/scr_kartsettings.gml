function scr_kartsettings() {
	var floorstatic,flooranim;
	/* //Little Unused Cheats for Emergency
	if keyboard_check_pressed(ord("F")){ability_timer=100}
	*/

	/*
	//Collision checking with roof
	if instance_exists(obj_floor_draw_basic){
	if collision_point(x,y,obj_floor_draw_basic,0,1){
	floorstatic=instance_position(x,y,obj_floor_draw_basic)
	if z+20>floorstatic.ztop{z=floorstatic.ztop-21}
	}}

	if instance_exists(obj_floor_draw_animated_basic){
	if collision_point(x,y,obj_floor_draw_animated_basic,0,1){
	flooranim=instance_position(x,y,obj_floor_draw_animated_basic)
	if z+20>flooranim.ztop{z=flooranim.ztop-21}
	}}
	*/

	//Camera Controls
	if global.racewon=false{
		if global.dialogue=false{
		//Keyboard
			if bot=false{
				if player=1{
					if keyboard_check(global.control_pl1cam_kb) or gamepad_button_check(1,global.control_pl1cam_jk){final_sprite=mdlspr_down_look looktimer-=2.5 camobj.adddir=180 camobj.DX = -40}
					if keyboard_check_released(global.control_pl1cam_kb) or gamepad_button_check_released(1,global.control_pl1cam_jk){final_sprite=mdlspr_up camobj.adddir=0 camobj.DX = -20 looktimer=20}
				}
				if player=2{
					if keyboard_check(global.control_pl2cam_kb) or gamepad_button_check(2,global.control_pl2cam_jk){final_sprite=mdlspr_down_look looktimer-=2.5 camobj.adddir=180 camobj.DX = -40}
					if keyboard_check_released(global.control_pl2cam_kb) or gamepad_button_check_released(2,global.control_pl2cam_jk){final_sprite=mdlspr_up camobj.adddir=0 camobj.DX = -20 looktimer=20}
				}
			}
		}
	}

	if global.racewon=true{if cam_changedis=true{mdlspr_down=mdlspr_down_ref camobj.adddir=0 camobj.DX = -50 looktimer=20}}

	if global.racestart=true{
	//Random Settings
	if speed>kart_maxspd{speed=kart_maxspd}
	if speed<-kart_maxspd/4{speed=-kart_maxspd/4}
	if speed=0{can_turn=false}
	if speed!=0{can_turn=true vibration=choose(0.1,0.15,0.05,0.1,0.05,0)}
	if speed>kart_maxspd/2{vibration=choose(0.2,0.25,0.1,0.15,0.1,0.05)}
	if stun=true{stuntimer-=1 final_sprite=mdlspr_stun image_speed=0.5}
	if stuntimer=38{if !sound_isplaying(snd_stun){sound_2play(snd_stun)} stuntimer=37}
	if stuntimer<=0{stun=false stuntimer=40 image_speed=0 final_sprite=mdlspr_up}

	if fall=true{
	z-=2 
	change_sprite=true
	final_sprite=mdlspr_stun 
	image_speed=0.5
	speed=0
	if z<-48{ 
	var nearflor;
	nearflor=instance_nearest(x,y,obj_floor_draw_basic)
	x=nearflor.x+16
	y=nearflor.y+16
	z=0
	fall=false
	change_sprite=false
	}
	}

	//If the current player using this object is not a bot:
	if bot=false{
	if stun=false{
	if global.dialogue=false{

	//Player 1 Controls
	if player=1{
	//Controls (Turning, Acceleration, Braking, Speed limits, Etc...)
	if keyboard_check(global.control_pl1move_kb) or gamepad_button_check(1,global.control_pl1move_jk){speed+=kart_accel}
	if keyboard_check(global.control_pl1break_kb) or gamepad_button_check(1,global.control_pl1break_jk){speed-=kart_accel}
	if can_turn=true{
	if keyboard_check(global.control_pl1left_kb) or gamepad_button_check(1,global.control_pl1left_jk){direction+=((driftadd/4)+(kart_turn/1.25))/2 driftadd+=1}
	if keyboard_check(global.control_pl1right_kb) or gamepad_button_check(1,global.control_pl1right_jk){direction-=((driftadd/4)+(kart_turn/1.25))/2 driftadd+=1}
	}
	if keyboard_check_pressed(global.control_pl1use_kb) or gamepad_button_check_pressed(1,global.control_pl1use_jk){powerup_trigger=true}
	if keyboard_check(global.control_pl1special_kb) or gamepad_button_check(1,global.control_pl1special_jk){ability_trigger=true}
	if !keyboard_check(global.control_pl1right_kb) and !gamepad_button_check(1,global.control_pl1right_jk) and 
	!keyboard_check(global.control_pl1left_kb) and !gamepad_button_check(1,global.control_pl1left_jk){driftadd=0}
	}

	//Player 2 Controls
	if player=2{
	//Controls (Turning, Acceleration, Braking, Speed limits, Etc...)
	if keyboard_check(global.control_pl2move_kb) or gamepad_button_check(2,global.control_pl2move_jk){speed+=kart_accel}
	if keyboard_check(global.control_pl2break_kb) or gamepad_button_check(2,global.control_pl2break_jk){speed-=kart_accel}
	if can_turn=true{
	if keyboard_check(global.control_pl2left_kb) or gamepad_button_check(2,global.control_pl2left_jk){direction+=((driftadd/4)+(kart_turn/2.25))/2 driftadd+=2}
	if keyboard_check(global.control_pl2right_kb) or gamepad_button_check(2,global.control_pl2right_jk){direction-=((driftadd/4)+(kart_turn/2.25))/2 driftadd+=2}
	}
	if keyboard_check_pressed(global.control_pl2use_kb) or gamepad_button_check_pressed(2,global.control_pl2use_jk){powerup_trigger=true}
	if keyboard_check(global.control_pl2special_kb) or gamepad_button_check(2,global.control_pl2special_jk){ability_trigger=true}
	if !keyboard_check(global.control_pl2right_kb) and !gamepad_button_check(2,global.control_pl2right_jk) and 
	!keyboard_check(global.control_pl2left_kb) and !gamepad_button_check(2,global.control_pl2left_jk){driftadd=0}
	}

	}
	}
	/*
	if camobj.adddir=camturn_limit{camobj.adddir=camturn_limit}
	if camobj.adddir=-camturn_limit{camobj.adddir=-camturn_limit}

	if camadjust=true{
	if camobj.adddir>0{camobj.adddir-=camturn_add}
	if camobj.adddir<0{camobj.adddir+=camturn_add}
	if camobj.adddir=0{camadjust=false}
	}
	*/

	if speed!=0{
	if driftadd>=driftlimit-2{drifting=true driftadd=driftlimit}
	if driftadd<=0{drifting=false}
	}

	}
	//If the current player using this object is indeed a bot:
	if bot=true{scr_kartbot()}

	scr_powerups()

	if global.racestart=true{
	steps+=1 // Add to the amount of time gone by (in steps)
	minutes=floor((steps/room_speed)/60) // Figure out the minutes
	seconds=floor(steps/room_speed)-(minutes*60) // Figure out the seconds

	// Figure out the strings (so that numbers below 10 draw as 0X not just X)
	if (minutes<10) {draw_minutes=string(minutes) draw_minutes=string_insert("0",draw_minutes,0)}
	else {draw_minutes=string(minutes)}

	if (seconds<10) {draw_seconds=string(seconds) draw_seconds=string_insert("0",draw_seconds,0)}
	else {draw_seconds=string(seconds)}

	global.minutes=draw_minutes
	global.seconds=draw_seconds
	}

	//If all the laps were completed
	if lap>global.lap_limit{
	//Race Gamemode Positions
	if global.gamemode="Race"{
	global.racewon=true
	if race_position=1{x=obj_podium_pos1.x y=obj_podium_pos1.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=12 change_sprite=true global.position_1_name=char}
	if race_position=2{x=obj_podium_pos2.x y=obj_podium_pos2.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=8  change_sprite=true global.position_2_name=char}
	if race_position=3{x=obj_podium_pos3.x y=obj_podium_pos3.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=8  change_sprite=true global.position_3_name=char}
	if race_position=4{x=obj_podium_pos4.x y=obj_podium_pos4.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat}  image_speed=0.25 z=0  change_sprite=true global.position_4_name=char}
	if race_position=5{x=obj_podium_pos5.x y=obj_podium_pos5.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat}  image_speed=0.25 z=0  change_sprite=true global.position_5_name=char}
	if race_position=6{x=obj_podium_pos6.x y=obj_podium_pos6.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat}  image_speed=0.25 z=0  change_sprite=true global.position_6_name=char}
	}
	//Campaign Gamemode Positions
	if global.gamemode="Campaign"{
	global.racewon=true
	if global.chars=2{
	if race_position=1{x=obj_podium_pos1.x y=obj_podium_pos1.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=12 change_sprite=true global.position_1_name=char}
	if race_position=2{x=obj_podium_pos2.x y=obj_podium_pos2.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat} image_speed=0.25 z=8  change_sprite=true global.position_2_name=char}
	}
	if global.chars=3{
	if race_position=1{x=obj_podium_pos1.x y=obj_podium_pos1.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=12 change_sprite=true global.position_1_name=char}
	if race_position=2{x=obj_podium_pos2.x y=obj_podium_pos2.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=8 change_sprite=true global.position_2_name=char}
	if race_position=3{x=obj_podium_pos3.x y=obj_podium_pos3.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat} image_speed=0.25 z=8  change_sprite=true global.position_3_name=char}
	}
	if global.chars>3{
	if race_position=1{x=obj_podium_pos1.x y=obj_podium_pos1.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=12 change_sprite=true global.position_1_name=char}
	if race_position=2{x=obj_podium_pos2.x y=obj_podium_pos2.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=8  change_sprite=true global.position_2_name=char}
	if race_position=3{x=obj_podium_pos3.x y=obj_podium_pos3.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_victory} image_speed=0.25 z=8  change_sprite=true global.position_3_name=char}
	if race_position=4{x=obj_podium_pos4.x y=obj_podium_pos4.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat}  image_speed=0.25 z=0  change_sprite=true global.position_4_name=char}
	if race_position=5{x=obj_podium_pos5.x y=obj_podium_pos5.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat}  image_speed=0.25 z=0  change_sprite=true global.position_5_name=char}
	if race_position=6{x=obj_podium_pos6.x y=obj_podium_pos6.y speed=0 direction=0 path_speed=0 if change_sprite=false{final_sprite=mdlspr_defeat}  image_speed=0.25 z=0  change_sprite=true global.position_6_name=char}
	}
	}


	}

	strafetimer-=1
	if strafetimer<=0{strafedir=choose(1,-1) strafetimer=75}

	if global.racewon=false{if looktimer<=0{looktimer=0 mdlspr_down=mdlspr_down_look}}

	fx_timer-=4
	if fx_timer<=0{

	if bot=false{
	if speed!=0{
	if drifting=true{fx=instance_create(x,y,obj_racefx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if collision_point(x,y,obj_floor_vines_ruins,1,1) 
	or collision_point(x,y,obj_floor_leaves_ruins,1,1) 
	or collision_point(x,y,obj_floor_wfall_grass,1,1)
	{fx=instance_create(x,y,obj_grassfx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if collision_point(x,y,obj_floor_snowdin,1,1) 
	or collision_point(x,y,obj_floor_snow,1,1) 
	or collision_point(x,y,obj_floor_ice,1,1) 
	{fx=instance_create(x,y,obj_snowfloorfx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if collision_point(x,y,obj_floor_wfall_waterfloor,1,1) 
	or collision_point(x,y,obj_floor_ruins_waterfloor,1,1) 
	{fx=instance_create(x,y,obj_waterfloorfx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if global.gamemode="Rally"{fx=instance_create(x,y,obj_racefx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if global.gamemode="Campaign Rally"{fx=instance_create(x,y,obj_racefx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	fx_timer=40
	}}

	if bot=true{
	if path_speed!=0{
	if drifting=true{fx=instance_create(x,y,obj_racefx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if collision_point(x,y,obj_floor_vines_ruins,1,1) 
	or collision_point(x,y,obj_floor_leaves_ruins,1,1) 
	or collision_point(x,y,obj_floor_wfall_grass,1,1)
	{fx=instance_create(x,y,obj_grassfx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if collision_point(x,y,obj_floor_snowdin,1,1) 
	or collision_point(x,y,obj_floor_snow,1,1) 
	or collision_point(x,y,obj_floor_ice,1,1) 
	{fx=instance_create(x,y,obj_snowfloorfx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	if collision_point(x,y,obj_floor_wfall_waterfloor,1,1) 
	or collision_point(x,y,obj_floor_ruins_waterfloor,1,1) 
	{fx=instance_create(x,y,obj_waterfloorfx) fx.target=id fx.direction=direction fx.speed=speed/1.15 fx.friction=0.1}
	fx_timer=40
	}}
	}

	}

	if global.dialogue=true{speed=0}

	
	if player=1{global.player1_time=steps global.player1_minutes=minutes global.player1_seconds=seconds global.player1_char=char global.player1_id=id}
	if player=2{global.player2_time=steps global.player2_minutes=minutes global.player2_seconds=seconds global.player2_char=char global.player2_id=id}
	if player=3{global.player3_time=steps global.player3_minutes=minutes global.player3_seconds=seconds global.player3_char=char global.player3_id=id}
	if player=4{global.player4_time=steps global.player4_minutes=minutes global.player4_seconds=seconds global.player4_char=char global.player4_id=id}
	if player=5{global.player5_time=steps global.player5_minutes=minutes global.player5_seconds=seconds global.player5_char=char global.player5_id=id}
	if player=6{global.player6_time=steps global.player6_minutes=minutes global.player6_seconds=seconds global.player6_char=char global.player6_id=id}
	

	//Achivement Tracking
	if bot=false{

	if char="Papyrus"{
	if powerup="G. Blaster"{
	if global.achieve_papyblaster!=-1{global.achieve_papyblaster=1}
	}}

	}

	if global.gamemode!="Rally"{
	if global.gamemode!="Campaign Rally"{
	if global.racewon=false{
	if global.dialogue=false{
	if fall=false{
	z+=zspeed;
	zspeed-=zgravity;


	if z<zground {zspeed=0; z=zground;}
	if z = zground {onground = 1} else {onground = 0}

	zground = 0;
	}}}}}

	if global.gamemode="Rally"{
	z=terrain_get_z(x,y)-64
	if z>12-64{kart_accel=kart_accel_half kart_maxspd=kart_maxspd_half}
	if z<12-64{kart_accel=kart_accel_old kart_maxspd=kart_maxspd_old}
	}

	if global.gamemode="Campaign Rally"{
	z=terrain_get_z(x,y)-64
	if z>12-64{kart_accel=kart_accel_half kart_maxspd=kart_maxspd_half}
	if z<12-64{kart_accel=kart_accel_old kart_maxspd=kart_maxspd_old}
	}

	if global.racewon=true and stun=true{stuntimer=-1 stun=false}



}
