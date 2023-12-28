if dialogue=1{
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Howdy!&It's me again!")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"*Nice work! You really&did a good race&against Toriel,&didn't you?")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Okay, let's cut the&polite talk.")
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* We both know you've&done this before.")
}}

if dialogue=5{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Why wouldn't it? It's&just everyone you know&and love...")
}}

if dialogue=6{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Racing around in karts,&having a grand old time!")
}}

if dialogue=7{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_sarcastic
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* ...at least, that's what&you think it is, right?/")
}}

if dialogue=8{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Despite that, though,&there's actually an&entirely different&element...")
}}

if dialogue=9{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_suspicious
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"*...that you're&completely unaware of./")
}}

if dialogue=10{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Something that could&change the entire&fate of this world.")
}}

if dialogue=11{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* I mean, have you even&considered why they chose&YOU as the one to explore&the underground again...")
}}

if dialogue=12{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* ...instead of someone&else who did the&exact same thing?")
}}

if dialogue=13{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Is it determination?&* Is it fate?")
}}

if dialogue=14{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_evil
with dlg
{
txtsound=snd_talk_flowey_evil
writer_msg(
"* OR IS IT BECAUSE YOU'RE&FOOLISH ENOUGH TO&FALL FOR THE GIMMICK?!")
}}

if dialogue=15{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Opportunity is knocking&at the doorstep, Frisk.")
}}

if dialogue=16{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* But don't worry,&it won't be the same&as last time.")
}}

if dialogue=17{ 
dlg=instance_create(x,y,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* After all, it takes&a lot of determination&to SAVE what you don't&know.")
}}


if dialogue>dialoguemax{instance_destroy()}

