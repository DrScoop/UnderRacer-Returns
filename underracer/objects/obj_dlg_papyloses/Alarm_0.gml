var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I...WHAT!? NO!&*I AM ALWAYS &NUMBER ONE!")
}}  

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*YOU ARE PRETTY&GOOD, HUMAN.&* I GUESS/")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_side
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*GOOD GAME,&GOOD GAME.&*TEN OUTTA TEN.")
}}  

if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
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

