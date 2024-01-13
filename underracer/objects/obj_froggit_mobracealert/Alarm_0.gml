var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*Ribbit, Ribbit.&*(I'm sorry, but it seems&our racers are busy.)")
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
"*Ribbit, Ribbit.&*(They didn't even&prepare themselves.)")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*Ribbit, Ribbit, Ribbit.&*(So i suggest you wait&until you can race them.)")
}}  

if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*Ribbit.&*(I told them to&prepare for racing...)/")
}}  

if dialogue=5{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*Ribbit!&*(But it's like no one&understands what i say!)/")
}}  

if dialogue>dialoguemax{instance_destroy()}

