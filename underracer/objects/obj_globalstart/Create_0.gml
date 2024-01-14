global.hm_flat=spr_hm_flat
global.hm_snowdinoverworld=spr_hm_snowdinoverworld
global.hm_snowrally=spr_hm_snowrally

global.cmpn_showraceinfo = false;

scr_load_fonts()
scr_load_sounds()
scr_load_data()

//gamepad_init()

//Global Variables
global.camx=0
global.camy=0
global.camobj=obj_cam1
global.gamemode="Race"
global.players=1
global.chars=1
global.char_slct=0
global.level_selected=true
global.powerup="None"
global.char1="None"
global.char1_obj=obj_none
global.char1_skin="None"
global.char2="None"
global.char2_obj=obj_none
global.char2_skin="None"
global.char3="None"
global.char3_obj=obj_none
global.char3_skin="None"
global.char4="None"
global.char4_obj=obj_none
global.char4_skin="None"
global.lap_limit=1
global.racestart=false
global.racewon=false
global.bot_trigger=false
global.level="Ruins"
global.lvlsong=global.snd_ruins
global.dialogue=false
global.start_speed=0
global.whatgrav=20
global.cmpn_room = rm_cmpgn_tutorial1;
global.cmpn_showlaplimit=false
global.roomname="Bepis"
global.preview_charname=""
global.sandboxroom=rm_sandbox_ruins1

global.position_1=""
global.position_2=""
global.position_3=""
global.position_4=""
global.position_5=""
global.position_6=""

global.position_1_name=""
global.position_2_name=""
global.position_3_name=""
global.position_4_name=""
global.position_5_name=""
global.position_6_name=""

global.position_1_time=0
global.position_2_time=0
global.position_3_time=0
global.position_4_time=0
global.position_5_time=0
global.position_6_time=0

global.player1_time=0
global.player1_minutes=0
global.player1_seconds=0
global.player2_time=0
global.player2_minutes=0
global.player2_seconds=0
global.player3_time=0
global.player3_minutes=0
global.player3_seconds=0
global.player4_time=0
global.player4_minutes=0
global.player4_seconds=0
global.player5_time=0
global.player5_minutes=0
global.player5_seconds=0
global.player6_time=0
global.player6_minutes=0
global.player6_seconds=0
global.player1_id=noone;
global.player2_id=0
global.player3_id=0
global.player4_id=0
global.player5_id=0
global.player6_id=0
global.player1_char=""
global.player2_char=""
global.player3_char=""
global.player4_char=""
global.player5_char=""
global.player6_char=""

global.winner1=0
global.winner2=0
global.winner3=0
global.winner4=0
global.winner5=0
global.winner6=0

terrain_create(spr_hm_snowrally,128,58);
d3d_end();

action_set_alarm(5, 0);
