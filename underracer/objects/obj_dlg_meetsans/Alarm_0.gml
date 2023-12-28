if dialogue=1{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
"*...")
}}

if dialogue=2{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
"*H u m a n.")
}}  

if dialogue=3{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
"*D o n ' t  y o u  k n o w& h o w  t o  g r e e t& a  n e w  p a l ?")
}}

if dialogue=4{ 
dlg=instance_create(x,y,obj_writer);
with dlg
{
writingx = 16;
writingy = 348;
textspeed = 2;
txtsound=snd_none
writer_msg(
"*T u r n  y o u r  k a r t ,& a n d  l o o k  m e& i n  t h e  e y e .")
}}

if dialogue>dialoguemax{
if obj_kart_frisk.direction < 175 or obj_kart_frisk.direction > 185
{
    if(obj_kart_frisk.direction mod 360 > 180){obj_kart_frisk.direction -= (obj_kart_frisk.kart_turn / 1.25)}
    else{obj_kart_frisk.direction += (obj_kart_frisk.kart_turn / 1.25)}
}
else{
if(!sound_isplaying(snd_whoopee)){sound_2play(snd_whoopee)}
while(!sound_isplaying(snd_whoopee)){}
instance_destroy()
}
alarm[0]=1
}

