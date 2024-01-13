var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_sad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* ...How?&* This can't be...&This can't.../")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
shake=4
txtsound=snd_talk_flowey_evil
writer_msg(
"* Nobody WON!&*Everybody LOST!&* It wasn't FAIR!/")
}}  

if dialogue=3{ 
if instance_exists(obj_kart_flowey){with obj_kart_flowey{final_sprite=spr_kflowey_evil change_sprite=true}}
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
shake=2
txtsound=snd_talk_flowey_evil
writer_msg(
"* You know what's going on.&* Don't you?/")
}
}  

if dialogue=4{sound_2play(snd_click) instance_create(x,y,obj_hud_black) alarm[2]=7} 


if dialogue>dialoguemax{instance_destroy()}

