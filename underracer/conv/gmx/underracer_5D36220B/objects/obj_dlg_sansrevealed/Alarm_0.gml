if !sound_isplaying(snd_whoopee){
if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*heheheh, the ol' whoopee& cushion as a horn trick.")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*it's ALWAYS funny.")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*anyways, you're a human,& right?")
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*that's hilarious.")
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*i'm sans.&*sans the skeleton.")
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*i'm actually supposed to& be on watch for any& fast racers right now.")
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*but... y'know...")
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*i don't really care about& racing anybody.")
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*now my brother,& papyrus...")
}}

if dialogue=10{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*he's a racing FANATIC.")
}}

if dialogue=11{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*hey, actually, i think& that's him over there.")
}}

if dialogue=12{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*i have an idea.&*drive through this gate& thingy.")
}}

if dialogue=13{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*yeah, drive right& through.&*my bro made the bars too& wide to stop anyone.")
}}

if dialogue>dialoguemax{instance_destroy()}
}
else{alarm[0]=1}

