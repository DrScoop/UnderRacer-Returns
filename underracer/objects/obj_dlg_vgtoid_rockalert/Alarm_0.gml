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
"*Hello, child!&*Are you eating your&greens?/")
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
"*Anyways...&*Do you see that big dude&right there?/")
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
"*If not, you should eat more&carrots then./")
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
"*As i was saying, be careful if&you see a rock during your&races./")
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
"*They will stun you if you&collide with them.&Sometimes they even move!&I don't know how, though./")
}}  

if dialogue=6{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"*So take care!&*Good luck racing!&*Always eat your greens!/")
}}  

if dialogue>dialoguemax{instance_destroy()}

