var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* Hey there!/")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_hfrisk_quiet
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* Sorry about the mess.&Getting you guys here&was quite hard./")
}}

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_weird
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"*................&*Wh-what......../")
}}  

if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_hfrisk_quiet
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* Hm? What's with that&expression?/")
}}  

if dialogue=5{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* I thought you would be&able to figure out&about...")
}}  

if dialogue=6{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_weird2
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0}
with dlg
{
shake=3
txtsound=snd_talk_flowey
writer_msg(
"* ...but.....&....h-how...")
}}  

if dialogue=7{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* Anyway, I should show&you a little area I&have set up for you!/")
}}  

if dialogue=8{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_hfrisk_happy
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0.25
obj_npc_hfrisk.image_index=0}
with dlg
{
txtsound=snd_talk_hfrisk
writer_msg(
"* Enjoy!/")
}}  

if dialogue>dialoguemax{
if instance_exists(obj_npc_hfrisk){
obj_npc_hfrisk.image_speed=0
obj_npc_hfrisk.image_index=0}
instance_destroy()}

