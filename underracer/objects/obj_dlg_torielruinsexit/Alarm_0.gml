var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Ahead lies the exit&of the Ruins.")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_sad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* ^1.^1.^1./")
}}  


if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Be good my child.&Remember to take care,&always.")
}}  

if dialogue>dialoguemax{instance_destroy()}

