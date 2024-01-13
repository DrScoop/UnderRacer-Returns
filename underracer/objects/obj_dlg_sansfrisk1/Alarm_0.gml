var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*actually, hey...")
}}

if dialogue=2{
if obj_kart_frisk.direction<95 and obj_kart_frisk.direction>85{
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*hate to bother ya, but& can you do me a favor?")
}}
else{
if(obj_kart_frisk.direction > 90 && obj_kart_frisk.direction < 270){obj_kart_frisk.direction -= (obj_kart_frisk.kart_turn / 1.25)}
else{obj_kart_frisk.direction += (obj_kart_frisk.kart_turn / 1.25)}
alarm[0]=1;
}}

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*i was thinking...&*my brother's been kinda& down lately...")
}}

if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*he's never seen a human& before.&*and seeing you might just make his day.")
}}

if dialogue=5{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*don't worry, he's not& dangerous.")
}}

if dialogue=6{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*even if he tries to be.")
}}

if dialogue=7{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*thanks a million. i'll be up ahead.")
}}


if dialogue>dialoguemax{
if !instance_exists(obj_kart_sans){instance_destroy()}
else{
if obj_kart_sans.x <= 2328 and obj_kart_sans.y <= 168
{
    with obj_kart_sans{instance_destroy()}
}
else if obj_kart_sans.path_index == -1
{
    with obj_kart_sans {path_start(pth_cmpn_sansexit, obj_kart_sans.kart_accel * 10, 0, true)}
}

alarm[0]=1;
}}

