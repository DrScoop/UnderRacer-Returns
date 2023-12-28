if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*hey kid, lemme give&you some advice, before&you go ahead.")
}}  

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*you can control your&speed and direction in&mid-air, when jumping.")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*the jump pads always&give you a little speed&boost when you jump.")
}}  

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*that's good sometimes,&but other times, it&might make you fall.")
}}  

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*so be sure to train&some mid-air control&before you race my bro.")
}}  

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
if !sound_isplaying(global.snd_papyrus){sound_2loop(global.snd_papyrus)}
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*good luck, kiddo.")
}}  

if dialogue>dialoguemax{instance_destroy()}

