var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
textspeed = 2;
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*...i would tell you to& turn around...&*but it looks like you& beat me to it.")
}}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
textspeed = 2;
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*...")
}}

if dialogue>dialoguemax{
if(!sound_isplaying(snd_whoopee)){sound_2play(snd_whoopee)}
while(!sound_isplaying(snd_whoopee)){}
instance_destroy()
}

