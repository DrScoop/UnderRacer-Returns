var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"\\W* This is a \\YKART\\W.&It's your main means&of transportation&and your \\RWEAPON\\W.")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"\\W* How does it work?&*Easy! \\YSOUL POWER\\W!")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* You don't need&anything else! Except for&one thing, maybe.&* Items!/")
}}

if dialogue=4{ 
instance_create(384,176,obj_powerupbox);
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Items can do a bunch&of different things.&You should try 'em all&out sometime!")
}}

if dialogue=5{ 
if instance_exists(obj_powerupbox){with obj_powerupbox{instance_destroy()}}
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"\\W* But there's one golden&rule, you use them&by pressing \\Y"+string(chr(global.control_pl1use_kb))+"\\W.")
}}

if dialogue=6{ 
instance_create(384,176,obj_magicdrop);
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"\\W* Also, you can use&\\BSPECIAL ATTACKS\\W with the&power of \\BMAGIC\\W!")
}}

if dialogue=7{ 
if instance_exists(obj_magicdrop){with obj_magicdrop{instance_destroy()}}
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* But I think that should&be enough information&for you.")
}}

if dialogue=8{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"\\W* ...Hey, how about a&* \\YQUICK RACE\\W?&* Just follow me!/")
}}

if dialogue=9{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_none
with dlg
{
writingx = 16;
writingy = 348;
txtsound=snd_text
writer_msg(
"* You feel like you've seen this&before. But it feels...&...different.")
}}

if dialogue>dialoguemax{instance_destroy()}

