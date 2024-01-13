var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*HA! YOU SEE!&*I WON'T LET YOU&THROUGH THIS GATE!")
}}  

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*NOT WITHOUT A RACE!&*NYEH HEH HEH!")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*PREPARE THYSELF,&FOR RACING TIME!")
}}  

if dialogue=4{ 
global.dialogue=false
global.racewon=false
if global.dialogue=false{alarm[1]=40 global.start_speed=0 instance_create(0,0,obj_hud_battle) sound_stop_all() global.dialogue=true}
}  

if dialogue>dialoguemax{instance_destroy()}

