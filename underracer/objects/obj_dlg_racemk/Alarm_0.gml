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
"* Yo, you're a kid too,&right? Wanna race?&* Go through here!")
}}  

if dialogue>dialoguemax{instance_destroy()}

