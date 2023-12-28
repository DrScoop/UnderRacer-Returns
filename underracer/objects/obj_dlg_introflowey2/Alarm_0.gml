if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"*Hello again!&I guess i don't need&to introduce myself&again, do i?/")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"*Just follow me, buddy./")
}}  

if dialogue>dialoguemax{instance_destroy()}

