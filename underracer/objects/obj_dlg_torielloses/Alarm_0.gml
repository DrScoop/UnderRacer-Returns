if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_sidelook
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Well then.&I was defeated.../")
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* You are trully skilled,&my child.")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Come! I'll guide you&to the Ruins exit.&Also, take this.")
}}  

if dialogue=4{
dlg=instance_create(x,y,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*You obtained 200G.")
}}

if dialogue=5{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

