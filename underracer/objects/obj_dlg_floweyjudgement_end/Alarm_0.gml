if dialogue=1{ 
if instance_exists(obj_kart_flowey){
obj_kart_flowey.change_sprite=true
obj_kart_flowey.final_sprite=spr_kflowey_emerge
obj_kart_flowey.image_speed=0.5
obj_kart_flowey.speed=0
}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* One last thing.")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_mad
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Don't think you'll&get your happy ending&as easy as last time.")
}}  

if dialogue=3{ 
if instance_exists(obj_kart_flowey){with obj_kart_flowey{final_sprite=spr_kflowey_evil change_sprite=true}}
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
"\\W*IT TAKES A LOT OF&\\RDETERMINATION\\W TO SAVE&SOMETHING YOU&DON'T KNOW./")
}}

if dialogue>dialoguemax{instance_destroy()}

