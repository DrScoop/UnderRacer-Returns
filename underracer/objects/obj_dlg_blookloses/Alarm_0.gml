var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
"*oh....i lost...&*again.../")
}}  

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
"*well...&*...it doesn't matter./")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
"*you're pretty good.&*here's a little thanks&for racing with me./")
}}  

if dialogue=4{
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*You obtained 50G.")
}}

if dialogue=5{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

