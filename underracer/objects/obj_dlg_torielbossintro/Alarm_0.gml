var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* I am sorry, child,&that it has come to this.")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* But there is no turning&back now!")
}}  

if dialogue>dialoguemax{instance_destroy()}

