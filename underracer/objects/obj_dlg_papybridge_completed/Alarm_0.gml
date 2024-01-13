var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*NYEH! YOU MANIAC!&*YOU FIGURED IT OUT!")
}}  

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_side
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*WELL, DON'T THINK I'M&NOT PREPARED FOR YOUR&NEXT MOVE, HUMAN!")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*NYEH HEH HEH!")
}}  

if dialogue>dialoguemax{instance_destroy()}

