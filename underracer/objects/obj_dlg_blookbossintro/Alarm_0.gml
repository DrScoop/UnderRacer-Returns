if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
"*let's race then........&*......i guess./")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
"*..........ready?/")
}}  

if dialogue>dialoguemax{instance_destroy()}

