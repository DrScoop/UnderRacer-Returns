if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* You're not skilled.&Not enough.../")
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_sidelook
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* But one day maybe& i'll teach you some&racing tips...")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Now go back to&playing in the Ruins,&my child.")
}}  

if dialogue=4{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

