if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_quiet
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* How did you...")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* ...anyways....&* Hi! And bye!")
}}

if dialogue>dialoguemax{
spriteface=spr_dlg_hfrisk_noeyes
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0
obj_cam1.alarm[1]=20
}
dlg=instance_create(x,y,obj_writer);
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* Heheheheheheh&eheheheheheh!")
}
alarm[1]=20}

