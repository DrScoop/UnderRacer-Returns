function scr_kartsettings_create() {
	bot=false
	botspd=0
	bot_action="None"
	bot_racestart=false
	bot_pathstart=false
	stun=false
	friction=0.1
	z=0
	vibration=0
	stuntimer=40
	image_speed=0
	image_index=0
	can_turn=false
	startpos_x=x
	startpos_y=y
	lap=0
	race_position=0
	checkpoint_id=0
	player=0
	powerup="None"
	powerup_timer=50
	powerup_trigger=false
	powerup_sndplay=true
	camobj=obj_cam1
	camx=x
	camy=y
	camsin = sin(direction*pi/180);
	camcos = cos(direction*pi/180);
	tex=0
	race_position=0
	fx_timer=40
	change_sprite=false
	playercolor=c_white
	fall=false
	botpath=pth_ruins1
	drifting=false
	driftadd=0
	driftlimit=24
	ability="None"
	ability_timer=0
	ability_trigger=false
	ability_sndplay=true
	looktimer=20
	skin="None"
	add_achieve_floweysouls=false

	kart_maxspd_old=global.char1_obj.kart_maxspd
	kart_maxspd_half=global.char1_obj.kart_maxspd/1.25
	kart_accel_db=global.char1_obj.kart_accel*1.5
	kart_accel_old=global.char1_obj.kart_accel
	kart_accel_half=global.char1_obj.kart_accel/1.25
	kart_maxspd_db=global.char1_obj.kart_maxspd*1.5
	camturn_add=-1
	camturn_limit=10
	camadjust=false
	cam_changedis=false

	mdlspr_right_ref=global.char1_obj.mdlspr_right
	mdlspr_left_ref=global.char1_obj.mdlspr_left
	mdlspr_down_ref=global.char1_obj.mdlspr_down
	mdlspr_up_ref=global.char1_obj.mdlspr_up

	botspd=0
	// Declare the numeric variables
	steps=0
	seconds=0
	minutes=0

	// Declare the strings
	draw_seconds="00"
	draw_minutes="00"

	strafetimer=75
	strafedir=choose(1,-1)

	zground=1;
	zspeed=0;
	zgravity=global.whatgrav/100;
	lift=0



}
