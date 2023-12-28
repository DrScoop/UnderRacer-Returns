if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"*What a terrible creature,&torturing such a poor,&innocent youth.../")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"\\W*Ah, do not be afraid.&*I am \\BTORIEL\\W, caretaker&of the \\RRUINS.\\W/")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"*I pass through this place&every day to see if&anyone was racing nearby./")
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"*You are the first human&to come here in....&a long time./")
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"*I will do my best to&ensure your protection&during your time here./")
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"*Come!&*I will guide you through the catacombs./")
}}

if dialogue>dialoguemax{instance_destroy()}

