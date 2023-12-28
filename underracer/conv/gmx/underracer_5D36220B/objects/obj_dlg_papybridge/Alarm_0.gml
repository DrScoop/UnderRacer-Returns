if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*STOP WHERE YOU ARE,&HUMAN! FOR THIS...")
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*IS THE JUMP PAD OF&ULTIMATE TERROR!/")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*YOU WON'T BE ABLE TO&REACH SNOWDIN TOWN...")
}}  

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*WITHOUT JUMPING THROUGH&TWO CLIFFS!")
}} 

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*TWICE THE DANGER!&TWICE THE FALL!")
}} 

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*ARE YOU DETERMINED&ENOUGH TO GET PAST MY&EXPERT TRAPS?")
}} 

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*GO ON...&*IF YOU DARE!")
}} 


if dialogue>dialoguemax{instance_destroy()}

