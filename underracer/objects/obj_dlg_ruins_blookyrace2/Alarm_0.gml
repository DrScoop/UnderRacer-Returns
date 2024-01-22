var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_napstablook
with dlg
{
txtsound=snd_text
writer_msg(
"*if you want to race...&*no problem....&*just saying.../")
}}  

if dialogue>dialoguemax{instance_destroy()}

