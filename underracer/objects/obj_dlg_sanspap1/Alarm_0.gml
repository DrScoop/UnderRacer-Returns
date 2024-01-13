var _d = depth;

if dialogue=1{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*quick, behind that& conveniently shaped lamp.")
}}

if dialogue=2{
if obj_kart_frisk.x >= 2480 and obj_kart_frisk.y >= 336{

with obj_kart_frisk {path_end()}

if !sound_isplaying(global.snd_papyrus){
sound_2loop(global.snd_papyrus)
papyrus = instance_create(2440,784,obj_kart_papyrus)
with obj_kart_papyrus
{
    path_start(pth_cmpn_papentrance, obj_kart_papyrus.kart_accel * 20, 0, true)
}}

if(obj_kart_papyrus.y <= 392)
{
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*sup, bro?")
}}

else{alarm[0]=1}
}
else{
if(obj_kart_frisk.path_index == -1)
{
    with obj_kart_frisk{path_start(pth_cmpn_frisklamp, obj_kart_frisk.kart_accel * 10, 0, true)}
}

alarm[0]=1
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*YOU KNOW WHAT'S 'SUP',& BROTHER!")
}}

if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*IT'S BEEN EIGHT DAYS AND& YOU STILL HAVEN'T...")
}}

if dialogue=5{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*RECALIBRATED.&*YOUR.&*PUZZLES!")
}}

if dialogue=6{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*YOU JUST PARK AND HANG& AROUND OUTSIDE YOUR& STATION...")
}}

if dialogue=7{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*WHAT ARE YOU EVEN& DOING?!?")
}}

if dialogue=8{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*staring at this lamp.&*it's really cool.&*do you wanna look?")
}}

if dialogue=9{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*NO! I DON'T HAVE TIME& FOR THAT!")
}}

if dialogue=10{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*WHAT IF A RACER COMES& THROUGH HERE!?!")
}}

if dialogue=11{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I WANT TO BE READY!")
}}

if dialogue=12{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I WILL BE THE FASTEST!&*I MUST BE THE FASTEST!")
}}

if dialogue=13{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I WILL BE THE BEST& RACER!")
}}

if dialogue=14{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*THEN I, THE GREAT& PAPYRUS...")
}}

if dialogue=15{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*WILL GET ALL THE& THINGS I UTTERLY DESERVE!")
}}

if dialogue=16{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*TROPHIES... MEDALS...")
}}

if dialogue=17{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I WILL FINALLY BE ABLE& TO JOIN THE ROYAL RACERS!")
}}

if dialogue=18{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*PEOPLE WILL ASK FOR MY& 'SIGNATURE?'")
}}

if dialogue=19{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I WILL BATHE IN A SHOWER& OF GOLD EVERY MORNING...")
}}

if dialogue=20{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*hmm...")
}}

if dialogue=21{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*maybe this lamp will& help you.")
}}

if dialogue=22{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*SANS!!&*YOU ARE NOT HELPING!! YOU LAZYBONES!!")
}}

if dialogue=23{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*ALL YOU DO IS SIT AND& BOONDOGGLE!")
}}

if dialogue=24{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*YOU DRIVE SLOWER AND& SLOWER EVERY DAY!!!")
}}

if dialogue=25{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*hey, take it easy.&*cause you're looking& pretty...")
}}

if dialogue=26{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*\\Ytire\\W-d.")
}}

if dialogue=27{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*SANS!!!")
}}

if dialogue=28{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_chuckle
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*come on.&*you're smiling.")
}}

if dialogue=29{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I AM AND I HATE IT!")
}}

if dialogue=30{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_side
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*SIGH...")
}}

if dialogue=31{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*WHY DOES SOMEONE AS& GREAT AS ME...")
}}

if dialogue=32{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*HAVE TO DO SO MUCH& JUST TO GET SOME& RECOGNITION...")
}}

if dialogue=33{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*wow, sounds like you've& worked so much, you've...")
}}

if dialogue=34{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_wink
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*\\Yrun outta gas.")
}}

if dialogue=35{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*UGH!!!")
}}

if dialogue=36{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*I WILL ATTEND& TO MY PUZZLES...")
}}

if dialogue=37{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*AS FOR YOUR WORK?")
}}

if dialogue=38{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_evil
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*KICK INTO...")
}}

if dialogue=39{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_mad
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"\\W*OVER\\YDRIVE\\W!!!")
}}

if dialogue=40{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*NYEHEHEHEHEHEHE& HEHEHEHEHE!!")
}}

if dialogue=41{ 
if obj_kart_papyrus.y >= 472{

with obj_kart_papyrus {path_end()}
obj_kart_papyrus.direction = 90
obj_kart_papyrus.speed = 0

dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_papyrus_laugh
txtsound=snd_talk_papyrus
myfont=fnt_papyrus
writer_msg(
"*...HEH.")
}}
else{
if(obj_kart_papyrus.path_index == -1)
{
    with obj_kart_papyrus{path_start(pth_cmpn_papexit, obj_kart_papyrus.kart_accel * 20, 0, true)}
}

alarm[0]=1;
}}

if dialogue=42{ 
if !instance_exists(obj_kart_papyrus){
dlg=instance_create_depth(x,y,-201,obj_writer);
with dlg
{
spriteface=spr_dlg_sans_normal
txtsound=snd_talk_sans
myfont=fnt_sans
writer_msg(
"*ok, you can& come out now.")
}}
else{
with obj_kart_papyrus {path_start(pth_cmpn_papexit, obj_kart_papyrus.kart_accel * 20, 0, false)}
if obj_kart_papyrus.y >= 784{
with papyrus{instance_destroy()}
sound_stop(global.snd_papyrus);
}
alarm[0]=1;
}}

if dialogue>dialoguemax{instance_destroy()}

