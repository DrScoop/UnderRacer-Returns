var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
alarm[1]=15
shake=2
textspeed=5
txtsound=snd_talk_flowey_evil
writer_msg(
"* Time to DIE!")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_worried
with dlg
{
shake=2
txtsound=snd_talk_flowey
writer_msg(
"* ...Wait...&* Did you hear that?/")
}}

if dialogue>dialoguemax{instance_destroy()}

