var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_normal
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Hello my child! Where&were you? You've been&driving for quite&some time...")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"* You decide to confront Toriel&to leave the Ruins and&continue your adventure.")
}}

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* ^1.^1.^1./")
}}  


if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* You wish to leave the&Ruins so badly?/")
}}  

if dialogue=5{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Very well...&but you must prove&yourself to me!")
}}  

if dialogue=6{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_tori_mad
with dlg
{
txtsound=snd_talk_tori
writer_msg(
"* Prove you are skilled&enough by beating me&in a race...")
}}  

if dialogue>dialoguemax{instance_destroy()}

