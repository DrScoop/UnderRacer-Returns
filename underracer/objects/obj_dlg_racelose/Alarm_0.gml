if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"* RACE LOST!&You're gonna have to try a&little bit harder than that!")
}}  

if dialogue=2{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 

if dialogue>dialoguemax{instance_destroy()}

