if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* What!? Don't look at&me like that!")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* I swear, it wasn't me!&* Not this time!")
}}

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* I'm going to find the&absolute idiot who did&this and...")
}}  

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Wait, is that...&* Someone over there...?")
}}  

if dialogue>dialoguemax{instance_destroy()}

